var _____WB$wombat$assign$function_____ = function(name) {return (self._wb_wombat && self._wb_wombat.local_init && self._wb_wombat.local_init(name)) || self[name]; };
if (!self.__WB_pmw) { self.__WB_pmw = function(obj) { this.__WB_source = obj; return this; } }
{
  let window = _____WB$wombat$assign$function_____("window");
  let self = _____WB$wombat$assign$function_____("self");
  let document = _____WB$wombat$assign$function_____("document");
  let location = _____WB$wombat$assign$function_____("location");
  let top = _____WB$wombat$assign$function_____("top");
  let parent = _____WB$wombat$assign$function_____("parent");
  let frames = _____WB$wombat$assign$function_____("frames");
  let opener = _____WB$wombat$assign$function_____("opener");

(function(){
if(window.a==null)window.a={};window.GS_googleAddAdSenseService=function(a){return b.addService(b.ADSENSE,a)};window.GS_googleEnableAllServices=function(){b.enableAll()};window.GS_googleResetAllServices=function(){window.a={}};window.GS_googleGetIdsForAdSenseService=function(){var a=b.ADSENSE;return b.getIdsForService(a)};window.GS_googleFindService=function(a){return b.findService(a)};function b(a){this.f=a;this.b=[]}b.ADSENSE="adsense";b.ANALYTICS="urchin";b.UNKNOWN="unknown";b.prototype.toString=
function(){var a="["+this.f+" ids: ";for(var c=0;c<this.b.length;c++){if(c>0)a+=",";a+=this.b[c]}a+="]";return a};b.prototype.d=function(){return this.b.join()};b.isValidId=function(a){return a!=null&&typeof a=="string"&&a.length>0};b.newInstance=function(a){return a==b.ADSENSE?new e:new f};b.addService=function(a,c){if(!this.isValidId(c))return null;if(a==null)return null;var d=window.a[a];if(d==null){d=b.newInstance(a);window.a[a]=d}d.c(c);return d};b.prototype.c=function(a){for(var c=0;c<this.b.length;c++)if(a==
this.b[c])return;this.b[this.b.length]=a};b.enableAll=function(){for(var a in window.a){var c=window.a[a];if(typeof c=="function")continue;c.enable()}};b.getCount=function(){var a=0;for(var c in window.a){var d=window.a[c];if(typeof d=="function")continue;a++}return a};b.toString=function(){var a=[];for(var c in window.a){var d=window.a[c];if(typeof d=="function")continue;a.push("Service type="+c);a.push("value="+d.toString())}return a.join()};b.findService=function(a){var c=a==null?null:window.a[a];
return c};b.getIdsForService=function(a){var c=a==null?null:window.a[a];return c==null?"":c.d()};function f(){this.superclass=b;this.superclass(b.UNKNOWN)}f.prototype=new b(b.UNKNOWN);f.prototype.enable=function(){};function e(){this.superclass=b;this.superclass(b.ADSENSE);this.e=false}e.prototype=new b(b.ADSENSE);e.prototype.enable=function(){if(this.e)return;document.write("<script src='https://web.archive.org/web/20080821015852/http://partner.googleadservices.com/gampad/google_ads.js'><\/script>");this.e=true};
})()


}
/*
     FILE ARCHIVED ON 01:58:52 Aug 21, 2008 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 17:52:18 Aug 04, 2025.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
/*
playback timings (ms):
  captures_list: 0.857
  exclusion.robots: 0.027
  exclusion.robots.policy: 0.01
  esindex: 0.014
  cdx.remote: 97.941
  LoadShardBlock: 687.359 (6)
  PetaboxLoader3.datanode: 438.822 (7)
  load_resource: 231.332
  PetaboxLoader3.resolve: 109.435
*/