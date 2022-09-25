using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcoAmigios.Class
{
    public class Publicacion
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string id { get; set; }
        [BsonElement("Nombre_Pag")]
        public string Nombre_Pag { get; set; }
        [BsonElement("Titutlo_Publi")]
        public string Titutlo_Publi { get; set; }
        [BsonElement("Contenido_Publi")]
        public string Contenido_Publi { get; set; }
        [BsonElement("Logo_Publi")]
        public string Logo_Publi { get; set; }
    }
}