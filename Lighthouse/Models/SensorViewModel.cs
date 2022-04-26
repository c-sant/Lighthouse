namespace Lighthouse.Models
{
    public class SensorViewModel : AbstractBaseViewModel
    {
        public double Longitude { get; set; }
        public double Latitude { get; set; }
        public double Range { get; set; }

        // Somente para visualização
        public string BrokerId { get => Id != 0 ? Helix.Utils.BuildBrokerId(Id) : "Somente após inserção"; }
        public string MqttAgentId { get => Id != 0 ? Helix.Utils.BuildMqttId(Id) : "Somente após inserção"; }
    }
}
