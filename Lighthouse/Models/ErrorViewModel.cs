using System;

namespace Lighthouse.Models
{
    public class ErrorViewModel
    {
        public ErrorViewModel(string message)
        {
            Message = message;
        }

        public ErrorViewModel() { }

        public string Message { get; set; }

        public string RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);
    }
}
