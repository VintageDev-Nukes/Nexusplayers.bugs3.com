/*jslint nomen:false, debug:true, evil:true, vars:false, browser:true, forin:true, undef:false, white:false */
/**
 * Includes a Form with javascript
 * @param {Object} formId
 * @param {Object} initialHeight
 * @param {Object} iframeCode
 */
function FrameBuilder (formId, appendTo, initialHeight, iframeCode){
    this.formId = formId;
    this.initialHeight = initialHeight;
    this.iframeCode = iframeCode;
    this.frame = null;
    this.timeInterval= 200;
    this.appendTo = appendTo || false;
    this.formSubmitted = 0;

    // initialize function for object
    this.init = function(){
        this.createFrame();
        this.addFrameContent(this.iframeCode);
    };
    
    // Create the frame
    this.createFrame = function(){
        var htmlCode = "<"+"iframe src=\"\" allowtransparency=\"true\" frameborder=\"0\" name=\""+this.formId+"\" id=\""+this.formId+"\" style=\"width:100%; height:100%; border:none;\" scrolling=\"no\"></if"+"rame>";
        if(this.appendTo === false){
            document.write(htmlCode);
        }else{
            var tmp = document.createElement('div');
            tmp.innerHTML = htmlCode;
            var a = this.appendTo;
            document.getElementById(a).appendChild(tmp.firstChild);   
            //var form = document.getElementById()         
        }
        // also get the frame for future use.
        this.frame = document.getElementById(this.formId);
        // set the time on the on load event of the frame
        this.addEvent(this.frame, 'load', this.bindMethod(this.setTimer, this));

        var self = this;

        //on chrome to suppress unsafe attempt error this codes break setHeight-time interval loop
        if(window.chrome!==undefined){
            this.frame.onload = function(){
                try{
                    var doc = this.contentWindow.document;

                    var _jotform = this.contentWindow.JotForm;
                    if(doc!==undefined){
                        var form = doc.getElementById(""+self.formId);
                        self.addEvent(form, "submit", function(){
                            if(_jotform.validateAll()){
                                self.formSubmitted=1;
                            }
                        });
                    }
                } catch(e){

                }
            }
        }
    };
    
    // add event function for different browsers
    this.addEvent = function (obj, type, fn) {
        if (obj.attachEvent) {
            obj["e" + type + fn] = fn;
            obj[type + fn] = function () { obj["e" + type + fn](window.event); };
            obj.attachEvent("on" + type, obj[type + fn]);
        }
        else{
            obj.addEventListener(type, fn, false);
        }
    };

    this.addFrameContent = function (string){
        string = string.replace(new RegExp('src\\=\\"[^"]*captcha.php\"><\/scr'+'ipt>', 'gim'), 'src="http://api.recaptcha.net/js/recaptcha_ajax.js"></scr'+'ipt><'+'div id="recaptcha_div"><'+'/div>'+
                '<'+'style>#recaptcha_logo{ display:none;} #recaptcha_tagline{display:none;} #recaptcha_table{border:none !important;} .recaptchatable .recaptcha_image_cell, #recaptcha_table{ background-color:transparent !important; } <'+'/style>'+
                '<'+'script defer="defer"> window.onload = function(){ Recaptcha.create("6Ld9UAgAAAAAAMon8zjt30tEZiGQZ4IIuWXLt1ky", "recaptcha_div", {theme: "clean",tabindex: 0,callback: function (){'+
                'if (document.getElementById("uword")) { document.getElementById("uword").parentNode.removeChild(document.getElementById("uword")); } if (window["validate"] !== undefined) { if (document.getElementById("recaptcha_response_field")){ document.getElementById("recaptcha_response_field").onblur = function(){ validate(document.getElementById("recaptcha_response_field"), "Required"); } } } if (document.getElementById("recaptcha_response_field")){ document.getElementsByName("recaptcha_challenge_field")[0].setAttribute("name", "anum"); } if (document.getElementById("recaptcha_response_field")){ document.getElementsByName("recaptcha_response_field")[0].setAttribute("name", "qCap"); }}})'+
                ' }<'+'/script>');
        string = string.replace(/(type="text\/javascript">)\s+(validate\(\"[^"]*"\);)/, '$1 jTime = setInterval(function(){if("validate" in window){$2clearTimeout(jTime);}}, 1000);');
        var frameDocument = (this.frame.contentWindow) ? this.frame.contentWindow : (this.frame.contentDocument.document) ? this.frame.contentDocument.document : this.frame.contentDocument;
        frameDocument.document.open();
        frameDocument.document.write(string);
        setTimeout( function(){
            frameDocument.document.close();
            try{
                if('JotFormFrameLoaded' in window){
                    JotFormFrameLoaded();
                }
            }catch(e){}
        },200);
    };
    
    this.setTimer = function(){
        var self = this;
        this.interval = setTimeout(function(){self.changeHeight();},this.timeInterval);
    };
    
    this.changeHeight = function (){
        var actualHeight = this.getBodyHeight();
        var currentHeight = this.getViewPortHeight();
        if(actualHeight === undefined){
            this.frame.style.height = "100%";
            if(!this.frame.style.minHeight){
                this.frame.style.minHeight = "300px";
            }
        }else if  (Math.abs(actualHeight - currentHeight) > 18){
            this.frame.style.height = (actualHeight)+"px";
        }

        this.setTimer();
    };
    
    this.bindMethod = function(method, scope) {
        return function() {
            method.apply(scope,arguments);
        };
    };
    
    this.getBodyHeight = function (){

        if(this.formSubmitted===1){
            return;
        }
        var height;
        var scrollHeight;
        var offsetHeight;

        try{  // Prevent IE from throw errors
            if (this.frame.contentWindow.document.height){
                
                height = this.frame.contentWindow.document.height;
                //Emre: to prevent "iframe height"  problem (61059)
                if (this.frame.contentWindow.document.body.scrollHeight){
                    height = scrollHeight = this.frame.contentWindow.document.body.scrollHeight;
                }
                
                if (this.frame.contentWindow.document.body.offsetHeight){
                    height = offsetHeight = this.frame.contentWindow.document.body.offsetHeight;
                }
                
            } else if (this.frame.contentWindow.document.body){
                
                if (this.frame.contentWindow.document.body.scrollHeight){
                    height = scrollHeight = this.frame.contentWindow.document.body.scrollHeight;
                }
                
                if (this.frame.contentWindow.document.body.offsetHeight){
                    height = offsetHeight = this.frame.contentWindow.document.body.offsetHeight;
                }
                
                if (scrollHeight && offsetHeight){
                    height = Math.max(scrollHeight, offsetHeight);
                }
            }            
        }catch(e){ }
        return height;
    };
    
    this.getViewPortHeight = function(){
        
        if(this.formSubmitted===1){
            return;
        }
        var height = 0;
        try{ // Prevent IE from throw errors
            if (this.frame.contentWindow.window.innerHeight)
            {
                height = this.frame.contentWindow.window.innerHeight - 18;
            }
            else if ((this.frame.contentWindow.document.documentElement) &&
                     (this.frame.contentWindow.document.documentElement.clientHeight))
            {
                height = this.frame.contentWindow.document.documentElement.clientHeight;
            }
            else if ((this.frame.contentWindow.document.body) &&
                     (this.frame.contentWindow.document.body.clientHeight))
            {
                height = this.frame.contentWindow.document.body.clientHeight;
            }            
        }catch(e){ }
        return height;
    };
    
    this.init();
}
FrameBuilder.get = [];
var i30877038380357 = new FrameBuilder("30877038380357", false, "", "<!DOCTYPE HTML PUBLIC \"-\/\/W3C\/\/DTD HTML 4.01\/\/EN\" \"http:\/\/www.w3.org\/TR\/html4\/strict.dtd\">\n<html><head>\n<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=utf-8\" \/>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\" \/>\n<meta name=\"HandheldFriendly\" content=\"true\" \/>\n<title>Form<\/title>\n<link href=\"http:\/\/cdn.jotfor.ms\/static\/formCss.css?3.1.2465\" rel=\"stylesheet\" type=\"text\/css\" \/>\n<link type=\"text\/css\" rel=\"stylesheet\" href=\"http:\/\/jotformeu.com\/css\/styles\/industrial_dark.css?3.1.2465\" \/>\n<link type=\"text\/css\" media=\"print\" rel=\"stylesheet\" href=\"http:\/\/jotformeu.com\/css\/printForm.css?3.1.2465\" \/>\n<style type=\"text\/css\">\n    .form-label{\n        width:150px !important;\n    }\n    .form-label-left{\n        width:150px !important;\n    }\n    .form-line{\n        padding-top:12px;\n        padding-bottom:12px;\n    }\n    .form-label-right{\n        width:150px !important;\n    }\n    body, html{\n        margin:0;\n        padding:0;\n        background:url(http:\/\/jotformeu.com\/images\/styles\/style4_2_bg.gif) 50% 0% repeat-x rgb(54, 53, 53);\n    }\n\n    .form-all{\n        margin:0px auto;\n        padding-top:20px;\n        width:650px;\n        background:url(http:\/\/jotformeu.com\/images\/styles\/style4_2_bg.gif) 50% 0% repeat-x rgb(54, 53, 53);\n        color:white !important;\n        font-family:'Trebuchet MS';\n        font-size:12px;\n    }\n<\/style>\n\n<script src=\"http:\/\/cdn.jotfor.ms\/static\/jotform.js?3.1.2465\" type=\"text\/javascript\"><\/script>\n<script type=\"text\/javascript\">\n var jsTime = setInterval(function(){try{\n   JotForm.jsForm = true;\n\n   JotForm.init(function(){\n      JotForm.setCustomHint( 'input_9', 'PVP, Creativo, Factions, Plugins especiales, etc...' );\n   });\n\n   clearInterval(jsTime);\n }catch(e){}}, 1000);\n<\/script>\n<\/head>\n<body>\n<form class=\"jotform-form\" action=\"http:\/\/submit.jotformeu.com\/submit\/30877038380357\/\" method=\"post\" name=\"form_30877038380357\" id=\"30877038380357\" accept-charset=\"utf-8\">\n  <input type=\"hidden\" name=\"formID\" value=\"30877038380357\" \/>\n  <div class=\"form-all\">\n    <ul class=\"form-section\">\n      <li class=\"form-line\" id=\"id_3\">\n        <div id=\"cid_3\" class=\"form-input-wide\">\n          <div id=\"text_3\" class=\"form-html\">\n            <p>\n              <strong>\n                Requisitos para que tu servidor est&eacute; aqu&iacute;:\n              <\/strong>\n            <\/p>\n            <p>\n              <strong>\n                > Que sea 24\/7, es decir que est&eacute; siempre abierto, y nunca cierre.\n              <\/strong>\n            <\/p>\n            <p>\n              <strong>\n                > Que no sea por Hamachi, es decir, que use un host gratuito o de pago.\n              <\/strong>\n            <\/p>\n            <p>\n              <strong>\n                > Que sea No Premium, no es obligatorio, pero se vende mejor. :)\n              <\/strong>\n            <\/p>\n          <\/div>\n        <\/div>\n      <\/li>\n      <li id=\"cid_4\" class=\"form-input-wide\">\n        <div class=\"form-header-group\">\n          <h2 id=\"header_4\" class=\"form-header\">\n            Formulario a rellenar:\n          <\/h2>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_5\">\n        <label class=\"form-label-left\" id=\"label_5\" for=\"input_5\"> IP del Servidor: <\/label>\n        <div id=\"cid_5\" class=\"form-input\">\n          <input type=\"text\" class=\" form-textbox\" id=\"input_5\" name=\"q5_ipDel\" size=\"20\" \/>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_6\">\n        <label class=\"form-label-left\" id=\"label_6\" for=\"input_6\"> Nombre del Servidor: <\/label>\n        <div id=\"cid_6\" class=\"form-input\">\n          <input type=\"text\" class=\" form-textbox\" id=\"input_6\" name=\"q6_nombreDel6\" size=\"20\" \/>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_7\">\n        <label class=\"form-label-left\" id=\"label_7\" for=\"input_7\"> Nombre del Creador: <\/label>\n        <div id=\"cid_7\" class=\"form-input\">\n          <input type=\"text\" class=\" form-textbox\" id=\"input_7\" name=\"q7_nombreDel\" size=\"20\" \/>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_8\">\n        <label class=\"form-label-left\" id=\"label_8\" for=\"input_8\"> Si eres el creador, tu email: <\/label>\n        <div id=\"cid_8\" class=\"form-input\">\n          <input type=\"text\" class=\" form-textbox\" id=\"input_8\" name=\"q8_siEres\" size=\"20\" \/>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_9\">\n        <label class=\"form-label-left\" id=\"label_9\" for=\"input_9\"> Cosas a destacar en tu Servidor: <\/label>\n        <div id=\"cid_9\" class=\"form-input\">\n          <textarea id=\"input_9\" class=\"form-textarea\" name=\"q9_cosasA\" cols=\"40\" rows=\"6\"><\/textarea>\n        <\/div>\n      <\/li>\n      <li class=\"form-line\" id=\"id_2\">\n        <div id=\"cid_2\" class=\"form-input-wide\">\n          <div style=\"margin-left:156px\" class=\"form-buttons-wrapper\">\n            <button id=\"input_2\" type=\"submit\" class=\"form-submit-button\">\n              Enviar\n            <\/button>\n          <\/div>\n        <\/div>\n      <\/li>\n      <li style=\"display:none\">\n        Should be Empty:\n        <input type=\"text\" name=\"website\" value=\"\" \/>\n      <\/li>\n    <\/ul>\n  <\/div>\n  <input type=\"hidden\" id=\"simple_spc\" name=\"simple_spc\" value=\"30877038380357\" \/>\n  <script type=\"text\/javascript\">\n  document.getElementById(\"si\" + \"mple\" + \"_spc\").value = \"30877038380357-30877038380357\";\n  <\/script>\n<\/form><\/body>\n<\/html>\n");
