using System.Collections.Generic;

namespace TwilightImperium.ContentModel
{
    public class ContentPackage
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public string Version { get; set; }

        public string Date { get; set; }

        public ICollection<string> ReleaseNotes { get; set; }

        public string HomepageUrl { get; set; }

        public string Author { get; set; }

        public string PackageOwner { get; set; }

        public ICollection<Faction> Factions { get; set; }

        public ICollection<MapTile> MapTiles { get; set; }

        public ICollection<StrategyCard> StrategyCards { get; set; }

        public ICollection<Unit> Units { get; set; }

        public ICollection<PromisoryNote> PromisoryNotes { get; set; }

        public ICollection<Planet> Planets { get; set; }

        public ICollection<Objective> Objectives { get; set; }

        public ICollection<ActionCard> ActionCards { get; set; }

        public ICollection<AgendaCard> AgendaCards { get; set; }

        public ICollection<Rule> Rules { get; set; }

        public Note Note { get; set; }
    }
}
