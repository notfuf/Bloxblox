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

// Register the namespace for the control.
Type.registerNamespace('Roblox.Thumbs');

//
// Define the control properties.
//
Roblox.Thumbs.Image = function(element) { 
    Roblox.Thumbs.Image.initializeBase(this, [element]);
    this._fileExtension = null;
    this._spinnerUrl = null;
    this._delayTime = 6000;
    this._waitTime = 0;
    this._webService = null;
    this._contentID = null;
    this._updateTimeout = null;
    this._spinner = null;
}

//
// Create the prototype for the control.
//
Roblox.Thumbs.Image.prototype = {

    initialize : function() {
        Roblox.Thumbs.Image.callBaseMethod(this, 'initialize');
    },

    dispose : function() {
        if (typeof(this._updateTimeout) !== 'undefined')
            window.clearTimeout(this._updateTimeout);
        Roblox.Thumbs.Image.callBaseMethod(this, 'dispose');
    },

    _showSpinner : function() {
        if (this._spinner !== null)
            return;
        
		this.get_element().style.position = "relative";
		this._spinner = document.createElement("img");
		this._spinner.style.position = "absolute";
		this._spinner.style.left = "0px";
		this._spinner.style.top = "0px";
		this._spinner.style.height = "16px";
		this._spinner.style.width = "16px";
		this._spinner.style.border = 0;
		this._spinner.src = this._spinnerUrl;
		this.get_element().appendChild(this._spinner);
    },
    
    _hideSpinner : function() {
        if (!this._spinner)
            return;
		this.get_element().removeChild(this._spinner);
		this._spinner = null;
    },
    
    _onUpdate : function() {
        
        if (!this._webService)
        {
            this._hideSpinner();
            return;
        }
        this._showSpinner();
        
        var width = this.get_element().style.pixelWidth;
        var height = this.get_element().style.pixelHeight;
        
        var onSuccess = function (result, context) { context._onUrl(result); };
        var onError = function (result, context) { context._onError(result); };
        this._webService.RequestThumbnail(this._contentID, width, height, this._fileExtension, this._thumbnailFormatID, onSuccess, onError, this);
    },

    _onUrl : function (result) {  
        
        if (!this.get_element())
        {
            this._hideSpinner();
            return;
        }

        Roblox.Controls.Image.SetImageSrc(this.get_element(), result.url);
         
        if (!result.final && this._waitTime<=45000)   // Give up after 45 seconds
        {
            // Try again later
            this._delayTime *= 1.5;
            this._waitTime += this._delayTime;
            this._updateTimeout = window.setTimeout(Function.createDelegate(this, this._onUpdate), this._delayTime);
        }
        else
            this._hideSpinner();
    },

    _onError : function (result)
    {
        this._hideSpinner();
    },

    get_thumbnailFormatID: function() {
        return this._thumbnailFormatID;
    },

    set_thumbnailFormatID: function(value) {
        if (this._thumbnailFormatID !== value) {
            this._thumbnailFormatID = value;
            this.raisePropertyChanged('thumbnailFormatID');
        }
    },

    get_fileExtension: function() {
        return this._fileExtension;
    },

    set_fileExtension: function(value) {
        if (this._fileExtension !== value) {
            this._fileExtension = value;
            this.raisePropertyChanged('fileExtension');
        }
    },

    get_spinnerUrl : function() {
        return this._spinnerUrl;
    },

    set_spinnerUrl : function(value) {
        if (this._spinnerUrl !== value) {
            this._spinnerUrl = value;
            this.raisePropertyChanged('spinnerUrl');
        }
    }
}

// Optional descriptor for JSON serialization.
Roblox.Thumbs.Image.descriptor = {
    properties: [ ]
}

// Register the class as a type that inherits from Sys.UI.Control.
Roblox.Thumbs.Image.registerClass('Roblox.Thumbs.Image', Sys.UI.Control);


// Register the namespace for the control.
Type.registerNamespace('Roblox.Thumbs');

//
// Define the control properties.
//
Roblox.Thumbs.AssetImage = function(element) { 
    Roblox.Thumbs.AssetImage.initializeBase(this, [element]);
}

//
// Create the prototype for the control.
//
Roblox.Thumbs.AssetImage.prototype = {

    initialize : function() {
        Roblox.Thumbs.AssetImage.callBaseMethod(this, 'initialize');
        this._webService = Roblox.Thumbs.Asset;
    },

    dispose : function() {
        Roblox.Thumbs.AssetImage.callBaseMethod(this, 'dispose');
    },

    get_assetVersionID : function() {
        return this._contentID;
    },

    set_assetVersionID : function(value) {
        if (this._contentID !== value) {
            this._contentID = value;
            this.raisePropertyChanged('assetVersionID');
        }
    }
}

// Optional descriptor for JSON serialization.
Roblox.Thumbs.AssetImage.descriptor = {
    properties: [ ]
}

// Register the class as a type that inherits from Sys.UI.Control.
Roblox.Thumbs.AssetImage.registerClass('Roblox.Thumbs.AssetImage', Roblox.Thumbs.Image);

Roblox.Thumbs.AssetImage.updateUrl = function(componentID) {
    /// <summary>
    /// This static function (that is intended to be called from script emitted
    /// on the server)
    /// </summary>
    var a = $find(componentID);
    a._onUpdate();
}


if(typeof(Sys)!=='undefined')Sys.Application.notifyScriptLoaded();

}
/*
     FILE ARCHIVED ON 13:35:48 Jun 04, 2009 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 17:31:44 Aug 04, 2025.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
/*
playback timings (ms):
  captures_list: 0.707
  exclusion.robots: 0.027
  exclusion.robots.policy: 0.012
  esindex: 0.011
  cdx.remote: 25.01
  LoadShardBlock: 694.864 (3)
  PetaboxLoader3.datanode: 518.891 (4)
  PetaboxLoader3.resolve: 231.573 (2)
  load_resource: 466.255
*/