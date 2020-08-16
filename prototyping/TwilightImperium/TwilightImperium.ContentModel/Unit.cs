using System;

namespace TwilightImperium.ContentModel
{
    public class Unit
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public string TypeId { get; set; }

        public string ModelUri { get; set; }

        public string ColliderUri { get; set; }

        public string TextureUri { get; set; }

        public string NormalMapUri { get; set; }

        public int PositionalPriority { get; set; }
    }
}