package;

import haxe.Json;
import openfl.Assets;

using StringTools;
import sys.FileSystem;
import sys.io.File;
import lime.utils.Assets;


typedef EventData =
{
	var events:Array<Array<EventNote>>; // WELL?!?!?!
	/*
		See "events json model.jsonc"
	 */
}

typedef EventNote =
{
	var strumTime:Float;
	var events:Array<SwagEvent>;
}

// used in JSON file
typedef EventInfo =
{
	var eventName:String;
	var eventDesc:String;
}

typedef SwagEvent =
{
	var eventID:String; // the event ID for the game and folder name
	var params:Array<EventParam>; // array of params to be parsed in the charter
}

typedef EventParam =
{
	var paramName:String;
	var paramID:String;
	var type:String; // "bool", "float", "int", "string"
	var value:Null<Dynamic>; // you know what it is
	var increment:Null<Float>; // can be null, increment for float/int params
	var maxLetters:Null<Int>; // can be null, max letters for string values
	var defaultValue:Dynamic; // default value for anything really
}

class AumSumEvent
{
	public static function load(folder:String, ?mod:String = ""):EventData
	{
		var folderLowercase = StringTools.replace(folder, " ", "-").toLowerCase();

		trace('loading events for ' + folderLowercase);

		var rawJson:Null<String> = null;

		if (!Assets.exists(Paths.json(folderLowercase + '/events')))
			return null;
		rawJson = Assets.getText(Paths.json(folderLowercase + '/events')).trim();

		return parseJSON(rawJson);
	}

	public static function parseJSON(rawJson:Null<String>):Null<EventData>
	{
		if (rawJson == null)
			return null;

		var swagShit:EventData = cast Json.parse(rawJson);
		return swagShit;
	}
}