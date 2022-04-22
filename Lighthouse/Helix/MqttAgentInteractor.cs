using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.Helix
{
    public class MqttAgentInteractor : Interactor
    {
        public MqttAgentInteractor(string ip, int port) : 
            base(ip, port) { }

        protected override string _frameworkName { get => "Mqtt Agent"; }
        protected override string _pingEndpoint { get => "iot/about"; }
    }
}
