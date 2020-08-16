using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Threading;

namespace TwilightImperium.ContentModel
{
    public class Faction
    {
        public string Id { get; set; }
        
        public string Name { get; set; }
        
        public FactionLore Lore { get; set; }
        
        public FactionSheet FactionSheet { get; set; }

        public ControlToken ControlToken { get; set; }

        public CommandToken CommandToken { get; set; }

        // spawn rules?
        public ICollection<FactionToken> FactionTokens { get; set; }

        // Faction Data
        public ICollection<FactionTechnology> FactionTechnologies { get; set; }

        public ICollection<FactionUnit> FactionUnits { get; set; }

        public ICollection<FactionPromisoryNote> FactionPromisoryNotes {get;set;}
    }
}