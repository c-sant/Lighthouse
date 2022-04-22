using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.Helix
{
    public static class Utils
    {
        public static string BuildBrokerId(int sqlServerId)
        {
            return GlobalConfig.BaseSensorId + sqlServerId;
        }
    }
}
