package player
{
	import flash.display.MovieClip;
	
	public class SoundWaves extends MovieClip
	{
		var __bg_mc:MovieClip;
		var __width:Number;
		var __height:Number;
		var __space:Number;
		var __numItems:Number;
		var __itemWidth = (__width-((__numItems-1)*__space))/__numItems;
		var __maxValue:Number;
		var __itemValue1:Array;
		var __itemValue2:Array;
		var __rate:Number;
		var __ilTime:Number;
		var __ilId:Number;
		var __isPlay:Boolean;
		var k:Number = .8;
		var k2:Number = .98;
		
		public function SoundWaves()
		{
			super();
//			__bg_mc = createEmptyMovieClip("bg_mc", -1);
			__bg_mc.beginFill(0xFFFFFF, 0);
			__bg_mc.moveTo(0, 0);
			__bg_mc.lineTo(__width, 0);
			__bg_mc.lineTo(__width, -__height);
			__bg_mc.lineTo(0, -__height);
			__bg_mc.lineTo(0, 0);
			__bg_mc.endFill();
			space = 2;
			numItems = 8;
			setSize(30, 50);
			__itemValue1 = [];
			__itemValue2 = [];
			__rate = 10;
			__ilTime = Math.ceil(1000/__rate);
			__isPlay = false;			
		}

		function onEnterFrame() {
//			clear();
//			for (var i = 0; i<__numItems; i++) {
//				var tempValue1:Number = __itemValue1[i];
//				var tempValue2:Number = __itemValue2[i];
//				
//				__itemValue1[i] *= k;
//				__itemValue2[i] *= (k2*(__isPlay ? 1:.95));
//				
//				var x = i*(__space+__itemWidth);
//				
//				beginFill(0xFFFFFF, 100);
//				moveTo(x, -tempValue2);
//				lineTo(x+__itemWidth, -tempValue2);
//				lineTo(x+__itemWidth, -tempValue2-1);
//				lineTo(x, -tempValue2-1);
//				lineTo(x, -tempValue2);
//				
//				moveTo(x, 0);
//				lineTo(x+__itemWidth, 0);
//				lineTo(x+__itemWidth, -tempValue1);
//				lineTo(x, -tempValue1);
//				lineTo(x, 0);
//				endFill();
//			}
		}
		function makeWave(target) {
			with (target) {
				for (var i = 0; i<__numItems; i++) {
					var value = __height*Math.random();
					__itemValue1[i] = value;
					__itemValue2[i] = value<__itemValue2[i] ? __itemValue2[i] : value;
				}
			}
		}
//		function play() {
//			stop();
//			__isPlay = true;
//			__ilId = setInterval(makeWave, __ilTime, this);
//		}
//		function stop() {
//			__isPlay = false;
//			clearInterval(__ilId);
//		}
		function get isPlay() {
			return __isPlay;
		}
		function set space(value) {
			__space = value;
			__itemWidth = (__width-((__numItems-1)*__space))/__numItems;
		}
		function get space(){
			return __space
		}
		function set numItems(value) {
			__numItems = value;
			__itemWidth = (__width-((__numItems-1)*__space))/__numItems;
		}
		function get numItems(){
			return __numItems;
		}
		function setSize(widthValue, heightValue) {
			__width = widthValue;
			__height = heightValue;
			__itemWidth = (__width-((__numItems-1)*__space))/__numItems;
		}
	}
}