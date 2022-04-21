namespace Lighthouse.Models
{
    public class SensorViewModel
    {
        public int Id { get; set; }
        public int BrokerId { get; set; }
        public double Longitude { get; set; }
        public double Latitude { get; set; }
        public double Range { get; set; }
    }
}
