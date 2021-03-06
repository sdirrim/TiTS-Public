package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Items.Apparel.BullsJockstrap;
	import classes.Items.Apparel.Undershirt;
	import classes.Items.Miscellaneous.AssSlapPatch;
	import classes.Items.Transformatives.Equilicum;
	import classes.Items.Transformatives.SaltyJawBreaker;
	import classes.Items.Transformatives.SweetSweat;
	import classes.Items.Transformatives.Virection;
	import classes.Items.Melee.Fists;
	import classes.kGAMECLASS;
	
	public class Busky extends Creature
	{
		//constructor
		public function Busky()
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = true;
			
			this.short = "Busky";
			this.originalRace = "human";
			this.a = "";
			this.capitalA = "";
			this.long = "";
			this.customDodge = "";
			this.customBlock = "";
			this.isPlural = false;
			
			this.upperUndergarment = new Undershirt();             
			this.lowerUndergarment = new BullsJockstrap();
			
			//Modshop Iventory
			this.inventory.push(new AssSlapPatch());
			this.inventory.push(new Equilicum());
			this.inventory.push(new SweetSweat());
			this.inventory.push(new SaltyJawBreaker());
			this.inventory.push(new Virection());
			
			this.armor.defense = 50;
			this.physiqueRaw = 3;
			this.reflexesRaw = 3;
			this.aimRaw = 3;
			this.intelligenceRaw = 3;
			this.willpowerRaw = 3;
			this.libidoRaw = 30;
			this.HPMod = 20;
			this.shieldsRaw = 0;
			this.HPRaw = this.HPMax();
			this.energyRaw = 100;
			this.lustRaw = 25;
			
			this.level = 1;
			this.XPRaw = normalXP();
			this.credits = 1000;
			
			this.typesBought[this.typesBought.length] = GLOBAL.ALL;
			this.sellMarkup = 2.0;
			this.buyMarkdown = .25;
			this.keeperSell = "boop";
			this.keeperBuy = "bop";
			this.keeperGreeting = "BLOOP.";
			
			this.femininity = 25;
			this.eyeType = GLOBAL.TYPE_HUMAN;
			this.eyeColor = "sea blue";
			this.tallness = 101;
			this.thickness = 10;
			this.tone = 80;
			this.hairColor = "dark brown";
			this.furColor = "";
			this.hairLength = 3;
			this.hairType = GLOBAL.HAIR_TYPE_REGULAR;
			this.beardLength = 0.25;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SKIN;
			this.skinTone = "fair";
			this.skinFlags = new Array(GLOBAL.FLAG_SMOOTH);
			this.faceType = GLOBAL.TYPE_HUMAN;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_HUMAN;
			this.lipMod = 0;
			this.earType = GLOBAL.TYPE_BOVINE;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 2;
			this.hornType = GLOBAL.TYPE_BOVINE;
			this.armType = GLOBAL.TYPE_HUMAN;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.TYPE_HUMAN;
			this.legCount = 2;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.TYPE_BOVINE;
			this.tailCount = 1;
			this.tailFlags = new Array();
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 0;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 3;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 5;
			this.cocks = new Array();
			this.createCock();
			this.cocks[0].cType = GLOBAL.TYPE_EQUINE;
			this.cocks[0].cLengthRaw = 20;
			this.cocks[0].cThicknessRatioRaw = 1.75;
			this.cocks[0].virgin = false;
			//balls
			this.balls = 4;
			this.cumMultiplierRaw = 30;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 10;
			this.cumType = GLOBAL.FLUID_TYPE_CUM;
			this.ballSizeRaw = 10;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 30;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 10;
			this.minutesSinceCum = 9999;
			this.timesCum = 899;
			
			//Goo is hyper friendly!
			this.elasticity = 1;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 1.05;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 0;
			this.nippleColor = "pink";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 0;
			this.ass.wetnessRaw = 0;
			this.ass.loosenessRaw = 10;
			this.ass.bonusCapacity += 100;
			this.analVirgin = false;
			
			this.version = _latestVersion;
			this._isLoading = false;
		}//end constructor
		
		override public function onLeaveBuyMenu():void {
			kGAMECLASS.mainGameMenu();
		}
		
	}//end Busky Class
}