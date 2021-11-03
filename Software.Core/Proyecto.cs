using System;

namespace Software.Core
{
    public class Proyecto
    {
        public string Descripcion { get; set; }
        public Decimal Presupuesto { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }
        public string Cliente { get; set; }
    }
    public class Traea
    {
        public int id{get; set;}
        public int Cuil {get; set;}
        public DateTime inicio{get; set;}
        public DateTime fin{get; set;}
    }
    public class Cliente
    {
        public int Cuil {get; set;}
        public string RazonSocial{get; set;}
    }
}
