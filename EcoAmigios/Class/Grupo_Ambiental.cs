using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcoAmigios.Class
{
    public class Grupo_Ambiental
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string id { get; set; }
        [BsonElement("ID_Grupo_Ambiental")]
        public Int64 ID_Grupo_Ambiental { get; set; }
        [BsonElement("Nombre_Grupo")]
        public string Nombre_Grupo { get; set; }
        [BsonElement("ID_Tipo_Grupo")]
        public Int64 ID_Tipo_Grupo { get; set; }
        [BsonElement("Telefono_Grupo")]
        public Int64 Telefono_Grupo { get; set; }
        [BsonElement("Logo_Grupo")]
        public string Logo_Grupo { get; set; }
        [BsonElement("Correo_Grupo")]
        public string Correo_Grupo { get; set; }
        [BsonElement("Contraseña_Grupo")]
        public string Contraseña_Grupo { get; set; }
        [BsonElement("Confirmado")]
        public string Confirmado { get; set; }
    }
}