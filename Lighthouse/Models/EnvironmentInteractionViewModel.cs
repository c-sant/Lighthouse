using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.Models
{
    public class EnvironmentInteractionViewModel : AbstractCrudViewModel
    {
        public SensorViewModel Sensor { get; set; }
        public AttributeViewModel Attribute { get; set; }
        public string Value { get; set; }
        public DateTime DateReference { get; set; }
    }
}
