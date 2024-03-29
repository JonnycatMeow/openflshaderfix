package openfl.xml;

#if !flash
@:transitive
@:forward
abstract XML(XMLList) from XMLList from Xml from Dynamic to Dynamic to Xml
{
	public function new(value:String)
	{
		var xml = Xml.parse(value);
		if (xml != null)
		{
			xml = xml.firstElement();
		}
		this = xml;
	}
}
#else
typedef XML = flash.xml.XML;
#end
// package flash.xml;
// extern final class XML implements Dynamic<XMLList> {
// 	function new(?value : Dynamic) : Void;
// 	function addNamespace(ns : Dynamic) : XML;
// 	function appendChild(child : Dynamic) : XML;
// 	function attribute(arg : Dynamic) : XMLList;
// 	function attributes() : XMLList;
// 	function child(propertyName : Dynamic) : XMLList;
// 	function childIndex() : Int;
// 	function children() : XMLList;
// 	function comments() : XMLList;
// 	function contains(value : Dynamic) : Bool;
// 	function copy() : XML;
// 	function descendants(?name : Dynamic) : XMLList;
// 	function elements(?name : Dynamic) : XMLList;
// 	function hasComplexContent() : Bool;
// 	function hasSimpleContent() : Bool;
// 	function inScopeNamespaces() : Array<Dynamic>;
// 	function insertChildAfter(child1 : Dynamic, child2 : Dynamic) : Dynamic;
// 	function insertChildBefore(child1 : Dynamic, child2 : Dynamic) : Dynamic;
// 	function length() : Int;
// 	function localName() : flash.utils.Object;
// 	function name() : flash.utils.Object;
// 	function namespace(?prefix : Dynamic) : flash.utils.Namespace;
// 	function namespaceDeclarations() : Array<Dynamic>;
// 	function nodeKind() : String;
// 	function normalize() : XML;
// 	function notification() : flash.utils.Function;
// 	function parent() : XML;
// 	function prependChild(value : Dynamic) : XML;
// 	function processingInstructions(?name : Dynamic) : XMLList;
// 	function removeNamespace(ns : Dynamic) : XML;
// 	function replace(propertyName : Dynamic, value : Dynamic) : XML;
// 	function setChildren(value : Dynamic) : XML;
// 	function setLocalName(name : Dynamic) : Void;
// 	function setName(name : Dynamic) : Void;
// 	function setNamespace(ns : Dynamic) : Void;
// 	function setNotification(f : flash.utils.Function) : Dynamic;
// 	function text() : XMLList;
// 	@:require(flash11) function toJSON(k : String) : Dynamic;
// 	function toString() : String;
// 	function toXMLString() : String;
// 	function valueOf() : XML;
// 	@:flash.property static var ignoreComments(get,set) : Bool;
// 	@:flash.property static var ignoreProcessingInstructions(get,set) : Bool;
// 	@:flash.property static var ignoreWhitespace(get,set) : Bool;
// 	@:flash.property static var prettyIndent(get,set) : Int;
// 	@:flash.property static var prettyPrinting(get,set) : Bool;
// 	static function defaultSettings() : Dynamic;
// 	private static function get_ignoreComments() : Bool;
// 	private static function get_ignoreProcessingInstructions() : Bool;
// 	private static function get_ignoreWhitespace() : Bool;
// 	private static function get_prettyIndent() : Int;
// 	private static function get_prettyPrinting() : Bool;
// 	static function setSettings(?o : Dynamic) : Void;
// 	private static function set_ignoreComments(value : Bool) : Bool;
// 	private static function set_ignoreProcessingInstructions(value : Bool) : Bool;
// 	private static function set_ignoreWhitespace(value : Bool) : Bool;
// 	private static function set_prettyIndent(value : Int) : Int;
// 	private static function set_prettyPrinting(value : Bool) : Bool;
// 	static function settings() : Dynamic;
// }
