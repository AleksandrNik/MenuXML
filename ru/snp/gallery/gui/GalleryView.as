<<<<<<< HEAD
package ru.snp.gallery.gui {	import com.greensock.TweenMax;	import com.greensock.easing.Linear;	import com.greensock.events.TweenEvent;		import flash.ui.Mouse;	import flash.display.Loader;	import flash.display.Sprite;	import flash.events.Event;	import flash.net.URLRequest;		import ru.snp.gallery.data.ImageItem;	public class GalleryView extends Sprite {		private var _loader:Loader;		private var _container:Sprite;		private var _containerOld:Sprite;		private var _itemId:uint;		private var _itemLastId:uint;		private var _rect:Sprite;				public function GalleryView() {		}		// public:		public function showItem(item:ImageItem):void {			_itemId = item.id;			_container = new Sprite;			_container.x = stage.stageWidth / 3;			_container.y = 0 - stage.stageHeight / 4;			addChild(_container);					if (!_containerOld) {				_containerOld = new Sprite;				_containerOld.x = stage.stageWidth / 3;				_containerOld.y = 0 - stage.stageHeight / 4;				addChild(_containerOld);			}			var request:URLRequest = new URLRequest(item.url);			_loader = new Loader;			_loader.load(request);			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadCompleteHandler);		}		// protected:		protected function loadCompleteHandler(event:Event):void {									_container.addChild(_loader);			_container.x = (_itemId >= _itemLastId) ? -500 : 900;			var oldX:int = (_itemId >= _itemLastId) ? 900 : -500;																Mouse.hide();										_rect = new Sprite;			_rect.x = 150;			_rect.y = -220;			_rect.graphics.beginFill(0xCCCCCC, 0.5);			_rect.graphics.drawRect(0,0,500,50);			addChild (_rect); 									TweenMax.to(_container, 0.5, {x: 270, ease: Linear.easeInOut, onComplete: tweenCompleteHandler})			TweenMax.to(_containerOld, 0.5, {x: oldX, ease: Linear.easeInOut});		}		protected function tweenCompleteHandler():void {			_containerOld = _container;			_itemLastId = _itemId;						removeChild(_rect); 			Mouse.show();		}	}}
=======
package ru.snp.gallery.gui {	import com.greensock.TweenMax;	import com.greensock.easing.Linear;	import com.greensock.events.TweenEvent;	import flash.display.Loader;	import flash.display.Sprite;	import flash.events.Event;	import flash.net.URLRequest;	import ru.snp.gallery.data.ImageItem;	public class GalleryView extends Sprite {		private var _loader:Loader;		private var _container:Sprite;		private var _containerOld:Sprite;		private var _itemId:uint;		private var _itemLastId:uint;		public function GalleryView() {		}		// public:		public function showItem(item:ImageItem):void {			_itemId = item.id;			_container = new Sprite;			_container.x = stage.stageWidth / 3;			_container.y = 0 - stage.stageHeight / 4;			addChild(_container);			_container.graphics.beginFill(0xCCCCCC, 1);			_container.graphics.drawRect(-500, 0, 900, 300);			_container.graphics.endFill();			if (!_containerOld) {				_containerOld = new Sprite;				_containerOld.x = stage.stageWidth / 3;				_containerOld.y = 0 - stage.stageHeight / 4;				addChild(_containerOld);			}			var request:URLRequest = new URLRequest(item.url);			_loader = new Loader;			_loader.load(request);			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadCompleteHandler);		}		// protected:		protected function loadCompleteHandler(event:Event):void {			_container.addChild(_loader);			_container.x = (_itemId >= _itemLastId) ? -500 : 900;			var oldX:int = (_itemId >= _itemLastId) ? 900 : -500;			TweenMax.to(_container, 0.5, {x: 270, ease: Linear.easeInOut, onComplete: tweenCompleteHandler})			TweenMax.to(_containerOld, 0.5, {x: oldX, ease: Linear.easeInOut});		}		protected function tweenCompleteHandler():void {			_containerOld = _container;			_itemLastId = _itemId;		}	}}
>>>>>>> c127047ea5edca8f15bda0edb4b0423b5f4dc001
