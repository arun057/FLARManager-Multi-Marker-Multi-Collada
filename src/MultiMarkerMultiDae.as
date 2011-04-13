package  {
    import com.transmote.flar.FLARManager;
    import com.transmote.flar.marker.FLARMarker;
    import com.transmote.flar.marker.FLARMarkerEvent;
    import com.transmote.flar.utils.geom.FLARPVGeomUtils;
    
    import flash.display.Sprite;
    import flash.events.Event;
    
    import org.libspark.flartoolkit.support.pv3d.FLARCamera3D;
    import org.papervision3d.lights.PointLight3D;
    import org.papervision3d.objects.DisplayObject3D;
    import org.papervision3d.objects.parsers.DAE;
    import org.papervision3d.render.LazyRenderEngine;
    import org.papervision3d.scenes.Scene3D;
    import org.papervision3d.view.Viewport3D;
    
    
    
    public class MultiMarkerMultiDae extends Sprite {
        private var flarManager:FLARManager;
        
        private var scene3D:Scene3D;
        private var camera3D:FLARCamera3D;
        private var viewport3D:Viewport3D;
        private var renderEngine:LazyRenderEngine;
        private var pointLight3D:PointLight3D;
        
        private var activeMarker1:FLARMarker;
        private var activeMarker2:FLARMarker;
        private var activeMarker3:FLARMarker;
		private var activeMarker4:FLARMarker;
		private var activeMarker5:FLARMarker;
		private var activeMarker6:FLARMarker;
		private var activeMarker7:FLARMarker;
		private var activeMarker8:FLARMarker;
		private var activeMarker9:FLARMarker;
		private var activeMarker10:FLARMarker;
		private var activeMarker11:FLARMarker;
		private var activeMarker:FLARMarker;
        private var modelContainer:DisplayObject3D;
        private var modelContainer1:DisplayObject3D;
		private var modelContainer2:DisplayObject3D;
        private var modelContainer3:DisplayObject3D;
		private var modelContainer4:DisplayObject3D;
		private var modelContainer5:DisplayObject3D;
		private var modelContainer6:DisplayObject3D;
		private var modelContainer7:DisplayObject3D;
		private var modelContainer8:DisplayObject3D;
		private var modelContainer9:DisplayObject3D;
		private var modelContainer10:DisplayObject3D;
		private var modelContainer11:DisplayObject3D;

		
        private var markerId:int;
        
        
        public function MultiMarkerMultiDae () 
        {
            // pass the path to the FLARManager xml config file into the FLARManager constructor.
            // FLARManager creates and uses a FLARCameraSource by default.
            // the image from the first detected camera will be used for marker detection.
            this.flarManager = new FLARManager("flar/flarConfig.xml");
            
            // add FLARManager.flarSource to the display list to display the video capture.
            this.addChild(Sprite(this.flarManager.flarSource));
            
            // begin listening for FLARMarkerEvents.
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_ADDED, this.onMarkerAdded);
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_UPDATED, this.onMarkerUpdated);
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_REMOVED, this.onMarkerRemoved);
            
            // wait for FLARManager to initialize before setting up Papervision3D environment.
            this.flarManager.addEventListener(Event.INIT, this.onFlarManagerInited);
        }
        
        private function onFlarManagerInited (evt:Event) :void 
        {
            this.flarManager.removeEventListener(Event.INIT, this.onFlarManagerInited);
            
            this.scene3D = new Scene3D();
            
            // initialize FLARCamera3D with parsed camera parameters.
            this.camera3D = new FLARCamera3D(this.flarManager.cameraParams);
            
            this.viewport3D = new Viewport3D(this.stage.stageWidth, this.stage.stageHeight);
            this.addChild(this.viewport3D);
            
            this.renderEngine = new LazyRenderEngine(this.scene3D, this.camera3D, this.viewport3D);
            
            this.pointLight3D = new PointLight3D();
            this.pointLight3D.x = 1000;
            this.pointLight3D.y = 1000;
            this.pointLight3D.z = -1000;
            
            
			
            // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            var model1:DAE = new DAE(true, "model1", true); 
            model1.load("assets/model1.dae"); 
            model1.rotationX = 0; 
            model1.rotationY = 0; 
            model1.rotationZ = 0; 
            model1.scale = 10; 
            
             // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            var model2:DAE = new DAE(true, "model2", true); 
            model2.load("assets/model2.dae");
            trace("model4 loaded"); 
            model2.rotationX = 0; 
            model2.rotationY=  0;
            model2.rotationZ = 0; 
            model2.scale = 10; 
            
            // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            var model3:DAE = new DAE(true, "model3", true); 
            model3.load("assets/model3.dae"); 
            model3.rotationX = 0; 
            model3.rotationY=  0;
            model3.rotationZ = 0; 
            model3.scale = 10; 
            
//            // load the model. 
//            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            var model4:DAE = new DAE(true, "model4", true); 
            model4.load("assets/model4.dae"); 
            model4.rotationX = 0; 
            model4.rotationY=  0;
            model4.rotationZ = 0; 
            model4.scale = 10;
			
			var model5:DAE = new DAE(true, "model5", true); 
			model5.load("assets/model5.dae"); 
			model5.rotationX = 0; 
			model5.rotationY=  0;
			model5.rotationZ = 0; 
			model5.scale = 10;
            
			var model6:DAE = new DAE(true, "model6", true); 
			model6.load("assets/model6.dae"); 
			model6.rotationX = 0; 
			model6.rotationY=  0;
			model6.rotationZ = 0; 
			model6.scale = 10; 
			
			var model7:DAE = new DAE(true, "model7", true); 
			model7.load("assets/model7.dae"); 
			model7.rotationX = 0; 
			model7.rotationY=  0;
			model7.rotationZ = 0; 
			model7.scale = 10; 
			
			var model8:DAE = new DAE(true, "model8", true); 
			model8.load("assets/model8.dae"); 
			model8.rotationX = 0; 
			model8.rotationY=  0;
			model8.rotationZ = 0; 
			model8.scale = 10; 
			
			var model9:DAE = new DAE(true, "model9", true); 
			model9.load("assets/model9.dae"); 
			model9.rotationX = 0; 
			model9.rotationY=  0;
			model9.rotationZ = 0; 
			model9.scale = 10; 
			
			var model10:DAE = new DAE(true, "model10", true); 
			model10.load("assets/model10.dae"); 
			model10.rotationX = 0; 
			model10.rotationY=  0;
			model10.rotationZ = 0; 
			model10.scale = 10; 
			
			var model11:DAE = new DAE(true, "model11", true); 
			model11.load("assets/model11.dae"); 
			model11.rotationX = 0; 
			model11.rotationY=  0;
			model11.rotationZ = 0; 
			model11.scale = 10; 
			
			var model12:DAE = new DAE(true, "model12", true); 
			model12.load("assets/model12.dae"); 
			model12.rotationX = 0; 
			model12.rotationY=  0;
			model12.rotationZ = 0; 
			model12.scale = 10; 
			
            
//              // create a container for the model, that will accept matrix transformations. 

            // create a container for the model, that will accept matrix transformations.
            this.modelContainer = new DisplayObject3D();
            this.modelContainer.addChild(model1);
            this.modelContainer.visible = false;
            this.scene3D.addChild(this.modelContainer);
            
            
            
            this.modelContainer1 = new DisplayObject3D();
            this.modelContainer1.addChild(model2);
            this.modelContainer1.visible = false;
            this.scene3D.addChild(this.modelContainer1);
            
			this.modelContainer2 = new DisplayObject3D();
			this.modelContainer2.addChild(model4);
			this.modelContainer2.visible = false;
			this.scene3D.addChild(this.modelContainer2);
            
            this.modelContainer3 = new DisplayObject3D();
            this.modelContainer3.addChild(model3);
            this.modelContainer3.visible = false;
            this.scene3D.addChild(this.modelContainer3);
			
			this.modelContainer5 = new DisplayObject3D();
			this.modelContainer5.addChild(model5);
			this.modelContainer5.visible = false;
			this.scene3D.addChild(this.modelContainer5);
			
			this.modelContainer6 = new DisplayObject3D();
			this.modelContainer6.addChild(model6);
			this.modelContainer6.visible = false;
			this.scene3D.addChild(this.modelContainer6);
			
			this.modelContainer7 = new DisplayObject3D();
			this.modelContainer7.addChild(model7);
			this.modelContainer7.visible = false;
			this.scene3D.addChild(this.modelContainer7);
			
			this.modelContainer8 = new DisplayObject3D();
			this.modelContainer8.addChild(model8);
			this.modelContainer8.visible = false;
			this.scene3D.addChild(this.modelContainer8);
			
			this.modelContainer9 = new DisplayObject3D();
			this.modelContainer9.addChild(model9);
			this.modelContainer9.visible = false;
			this.scene3D.addChild(this.modelContainer9);
			
			this.modelContainer10 = new DisplayObject3D();
			this.modelContainer10.addChild(model10);
			this.modelContainer10.visible = false;
			this.scene3D.addChild(this.modelContainer10);
			
			this.modelContainer11 = new DisplayObject3D();
			this.modelContainer11.addChild(model11);
			this.modelContainer11.visible = false;
			this.scene3D.addChild(this.modelContainer11);
			
	
			
            
            //------------------------------------------------------------------------- --------- 
            this.addEventListener(Event.ENTER_FRAME, this.onEnterFrame); 
       } 
           
		
			private function onMarkerAdded ( evt:FLARMarkerEvent) :void
			{
				
					trace("["+evt.marker.patternId+"] added");
					if(evt.marker.patternId == 1)
					{
							trace("Pattern 1 Added");
							markerAdded(1);
							this.activeMarker = evt.marker;
			
					}
					
					if(evt.marker.patternId == 2)
					{
						trace("Pattern 2 Added");
						markerAdded(2);
						this.activeMarker1 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 3)
					{
						trace("Pattern 3 Added");
						markerAdded(3);
						this.activeMarker2 = evt.marker;
					}
					
					if(evt.marker.patternId == 4)
					{
						trace("Pattern 4 Added");
						markerAdded(4);
						this.activeMarker3 = evt.marker;
					}
					
					if(evt.marker.patternId == 5)
					{
						trace("Pattern 5 Added");
						markerAdded(5);
						this.activeMarker4 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 6)
					{
						trace("Pattern 6 Added");
						markerAdded(6);
						this.activeMarker5 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 7)
					{
						trace("Pattern 7 Added");
						markerAdded(7);
						this.activeMarker6 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 8)
					{
						trace("Pattern 8Added");
						markerAdded(8);
						this.activeMarker7 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 9)
					{
						trace("Pattern 9 Added");
						markerAdded(9);
						this.activeMarker8 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 10)
					{
						trace("Pattern 10 Added");
						markerAdded(10);
						this.activeMarker9 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 11)
					{
						trace("Pattern 11 Added");
						markerAdded(11);
						this.activeMarker10 = evt.marker;
						
					}
					
					if(evt.marker.patternId == 12)
					{
						trace("Pattern 121 Added");
						markerAdded(12);
						this.activeMarker11 = evt.marker;
						
					}
					
				
					this.activeMarker = evt.marker;
			}
		   
			private function onMarkerUpdated (evt:FLARMarkerEvent) :void 
         	{ 
	            trace("["+evt.marker.patternId+"] updated"); 
	            if(evt.marker.patternId == 1)
	            {
		            trace("Pattern 1 Updated"); 
		            markerAdded(1);
		            this.activeMarker = evt.marker; 
	            }
	            if(evt.marker.patternId == 2)
	            {
		            trace("Pattern 2 Updated"); 
		            markerAdded(2);
		            this.activeMarker1 = evt.marker; 
	            }
	            if(evt.marker.patternId == 3)
	            {
		            trace("Pattern 3 Updated"); 
		            markerAdded(3);
		            this.activeMarker2 = evt.marker; 
            	}
				if(evt.marker.patternId == 4)
				{
					trace("Pattern 4 Updated"); 
					markerAdded(4);
					this.activeMarker3 = evt.marker; 
				}
				if(evt.marker.patternId == 5)
				{
					trace("Pattern 5 Updated"); 
					markerAdded(5);
					this.activeMarker4 = evt.marker; 
				}
				if(evt.marker.patternId == 6)
				{
					trace("Pattern 6 Updated"); 
					markerAdded(6);
					this.activeMarker5 = evt.marker; 
				}
				if(evt.marker.patternId == 7)
				{
					trace("Pattern 7 Updated"); 
					markerAdded(7);
					this.activeMarker6 = evt.marker; 
				}
				if(evt.marker.patternId == 8)
				{
					trace("Pattern 8 Updated"); 
					markerAdded(8);
					this.activeMarker7 = evt.marker; 
				}
				if(evt.marker.patternId == 9)
				{
					trace("Pattern 9 Updated"); 
					markerAdded(9);
					this.activeMarker8 = evt.marker; 
				}
				if(evt.marker.patternId == 10)
				{
					trace("Pattern 10 Updated"); 
					markerAdded(10);
					this.activeMarker9 = evt.marker; 
				}
				if(evt.marker.patternId == 11)
				{
					trace("Pattern 11 Updated"); 
					markerAdded(11);
					this.activeMarker10 = evt.marker; 
				}
				if(evt.marker.patternId == 12)
				{
					trace("Pattern 12 Updated"); 
					markerAdded(12);
					this.activeMarker11 = evt.marker; 
				}
            } 
            
             private function onMarkerRemoved (evt:FLARMarkerEvent) :void { 
            trace("["+evt.marker.patternId+"] removed"); 
           
            if(evt.marker.patternId == 1)
            {
            trace("Pattern 1 Removed");
            markerRemoved(1);
            }
			if(evt.marker.patternId == 2)
            {
            trace("Pattern 2 Removed");
            markerRemoved(2);
            }
            if(evt.marker.patternId == 3)
            {
            trace("Pattern 3 Removed");
            markerRemoved(3);
            }
			if(evt.marker.patternId == 4)
			{
				trace("Pattern 4 Removed");
				markerRemoved(4);
			}
			if(evt.marker.patternId == 5)
			{
				trace("Pattern 5 Removed");
				markerRemoved(5);
			}
			if(evt.marker.patternId == 6)
			{
				trace("Pattern 6 Removed");
				markerRemoved(6);
			}
			if(evt.marker.patternId == 7)
			{
				trace("Pattern 7 Removed");
				markerRemoved(7);
			}
			if(evt.marker.patternId == 8)
			{
				trace("Pattern 8 Removed");
				markerRemoved(8);
			}
			if(evt.marker.patternId == 9)
			{
				trace("Pattern 9 Removed");
				markerRemoved(9);
			}
			if(evt.marker.patternId == 10)
			{
				trace("Pattern 10 Removed");
				markerRemoved(10);
			}
			if(evt.marker.patternId == 11)
			{
				trace("Pattern 11 Removed");
				markerRemoved(11);
			}
			if(evt.marker.patternId == 12)
			{
				trace("Pattern 12 Removed");
				markerRemoved(12);
			}
			
            
            this.activeMarker = null;
            this.activeMarker1 = null; 
            this.activeMarker2 = null;
            this.activeMarker3 = null;
			this.activeMarker4 = null;
			this.activeMarker5 = null;
			this.activeMarker6 = null;
			this.activeMarker7 = null;
			this.activeMarker8 = null;
			this.activeMarker9 = null;
			this.activeMarker10 = null;
			this.activeMarker11 = null;

			
            } 
            
             private function onEnterFrame (evt:Event) :void { 
                 
                 // apply the FLARToolkit transformation matrix to the Cube.
                if (this.activeMarker) {
                this.modelContainer.transform =    FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker.transformMatrix);
                }
                
                if (this.activeMarker1) {
                this.modelContainer1.transform =    FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker1.transformMatrix);
                }
                
                if (this.activeMarker2) {
                this.modelContainer2.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker2.transformMatrix);
                }
                
                if (this.activeMarker3) {
                this.modelContainer3.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker3.transformMatrix);
                }
				
				if (this.activeMarker4) {
					this.modelContainer4.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker4.transformMatrix);
				}
				
				if (this.activeMarker5) {
					this.modelContainer5.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker6.transformMatrix);
				}
				
				if (this.activeMarker6) {
					this.modelContainer6.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker7.transformMatrix);
				}
				
				if (this.activeMarker7) {
					this.modelContainer7.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker7.transformMatrix);
				}
				
				if (this.activeMarker8) {
					this.modelContainer8.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker8.transformMatrix);
				}
				
				if (this.activeMarker9) {
					this.modelContainer9.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker9.transformMatrix);
				}
				
				if (this.activeMarker10) {
					this.modelContainer10.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker10.transformMatrix);
				}
				
				if (this.activeMarker11) {
					this.modelContainer11.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker11.transformMatrix);
				}



//            // apply the FLARToolkit transformation matrix to the Cube. 
        
              this.renderEngine.render(); 
             }
             
    
                
                // THIS IS POTENTIALLY THE ANSWER TO ALL THE PROBLEMS FACED DURING THIS CODE.
                
                //EVENTS FOR ADDED MARKER
                
            private function markerAdded(markerId:int):void
            {
                trace(markerId);
                var x:int = markerId;
                switch(x)
                {
                    case 1:
                    {
                        
                        if(modelContainer1.visible==false)
                        {
                            modelContainer1.visible=true;
                            break;
                        }
                        else
                            break;    
                    }
                    case 2:
                    {
                        if(modelContainer.visible==false)
                        {
                            modelContainer.visible=true;
                            break;
                        }
                        else
                            break;
                    }
                    case 3:
                    {
                        
                        if(modelContainer2.visible==false)
                        {
                            modelContainer2.visible=true;
                            break;
                        }
                        else
                            break;    
                    }
					case 4:
					{
						
						if(modelContainer3.visible==false)
						{
							modelContainer3.visible=true;
							break;
						}
						else
							break;    
					}
					case 5:
					{
						
						if(modelContainer4.visible==false)
						{
							modelContainer4.visible=true;
							break;
						}
						else
							break;    
					}
					case 6:
					{
						
						if(modelContainer5.visible==false)
						{
							modelContainer5.visible=true;
							break;
						}
						else
							break;    
					}
					case 7:
					{
						
						if(modelContainer6.visible==false)
						{
							modelContainer6.visible=true;
							break;
						}
						else
							break;    
					}
					case 8:
					{
						
						if(modelContainer7.visible==false)
						{
							modelContainer7.visible=true;
							break;
						}
						else
							break;    
					}
					case 9:
					{
						
						if(modelContainer8.visible==false)
						{
							modelContainer8.visible=true;
							break;
						}
						else
							break;    
					}
					case 10:
					{
						
						if(modelContainer9.visible==false)
						{
							modelContainer9.visible=true;
							break;
						}
						else
							break;    
					}
					case 11:
					{
						
						if(modelContainer10.visible==false)
						{
							modelContainer10.visible=true;
							break;
						}
						else
							break;    
					}
					case 12:
					{
						
						if(modelContainer11.visible==false)
						{
							modelContainer11.visible=true;
							break;
						}
						else
							break;    
					}
						
                }
                
            }
            
            private function markerRemoved(markerId:int):void
            {
                var x:int = markerId;
                switch(x)
                {
                    case 1:
                    {
                        if(modelContainer1.visible==true)
                        {
                            modelContainer1.visible=false;
                            break;
                        }
                        else
                            break;
                    }
                    
                    case 2:
                    {
                        if(modelContainer.visible==true)
                        {
                            modelContainer.visible=false;
                            break;
                        }
                        else
                        {
                            break;
                        }
                    }
                    
                    case 3:
                    {
                        if(modelContainer3.visible==true)
                        {
                            modelContainer3.visible=false;
                            break;
                        }
                        else
                            break;
                    }
					case 4:
					{
						if(modelContainer2.visible==true)
						{
							modelContainer2.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 5:
					{
						if(modelContainer4.visible==true)
						{
							modelContainer4.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 6:
					{
						if(modelContainer5.visible==true)
						{
							modelContainer5.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 7:
					{
						if(modelContainer6.visible==true)
						{
							modelContainer6.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 8:
					{
						if(modelContainer7.visible==true)
						{
							modelContainer7.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 9:
					{
						if(modelContainer8.visible==true)
						{
							modelContainer8.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 10:
					{
						if(modelContainer9.visible==true)
						{
							modelContainer9.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 11:
					{
						if(modelContainer10.visible==true)
						{
							modelContainer10.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 12:
					{
						if(modelContainer11.visible==true)
						{
							modelContainer11.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
                }
            }
    }    

}
