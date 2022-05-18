
using System;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace LighthouseAPI.Views.MongoDB
{
    public class SensorViewModel
    {
        [BsonId()]
        public ObjectId Id { get; set; }

        [BsonElement("recvTime")]
        [BsonRequired()]
        public string Date { get; set; }

        [BsonElement("body")]
        [BsonRequired()]
        public string AttributeName { get; set; }

        [BsonElement("created")]
        [BsonRequired()]
        public DateTime Created { get; set; }

        [BsonElement("active")]
        [BsonRequired()]
        public bool Active { get; set; }

        [BsonElement("value")]
        [BsonRequired()]
        public double Value { get; set; }

        [BsonElement("position")]
        [BsonRequired()]
        public int Position { get; set; }
    }
}
