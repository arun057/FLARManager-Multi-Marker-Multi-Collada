package {

	
	
	import flash.display.Sprite;
		
	[SWF(width="640", height="480", frameRate="30", backgroundColor="#FFFFFF")]
	public class launchMultiMarker extends Sprite {
		

	
		public function launchMultiMarker () {


			this.addChild(new MultiMarkerMultiDae());

		}
	}
}
