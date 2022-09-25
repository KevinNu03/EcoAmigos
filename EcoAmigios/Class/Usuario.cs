using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace EcoAmigios.Class
{
    public class Usuario
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string id { get; set; }
        [BsonElement("ID_Tipo_Documento")]
        public Int64 Documento_Usu { get; set; }
        [BsonElement("Nombre_Usu")]
        public Int64 ID_Tipo_Documento { get; set; }
        [BsonElement("Documento_Usu")]
        public string Nombre_Usu { get; set; }
        [BsonElement("Apellido_Usu")]
        public string Apellido_Usu { get; set; }
        [BsonElement("Correo_Usu")]
        public string Correo_Usu { get; set; }
        [BsonElement("Telefono_Usu")]
        public Int64 Telefono_Usu { get; set; }
        [BsonElement("Usuario_Usu")]
        public string Usuario_Usu { get; set; }
        [BsonElement("Contraseña_Usu")]
        public string Contraseña_Usu { get; set; }
    }
}