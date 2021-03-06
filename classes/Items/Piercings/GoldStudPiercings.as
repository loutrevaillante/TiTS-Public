﻿package classes.Items.Piercings
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	import classes.GameData.TooltipManager;
	import classes.StringUtil;
	import classes.Engine.Combat.DamageTypes.DamageFlag;
	
	public class GoldStudPiercings extends ItemSlotClass
	{
		public function GoldStudPiercings()
		{
			this._latestVersion = 1;

			this.quantity = 1;
			this.stackSize = 1;
			this.type = GLOBAL.PIERCING;
			
			this.shortName = "G.Studs";
			this.longName = "gold studs";
			
			TooltipManager.addFullName(this.shortName, StringUtil.toTitleCase(this.longName));
			
			this.description = "gold studs";
			
			this.tooltip = "These gold studs are a classic, purely ornamental choice. Like all modern piercings, they are self-piercing and guaranteed sanitary for multiple uses. They have no effect beyond enhancing your own personal style.";

			TooltipManager.addTooltip(this.shortName, this.tooltip);
			
			this.basePrice = 900;
			
			addFlag(GLOBAL.ITEM_FLAG_PIERCING_MULTIPLE);
			//addFlag(GLOBAL.ITEM_FLAG_PIERCING_RING);
			addFlag(GLOBAL.ITEM_FLAG_PIERCING_STUD);
			//addFlag(GLOBAL.ITEM_FLAG_NO_REMOVE);
			
			this.version = _latestVersion;
		}
	}
}