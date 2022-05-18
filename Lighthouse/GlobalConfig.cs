using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse
{
    // Send to AppSettings.
    public static class GlobalConfig
    {
        public static string HelixIp { get => "3.15.212.42"; }

        public static int BrokerPort { get => 1026; }
        public static int MqttAgentPort { get => 4041; }
        public static string BaseBrokerId { get => "urn:ngsi-ld:Motion:"; }
        public static string BaseMqttAgentId { get => "Motion"; }

        public static string MongoDBConnectionString { get => "mongodb://helix:H3l1xNG@3.15.212.42:27000/?authSource=admin&readPreference=primary&ssl=false&directConnection=true"; }
    }
}
