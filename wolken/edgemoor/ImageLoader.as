﻿package wolken.edgemoor{	import flash.events.Event;	import flash.events.EventDispatcher;	import flash.display.Sprite;	import flash.display.Loader;	import flash.net.URLRequest;	public class ImageLoader extends EventDispatcher {		private var _imageURL:String;		private var _loader:Loader;				public var sprite:Sprite;		public function ImageLoader( imageURL ) {			_imageURL = imageURL;							}		public function loadImage() {						var request = new URLRequest( _imageURL );						_loader = new Loader();			_loader.load( request );			_loader.contentLoaderInfo.addEventListener( Event.COMPLETE, onLoadComplete );					}		public function onLoadComplete(event:Event):void {						sprite = new Sprite();			sprite.addChild(_loader);			dispatchEvent( new Event(Event.COMPLETE) );					}	}}