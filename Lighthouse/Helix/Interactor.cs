using System;
using RestSharp;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;

namespace Lighthouse.Helix
{
    abstract public class Interactor
    {
        public string Ip { get; private set; }
        public int Port { get; private set; }

        abstract protected string _frameworkName { get; }
        abstract protected string _pingEndpoint { get; }

        public Interactor(string ip, int port)
        {
            Ip = ip;
            Port = port;

            if (!ConnectionOk())
                throw new Exception($"Falha conectando ao {_frameworkName}");
        }

        protected bool ConnectionOk()
        {
            try
            {
                var response = MakeHelixRequest(Method.Get, _pingEndpoint);
                return response.StatusCode == System.Net.HttpStatusCode.OK;
            }
            catch
            {
                return false;
            }
        }

        protected RestResponse<string> MakeHelixRequest(Method method, string endpoint, JObject payload = null, string contentType = "application/json", int timeout = -1)
        {
            var client = new RestClient($"http://{Ip}:{Port}/{endpoint}");
            var request = new RestRequest()
                .AddHeader("fiware-service", "helixiot")
                .AddHeader("fiware-servicepath", "/")
                .AddHeader("Accept", contentType)
                .AddHeader("Connection", "keep-alive");

            request.Method = method;
            request.Timeout = timeout;

            if (payload != null)
                request.AddBody(payload.ToString(), contentType: contentType);

            return client.ExecuteAsync<string>(request).Result;
        }
    }
}
