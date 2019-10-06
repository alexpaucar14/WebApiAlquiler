using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiAlquiler.Models
{
    public class UsuarioLogin
    {
        public int IdUsuario { get; set; }

        public int? IdTercero { get; set; }

        [StringLength(50)]
        public string Alias { get; set; }

        [StringLength(50)]
        public string Descripcion { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(150)]
        public string Clave { get; set; }

        public int? IdSaludo { get; set; }

        public int? IdTipoNotificacion { get; set; }

        public DateTime? FechaVerificacionEmail { get; set; }

        public DateTime? FechaBloqueoCuenta { get; set; }

        public bool? Bloqueado { get; set; }

        public bool? NoExpira { get; set; }

        public int? ConteoIngresosFallidos { get; set; }

        public DateTime? FechaUltimoIngreso { get; set; }

        public DateTime? FechaCambioContrasenia { get; set; }

        [StringLength(50)]
        public string PinUsuario { get; set; }
        public int IdRol { get; set; }
    }
}
