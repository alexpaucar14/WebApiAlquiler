using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApiAlquiler.Models;
using WebApiAlquiler.SQLServer;

namespace WebApiAlquiler.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        // GET: api/Usuario
        [HttpGet]
        public IEnumerable<string> Get()
        {
            var alParameters = new ArrayList();
            SqlParameter parameter = new SqlParameter("@email", SqlDbType.VarChar, 50)
            {
                Value = "alex.paucar14@gmail.com"
            };
            alParameters.Add(parameter);

            parameter = new SqlParameter("@clave", SqlDbType.VarChar, 50)
            {
                Value = "alex"
            };
            alParameters.Add(parameter);

            var objUsuarioRs = SqlConnector.getObject<UsuarioLogin>("spu_CheckLogin", alParameters);

            return new string[] { "Email: " + objUsuarioRs.Email, "IdRol" + objUsuarioRs.IdRol };
        }

        // GET: api/Usuario/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Usuario
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Usuario/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
