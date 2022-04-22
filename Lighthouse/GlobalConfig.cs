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
        public static string BaseSensorId { get => "urn:ngsi-ld:esp:"; }
    }
}
