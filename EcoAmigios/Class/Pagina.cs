using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcoAmigios.Class
{
    public class Pagina
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string id { get; set; }
        [BsonElement("ID_Grupo_Ambiental")]
        public Int64 ID_Grupo_Ambiental { get; set; }
        [BsonElement("Nombre_Pagina")]
        public string Nombre_Pagina { get; set; }
        [BsonElement("Tipo_Pagina")]
        public string Tipo_Pagina { get; set; }
        [BsonElement("Descripcion_Pagina")]
        public string Descripcion_Pagina { get; set; }
        [BsonElement("Logo_Grupo")]
        public string Logo_Grupo { get; set; }
    }
}