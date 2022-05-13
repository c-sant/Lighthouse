using System;

namespace Lighthouse.Models
{
    public class OccurrenceViewModel : AbstractCrudViewModel
    {
        public LocationViewModel Location { get; set; }
        public DateTime DateReference { get; set; }
        public string Details { get; set; }
    }
}
