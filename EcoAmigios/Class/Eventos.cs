using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcoAmigios.Class
{
    public class Eventos
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string id { get; set; }
        [BsonElement("Nombre_Pag")]
        public string Nombre_Pag { get; set; }
        [BsonElement("Titutlo_Evento")]
        public string Titutlo_Evento { get; set; }
        [BsonElement("Contenido_Evento")]
        public string Contenido_Evento { get; set; }
        [BsonElement("Fecha_Evento")]
        public string Fecha_Evento { get; set; }
    }
}