﻿// Eversion, the flash interface for YAMJ on the Syabas Embedded Players
// Copyright (C) 2012  Bryan Socha, aka Accident
// Copyright (C) 2015  Diodato

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import api.Popapi;
import api.Duneapi;
import tools.StringUtil;

class ev.Common {
    // system
	public static var evRun:Object=null;						// runtime vars

	// oversight
	public static var overSight:Boolean=false;
	public static var jbmissing:Boolean=false;

	// ev
	public static var evPrompts:Array=null;
	public static var evSettings:Array=null;

	// eskin
	public static var esPrompts:Array=null;
	public static var esSettings:Array=null;
	public static var eskinmaster:Object=null;
	public static var eskincfile:Object=null;

	// index data
	public static var indexes:Array=null;

	public static var count:Number=null;

	// yamj3 core URL
	public static var yamj3CoreURL:String=null;
	public static var yamj3isrunning:Boolean=false;
	public static var yamj3artworkurl:String=null;
	public static var yamj3photourl:String=null;
	public static var yamj3librarypaths:String=null;
	public static var yamj3playerpaths:String=null;
	
    // skin reset.
	public static function reset() {
		delete Common.evRun;
		Common.evRun=null;

		delete Common.evPrompts;
		delete Common.esPrompts;
		delete Common.evSettings;
		delete Common.esSettings;

		Common.evPrompts=null;
		Common.esPrompts=null;
		Common.evSettings=null;
		Common.esSettings=null;

		delete Common.eskinmaster;
		Common.eskinmaster=null;

		delete Common.eskincfile;
		Common.eskincfile=null;

		delete Common.indexes;
		Common.indexes=null;

		Common.count=1;
		Common.overSight=false;
		Common.jbmissing=false;
		
		Common.yamj3CoreURL=null;
		Common.yamj3isrunning=false;
		Common.yamj3artworkurl=null;
		Common.yamj3photourl=null;
		Common.yamj3librarypaths=null;
		Common.yamj3playerpaths=null;
	}

	// setup enviromental variables
	public static function enviroment(parentMC:MovieClip) {
		trace("Setting up enviroment");

		trace(".. resetting globals");
		Common.reset();
		Common.evRun=new Object();
		Common.evRun.hardware=new Object();
		Common.eskinmaster=new Object();
		Common.eskincfile=new Object();

		// root path
		trace(".. run path "+parentMC._url);
		var ttemp=parentMC._url;
		Common.evRun.rootpath=ttemp.substring(0, parentMC._url.lastIndexOf("/"));
		Common.evRun.storagerootpath=StringUtil.remove(Common.evRun.rootpath,"file:///opt/sybhttpd/localhost.drives/");

		trace(".. root path "+Common.evRun.rootpath);
		trace(".. storage root path "+Common.evRun.storagerootpath);

		if(Common.evRun.rootpath=='file:///share/Apps/eversion' || Common.evRun.rootpath=='file:///share/Apps/Eversion') {
			trace(".. oversight install!");
			Common.overSight=true;
		}

		Common.evRun.hardware.cfgmounts='auto';

		Common.evRun.minyamj=3000;
		Common.evRun.evversion="3.0.0.6";
		Common.evRun.evrversion="R3006";
		Common.evRun.updated=false;
		Common.evRun.highperf=false;  // high end chipset

		Popapi.disabled=false;
		Duneapi.disabled=false;
	}
}