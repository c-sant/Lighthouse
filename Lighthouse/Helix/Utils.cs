using Lighthouse.Helpers;
using System.Globalization;

namespace Lighthouse.Helix
{
    public static class Utils
    {
        public static string BuildBrokerId(int sqlServerId)
        {
            return GlobalConfig.BaseBrokerId + sqlServerId;
        }

        public static string BuildMqttId(int sqlServerId)
        {
            return GlobalConfig.BaseMqttAgentId + sqlServerId;
        }

        public static string BuildLocationString(Point position)
        {
            return $"{position.X.ToString(CultureInfo.InvariantCulture)}, {position.Y.ToString(CultureInfo.InvariantCulture)}";
        }
    }
}
