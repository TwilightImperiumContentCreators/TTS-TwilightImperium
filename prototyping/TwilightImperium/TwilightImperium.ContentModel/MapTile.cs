using System.Collections.Generic;

namespace TwilightImperium.ContentModel
{
    public class MapTile
    {
        public string Id { get; set; }

        public ICollection<TilePlanet> Planets { get; set; }

        public MapTileType Type { get; set; }

        public ICollection<Wormhole> Wormholes { get; set; }

        public ICollection<Anomaly> Anomalies { get; set; }
    }
}