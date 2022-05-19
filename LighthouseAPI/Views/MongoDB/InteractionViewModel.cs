
using System;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace LighthouseAPI.Views.MongoDB
{
    public class InteractionViewModel
    {
        [BsonId()]
        public ObjectId Id { get; set; }

        [BsonElement("recvTime")]
        [BsonRequired()]
        public DateTime Date { get; set; }

        [BsonElement("attrName")]
        [BsonRequired()]
        public string AttributeName { get; set; }

        [BsonElement("attrType")]
        [BsonRequired()]
        public string AttributeType { get; set; }

        [BsonElement("attrValue")]
        [BsonRequired()]
        public string Valor { get; set; }
    }
}
