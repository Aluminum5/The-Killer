package game 
{
	
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Jordan Magnuson
	 */
	public class Global
	{
		public static var MUSIC_WHILE_WALKING:Boolean = false;
		
		// Global constants
		// Day-evening-night cycle = 95 seconds
		public static const WALKING_SPEED:Number = 100;
		public static const MIN_TIME_IN_JUNGLE:Number = 90; // 60
		public static const MIN_TIME_IN_FOREST:Number = 45; // 45
		public static const MIN_TIME_IN_BEACH:Number = 90; 	// 45
		
		public static const MAX_TIME_IN_JUNGLE:Number = 120;	// 90
		public static const MAX_TIME_IN_FOREST:Number = 60;		// 90
		public static const MAX_TIME_IN_BEACH:Number = 120;		// 90
		
		public static var timeInJungle:Number = MIN_TIME_IN_JUNGLE + FP.random * (MAX_TIME_IN_JUNGLE - MIN_TIME_IN_JUNGLE);
		public static var timeInForest:Number = MIN_TIME_IN_FOREST + FP.random * (MAX_TIME_IN_FOREST - MIN_TIME_IN_FOREST);
		public static var timeInBeach:Number = MIN_TIME_IN_BEACH + FP.random * (MAX_TIME_IN_BEACH - MIN_TIME_IN_BEACH);
		
		public static var START_MUSIC_IN:Number = timeInJungle + timeInForest + 10;
		public static var MUSIC_IN_DURATION:Number = 30;		
		
		//public static var timeInJungle:Number = 90;
		//public static var timeInForest:Number = 90;
		//public static var timeInBeach:Number = 90;	
		
		
		public static const EARLIEST_EXPLOSION:Number = 100;
		public static const LATEST_EXPLOSION:Number = 210;
		public static const EXPLOSION_CHANCE:Number = 0.25;
		
		// Global variables
		public static var shouldExplode:Boolean = false;
		public static var explosionTime:Number = 0;
		public static var exploded:Boolean = false;
		public static var startedWalking:Boolean = false;
		public static var firstPush:Boolean = false;
		public static var farEnough:Boolean = true;
		public static var playSounds:Boolean = true;
		public static var fadeSounds:Boolean = false;
		public static var shotFired:Boolean = false;
		public static var mercifulShot:Boolean = false;
		public static var stillInJungle:Boolean = true;
		public static var touchedPlains:Boolean = false;
		public static var reachedPlains:Boolean = false;
		public static var numberOfStops:int = 0;
		public static var locationChanges:int = 0;
		
		public static var endScreen:int = 0;
		
		public static var server:DataToServer;
		public static var player:Player;
		public static var playerShooting:PlayerShooting;
		public static var gun:Gun;
		public static var victim:Victim;
		public static var victimStillRun:VictimStillRunController;
		public static var deadVictim:DeadVictim;
		public static var deadUnderground:DeadUnderground;
		public static var crossHair:Crosshair;
		public static var view:View;
		public static var timeCounter:TimeCounter;
	}

}