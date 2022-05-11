using System;

namespace Lighthouse.Models
{
    public class OccurrenceViewModel : AbstractCrudViewModel
    {
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public DateTime DateReference { get; set; }
    }
}
