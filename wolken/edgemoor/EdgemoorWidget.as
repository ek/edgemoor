﻿package wolken.edgemoor {		//import flash.events.Event;	//import flash.events.EventDispatcher;	import flash.text.TextField;	import flash.display.MovieClip;	import flash.display.LoaderInfo;			public class EdgemoorWidget extends MovieClip {			private var _config:EdgemoorConfig;		private var _loader:EdgemoorLoader;		private var _intro:EdgemoorIntro;		private var _xmlConfigURL:String;		private var _main:EdgemoorMain;			public function EdgemoorWidget() {						var _xmlConfigURL:String = this.loaderInfo.parameters.url;			if( _xmlConfigURL == null ) {				_xmlConfigURL = "edgemoor_config.xml";			}						_config = new EdgemoorConfig( _xmlConfigURL );			_loader = new EdgemoorLoader( _config );			_intro = new EdgemoorIntro( _config, _loader, this );			_main = new EdgemoorMain( _config, _loader, _intro, this );								}		}}