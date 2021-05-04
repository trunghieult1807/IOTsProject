
// Copyright 2012 Google Inc. All rights reserved.
(function(){

var data = {
"resource": {
  "version":"3",
  
  "macros":[{
      "function":"__e"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"eventType"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"eventName"
    },{
      "function":"__u",
      "vtp_component":"HOST",
      "vtp_enableMultiQueryKeys":false
    },{
      "function":"__u",
      "vtp_component":"QUERY",
      "vtp_enableMultiQueryKeys":false
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(utm_medium=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(utm_source=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(utm_campaign=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(utm_content=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(utm_term=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(dclid=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",4],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key",".*(gclid=[^\u0026\\?]*).*","value","\u0026$1"]]
    },{
      "function":"__c",
      "vtp_value":["template",["macro",5],["macro",6],["macro",7],["macro",8],["macro",9],["macro",10],["macro",11]]
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",12],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_defaultValue":"",
      "vtp_ignoreCase":true,
      "vtp_map":["list",["map","key","\u0026(.*)","value","?$1"]]
    },{
      "function":"__u",
      "vtp_component":"QUERY",
      "vtp_queryKey":"referrer",
      "vtp_enableMultiQueryKeys":false
    },{
      "function":"__uv"
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",14],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_ignoreCase":true,
      "vtp_defaultValue":["macro",15],
      "vtp_map":["list",["map","key","^.*\\\/\\\/[^\\\/]*fire(base|site).*","value",["macro",15]],["map","key","^([^\\?]*).*","value","$1"]]
    },{
      "function":"__smm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",16],
      "vtp_defaultValue":["macro",16],
      "vtp_map":["list",["map","key","","value",["macro",15]],["map","key",["macro",15],"value",["macro",15]]]
    },{
      "function":"__cid"
    },{
      "function":"__ctv"
    },{
      "function":"__c",
      "vtp_value":["template",["macro",18],":",["macro",19]]
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"pageName"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"signedIn"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"internalUser"
    },{
      "function":"__smm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",23],
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key","1","value","True"],["map","key","true","value","True"],["map","key","True","value","True"]]
    },{
      "function":"__c",
      "vtp_value":"UA-130566877-1"
    },{
      "function":"__gas",
      "vtp_cookieDomain":"auto",
      "vtp_doubleClick":false,
      "vtp_setTrackerName":false,
      "vtp_useDebugVersion":false,
      "vtp_fieldsToSet":["list",["map","fieldName","allowLinker","value","true"],["map","fieldName","anonymizeIp","value","true"],["map","fieldName","legacyHistoryImport","value","false"],["map","fieldName","cookieName","value","_ga2"],["map","fieldName","referrer","value",["macro",17]]],
      "vtp_useHashAutoLink":false,
      "vtp_decorateFormsAutoLink":false,
      "vtp_enableLinkId":false,
      "vtp_dimension":["list",["map","index","14","dimension",["macro",20]],["map","index","19","dimension",["macro",1]],["map","index","20","dimension",["macro",2]],["map","index","15","dimension",["macro",21]],["map","index","17","dimension",["macro",22]],["map","index","16","dimension",["macro",24]]],
      "vtp_enableEcommerce":false,
      "vtp_trackingId":["macro",25],
      "vtp_enableRecaptchaOption":false,
      "vtp_enableUaRlsa":false,
      "vtp_enableUseInternalVersion":false
    },{
      "function":"__f",
      "vtp_component":"URL"
    },{
      "function":"__remm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",27],
      "vtp_fullMatch":true,
      "vtp_replaceAfterMatch":true,
      "vtp_defaultValue":"",
      "vtp_ignoreCase":true,
      "vtp_map":["list",["map","key","^([^\\?]*).*","value",["template","$1",["macro",13]]]]
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"metadata"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"experimentType"
    },{
      "function":"__smm",
      "vtp_setDefaultValue":true,
      "vtp_input":["macro",30],
      "vtp_defaultValue":"",
      "vtp_map":["list",["map","key","exp name goes here","value","exp id goes here"]]
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"variant"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":false,
      "vtp_name":"packageName"
    },{
      "function":"__v",
      "vtp_dataLayerVersion":2,
      "vtp_setDefaultValue":true,
      "vtp_defaultValue":"not set",
      "vtp_name":"projectNumber"
    },{
      "function":"__u",
      "vtp_component":"URL",
      "vtp_enableMultiQueryKeys":false
    },{
      "function":"__u",
      "vtp_component":"PATH",
      "vtp_enableMultiQueryKeys":false
    },{
      "function":"__e"
    }],
  "tags":[{
      "function":"__ua",
      "once_per_event":true,
      "vtp_overrideGaSettings":true,
      "vtp_doubleClick":false,
      "vtp_setTrackerName":false,
      "vtp_useDebugVersion":false,
      "vtp_fieldsToSet":["list",["map","fieldName","page","value",["template","\/virtual\/",["macro",1],"\/",["macro",2]]],["map","fieldName","location","value",["template","https:\/\/",["macro",3],"\/virtual\/",["macro",1],"\/",["macro",2],["macro",13]]]],
      "vtp_useHashAutoLink":false,
      "vtp_trackType":"TRACK_PAGEVIEW",
      "vtp_decorateFormsAutoLink":false,
      "vtp_enableLinkId":false,
      "vtp_gaSettings":["macro",26],
      "vtp_enableEcommerce":false,
      "vtp_useInternalVersion":true,
      "vtp_enableRecaptchaOption":false,
      "vtp_enableUaRlsa":false,
      "vtp_enableUseInternalVersion":true,
      "vtp_enableFirebaseCampaignData":true,
      "tag_id":3
    },{
      "function":"__ua",
      "once_per_event":true,
      "vtp_overrideGaSettings":true,
      "vtp_doubleClick":false,
      "vtp_setTrackerName":false,
      "vtp_useDebugVersion":false,
      "vtp_fieldsToSet":["list",["map","fieldName","location","value",["macro",28]]],
      "vtp_useHashAutoLink":false,
      "vtp_trackType":"TRACK_PAGEVIEW",
      "vtp_decorateFormsAutoLink":false,
      "vtp_enableLinkId":false,
      "vtp_gaSettings":["macro",26],
      "vtp_enableEcommerce":false,
      "vtp_useInternalVersion":true,
      "vtp_enableRecaptchaOption":false,
      "vtp_enableUaRlsa":false,
      "vtp_enableUseInternalVersion":true,
      "vtp_enableFirebaseCampaignData":true,
      "tag_id":5
    }],
  "predicates":[{
      "function":"_eq",
      "arg0":["macro",0],
      "arg1":"concordEvent"
    },{
      "function":"_re",
      "arg0":["macro",27],
      "arg1":"^(https:\/\/firebase.google.com\/|.*fernandroid)"
    },{
      "function":"_eq",
      "arg0":["macro",0],
      "arg1":"gtm.js"
    }],
  "rules":[
    [["if",0],["add",0]],
    [["if",1,2],["add",1]]]
},
"runtime":[]




};

/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
var aa,ba=function(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}},ca=function(a){var b="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:ba(a)}},da="function"==typeof Object.create?Object.create:function(a){var b=function(){};b.prototype=a;return new b},ea;
if("function"==typeof Object.setPrototypeOf)ea=Object.setPrototypeOf;else{var ia;a:{var ja={a:!0},ma={};try{ma.__proto__=ja;ia=ma.a;break a}catch(a){}ia=!1}ea=ia?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}
var oa=ea,pa=function(a,b){a.prototype=da(b.prototype);a.prototype.constructor=a;if(oa)oa(a,b);else for(var c in b)if("prototype"!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.ai=b.prototype},qa=this||self,ra=function(a){return a};var sa={},ta=function(a,b){sa[a]=sa[a]||[];sa[a][b]=!0},ua=function(a){for(var b=[],c=sa[a]||[],d=0;d<c.length;d++)c[d]&&(b[Math.floor(d/6)]^=1<<d%6);for(var e=0;e<b.length;e++)b[e]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(b[e]||0);return b.join("")};var va=function(){},wa=function(a){return"function"==typeof a},ya=function(a){return"string"==typeof a},za=function(a){return"number"==typeof a&&!isNaN(a)},Ca=function(a){var b="[object Array]"==Object.prototype.toString.call(Object(a));Array.isArray?Array.isArray(a)!==b&&ta("TAGGING",4):ta("TAGGING",5);return b},Da=function(a,b){if(Array.prototype.indexOf){var c=a.indexOf(b);return"number"==typeof c?c:-1}for(var d=0;d<a.length;d++)if(a[d]===b)return d;return-1},Ea=function(a,b){if(a&&Ca(a))for(var c=
0;c<a.length;c++)if(a[c]&&b(a[c]))return a[c]},Fa=function(a,b){if(!za(a)||!za(b)||a>b)a=0,b=2147483647;return Math.floor(Math.random()*(b-a+1)+a)},Ha=function(a,b){for(var c=new Ga,d=0;d<a.length;d++)c.set(a[d],!0);for(var e=0;e<b.length;e++)if(c.get(b[e]))return!0;return!1},Ka=function(a,b){for(var c in a)Object.prototype.hasOwnProperty.call(a,c)&&b(c,a[c])},La=function(a){return!!a&&("[object Arguments]"==Object.prototype.toString.call(a)||Object.prototype.hasOwnProperty.call(a,"callee"))},Ma=
function(a){return Math.round(Number(a))||0},Na=function(a){return"false"==String(a).toLowerCase()?!1:!!a},Oa=function(a){var b=[];if(Ca(a))for(var c=0;c<a.length;c++)b.push(String(a[c]));return b},Ra=function(a){return a?a.replace(/^\s+|\s+$/g,""):""},Ta=function(){return(new Date).getTime()},Ga=function(){this.prefix="gtm.";this.values={}};Ga.prototype.set=function(a,b){this.values[this.prefix+a]=b};Ga.prototype.get=function(a){return this.values[this.prefix+a]};
var Xa=function(a,b,c){return a&&a.hasOwnProperty(b)?a[b]:c},Ya=function(a){var b=a;return function(){if(b){var c=b;b=void 0;try{c()}catch(d){}}}},Za=function(a,b){for(var c in b)b.hasOwnProperty(c)&&(a[c]=b[c])},$a=function(a){for(var b in a)if(a.hasOwnProperty(b))return!0;return!1},ab=function(a,b){for(var c=[],d=0;d<a.length;d++)c.push(a[d]),c.push.apply(c,b[a[d]]||[]);return c},bb=function(a,b){for(var c={},d=c,e=a.split("."),f=0;f<e.length-1;f++)d=d[e[f]]={};d[e[e.length-1]]=b;return c},cb=/^\w{1,9}$/,
db=function(a){var b=[];Ka(a,function(c,d){cb.test(c)&&d&&b.push(c)});return b.join(",")};/*
 jQuery v1.9.1 (c) 2005, 2012 jQuery Foundation, Inc. jquery.org/license. */
var fb=/\[object (Boolean|Number|String|Function|Array|Date|RegExp)\]/,gb=function(a){if(null==a)return String(a);var b=fb.exec(Object.prototype.toString.call(Object(a)));return b?b[1].toLowerCase():"object"},hb=function(a,b){return Object.prototype.hasOwnProperty.call(Object(a),b)},ib=function(a){if(!a||"object"!=gb(a)||a.nodeType||a==a.window)return!1;try{if(a.constructor&&!hb(a,"constructor")&&!hb(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}for(var b in a);return void 0===
b||hb(a,b)},g=function(a,b){var c=b||("array"==gb(a)?[]:{}),d;for(d in a)if(hb(a,d)){var e=a[d];"array"==gb(e)?("array"!=gb(c[d])&&(c[d]=[]),c[d]=g(e,c[d])):ib(e)?(ib(c[d])||(c[d]={}),c[d]=g(e,c[d])):c[d]=e}return c};var jb=function(a){if(void 0===a||Ca(a)||ib(a))return!0;switch(typeof a){case "boolean":case "number":case "string":case "function":return!0}return!1};var kb=function(){var a=function(b){return{toString:function(){return b}}};return{Df:a("consent"),Ef:a("consent_always_fire"),Ud:a("convert_case_to"),Vd:a("convert_false_to"),Wd:a("convert_null_to"),Xd:a("convert_true_to"),Yd:a("convert_undefined_to"),Kh:a("debug_mode_metadata"),Oa:a("function"),rg:a("instance_name"),ug:a("live_only"),vg:a("malware_disabled"),wg:a("metadata"),Nh:a("original_activity_id"),Oh:a("original_vendor_template_id"),yg:a("once_per_event"),Le:a("once_per_load"),Qh:a("priority_override"),
Rh:a("respected_consent_types"),Qe:a("setup_tags"),Re:a("tag_id"),Se:a("teardown_tags")}}();var Ob;
var Pb=[],Qb=[],Rb=[],Sb=[],Tb=[],Ub={},Vb,Wb,Xb,Yb=function(a,b){var c=a["function"];if(!c)throw Error("Error: No function name given for function call.");var d=Ub[c],e={},f;for(f in a)if(a.hasOwnProperty(f))if(0===f.indexOf("vtp_"))d&&b&&b.We&&b.We(a[f]),e[void 0!==d?f:f.substr(4)]=a[f];else if(f===kb.Ef.toString()&&a[f]){}return void 0!==d?d(e):Ob(c,e,b)},$b=function(a,b,c){c=c||[];var d={},e;for(e in a)a.hasOwnProperty(e)&&(d[e]=Zb(a[e],b,c));return d},Zb=function(a,b,c){if(Ca(a)){var d;switch(a[0]){case "function_id":return a[1];case "list":d=[];for(var e=1;e<a.length;e++)d.push(Zb(a[e],b,c));return d;case "macro":var f=a[1];if(c[f])return;var h=Pb[f];if(!h||b.zd(h))return;c[f]=!0;try{var k=$b(h,b,c);k.vtp_gtmEventId=b.id;
d=Yb(k,b);Xb&&(d=Xb.Mg(d,k))}catch(z){b.kf&&b.kf(z,Number(f)),d=!1}c[f]=!1;return d;case "map":d={};for(var l=1;l<a.length;l+=2)d[Zb(a[l],b,c)]=Zb(a[l+1],b,c);return d;case "template":d=[];for(var n=!1,q=1;q<a.length;q++){var p=Zb(a[q],b,c);Wb&&(n=n||p===Wb.hc);d.push(p)}return Wb&&n?Wb.Pg(d):d.join("");case "escape":d=Zb(a[1],b,c);if(Wb&&Ca(a[1])&&"macro"===a[1][0]&&Wb.hh(a))return Wb.wh(d);d=String(d);for(var r=2;r<a.length;r++)mb[a[r]]&&(d=mb[a[r]](d));return d;case "tag":var u=a[1];if(!Sb[u])throw Error("Unable to resolve tag reference "+
u+".");return d={cf:a[2],index:u};case "zb":var t={arg0:a[2],arg1:a[3],ignore_case:a[5]};t["function"]=a[1];var v=ac(t,b,c),x=!!a[4];return x||2!==v?x!==(1===v):null;default:throw Error("Attempting to expand unknown Value type: "+a[0]+".");}}return a},ac=function(a,b,c){try{return Vb($b(a,b,c))}catch(d){JSON.stringify(a)}return 2};var dc=function(a){function b(r){for(var u=0;u<r.length;u++)d[r[u]]=!0}for(var c=[],d=[],e=bc(a),f=0;f<Qb.length;f++){var h=Qb[f],k=cc(h,e);if(k){for(var l=h.add||[],n=0;n<l.length;n++)c[l[n]]=!0;b(h.block||[])}else null===k&&b(h.block||[]);}for(var q=[],p=0;p<Sb.length;p++)c[p]&&!d[p]&&(q[p]=!0);return q},cc=function(a,b){for(var c=a["if"]||[],d=0;d<c.length;d++){var e=b(c[d]);if(0===e)return!1;if(2===e)return null}for(var f=
a.unless||[],h=0;h<f.length;h++){var k=b(f[h]);if(2===k)return null;if(1===k)return!1}return!0},bc=function(a){var b=[];return function(c){void 0===b[c]&&(b[c]=ac(Rb[c],a));return b[c]}};var ec={Mg:function(a,b){b[kb.Ud]&&"string"===typeof a&&(a=1==b[kb.Ud]?a.toLowerCase():a.toUpperCase());b.hasOwnProperty(kb.Wd)&&null===a&&(a=b[kb.Wd]);b.hasOwnProperty(kb.Yd)&&void 0===a&&(a=b[kb.Yd]);b.hasOwnProperty(kb.Xd)&&!0===a&&(a=b[kb.Xd]);b.hasOwnProperty(kb.Vd)&&!1===a&&(a=b[kb.Vd]);return a}};var m={zb:"_ee",nc:"_syn_or_mod",Sh:"_uei",ed:"_eu",Ph:"_pci",Sc:"event_callback",Yb:"event_timeout",Z:"gtag.config",ra:"gtag.get",qa:"purchase",Ya:"refund",La:"begin_checkout",Wa:"add_to_cart",Xa:"remove_from_cart",Nf:"view_cart",be:"add_to_wishlist",Ca:"view_item",ae:"view_promotion",$d:"select_promotion",Nc:"select_item",Vb:"view_item_list",Zd:"add_payment_info",Mf:"add_shipping_info",Ea:"value_key",Da:"value_callback",ia:"allow_ad_personalization_signals",$c:"restricted_data_processing",pb:"allow_google_signals",
ja:"cookie_expires",sb:"cookie_update",wb:"session_duration",bc:"session_engaged_time",va:"user_properties",Ga:"transport_url",N:"ads_data_redaction",dd:"user_data",Zb:"first_party_collection",B:"ad_storage",H:"analytics_storage",Sd:"region",Td:"wait_for_update"};
m.Ee=[m.qa,m.Ya,m.La,m.Wa,m.Xa,m.Nf,m.be,m.Ca,m.ae,m.$d,m.Vb,m.Nc,m.Zd,m.Mf];m.De=[m.ia,m.pb,m.sb];m.Fe=[m.ja,m.Yb,m.wb,m.bc];var B=function(a){ta("GTM",a)};var Dc=function(a,b){this.m=a;this.defaultValue=void 0===b?!1:b};var Ec=new Dc(1936,!0),Fc=new Dc(364295992),Gc=new Dc(1933);var Hc=function(a,b){var c=function(){};c.prototype=a.prototype;var d=new c;a.apply(d,Array.prototype.slice.call(arguments,1));return d},Ic=function(a){var b=a;return function(){if(b){var c=b;b=null;c()}}};var Jc,Kc=function(){if(void 0===Jc){var a=null,b=qa.trustedTypes;if(b&&b.createPolicy){try{a=b.createPolicy("goog#html",{createHTML:ra,createScript:ra,createScriptURL:ra})}catch(c){qa.console&&qa.console.error(c.message)}Jc=a}else Jc=a}return Jc};var Mc=function(a,b){this.m=b===Lc?a:""};Mc.prototype.toString=function(){return this.m+""};var Lc={};var Nc=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i;var Qc;a:{var Rc=qa.navigator;if(Rc){var Sc=Rc.userAgent;if(Sc){Qc=Sc;break a}}Qc=""}var Tc=function(a){return-1!=Qc.indexOf(a)};var Vc=function(a,b,c){this.m=c===Uc?a:""};Vc.prototype.toString=function(){return this.m.toString()};var Wc=function(a){return a instanceof Vc&&a.constructor===Vc?a.m:"type_error:SafeHtml"},Uc={},Xc=function(a){var b=Kc(),c=b?b.createHTML(a):a;return new Vc(c,null,Uc)},Yc=new Vc(qa.trustedTypes&&qa.trustedTypes.emptyHTML||"",0,Uc);var Zc=function(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}(function(){var a=document.createElement("div"),b=document.createElement("div");b.appendChild(document.createElement("div"));a.appendChild(b);var c=a.firstChild.firstChild;a.innerHTML=Wc(Yc);return!c.parentElement}),$c=function(a,b){if(Zc())for(;a.lastChild;)a.removeChild(a.lastChild);a.innerHTML=Wc(b)},ad=null,bd=/^[\w+/_-]+[=]{0,2}$/,cd=function(a){if(!a.querySelector)return"";var b=a.querySelector("script[nonce]");if(b){var c=
b.nonce||b.getAttribute("nonce");if(c&&bd.test(c))return c}return""};var E=window,G=document,dd=navigator,ed=G.currentScript&&G.currentScript.src,fd=function(a,b){var c=E[a];E[a]=void 0===c?b:c;return E[a]},gd=function(a,b){b&&(a.addEventListener?a.onload=b:a.onreadystatechange=function(){a.readyState in{loaded:1,complete:1}&&(a.onreadystatechange=null,b())})},hd=function(a,b,c){var d=G.createElement("script");d.type="text/javascript";d.async=!0;var e,f=Kc(),h=f?f.createScriptURL(a):a;e=new Mc(h,Lc);d.src=e instanceof Mc&&e.constructor===Mc?e.m:"type_error:TrustedResourceUrl";
var k;var l=d.ownerDocument&&d.ownerDocument.defaultView;l&&l!=qa?k=cd(l.document):(null===ad&&(ad=cd(qa.document)),k=ad);var n=k;n&&d.setAttribute("nonce",n);gd(d,b);c&&(d.onerror=c);var q=G.getElementsByTagName("script")[0]||G.body||G.head;q.parentNode.insertBefore(d,q);return d},id=function(){if(ed){var a=ed.toLowerCase();if(0===a.indexOf("https://"))return 2;if(0===a.indexOf("http://"))return 3}return 1},jd=function(a,b){var c=G.createElement("iframe");c.height="0";c.width="0";c.style.display=
"none";c.style.visibility="hidden";var d=G.body&&G.body.lastChild||G.body||G.head;d.parentNode.insertBefore(c,d);gd(c,b);void 0!==a&&(c.src=a);return c},kd=function(a,b,c){var d=new Image(1,1);d.onload=function(){d.onload=null;b&&b()};d.onerror=function(){d.onerror=null;c&&c()};d.src=a;return d},ld=function(a,b,c,d){a.addEventListener?a.addEventListener(b,c,!!d):a.attachEvent&&a.attachEvent("on"+b,c)},md=function(a,b,c){a.removeEventListener?a.removeEventListener(b,c,!1):a.detachEvent&&a.detachEvent("on"+
b,c)},I=function(a){E.setTimeout(a,0)},pd=function(a,b){return a&&b&&a.attributes&&a.attributes[b]?a.attributes[b].value:null},qd=function(a){var b=a.innerText||a.textContent||"";b&&" "!=b&&(b=b.replace(/^[\s\xa0]+|[\s\xa0]+$/g,""));b&&(b=b.replace(/(\xa0+|\s{2,}|\n|\r\t)/g," "));return b},rd=function(a){var b=G.createElement("div"),c=Xc("A<div>"+a+"</div>");$c(b,c);b=b.lastChild;for(var d=[];b.firstChild;)d.push(b.removeChild(b.firstChild));return d},sd=function(a,b,c){c=c||100;for(var d={},e=0;e<
b.length;e++)d[b[e]]=!0;for(var f=a,h=0;f&&h<=c;h++){if(d[String(f.tagName).toLowerCase()])return f;f=f.parentElement}return null},td=function(a){dd.sendBeacon&&dd.sendBeacon(a)||kd(a)},ud=function(a,b){var c=a[b];c&&"string"===typeof c.animVal&&(c=c.animVal);return c};var vd=function(){var a={};this.m=function(b,c){return null!=a[b]?a[b]:c};this.o=function(){a[Gc.m]=!0}};vd.m=void 0;vd.o=function(){return vd.m?vd.m:vd.m=new vd};var wd=function(a){return vd.o().m(a.m,a.defaultValue)};var xd=[];function yd(){var a=fd("google_tag_data",{});a.ics||(a.ics={entries:{},set:zd,update:Ad,addListener:Bd,notifyListeners:Cd,active:!1,usedDefault:!1});return a.ics}
function zd(a,b,c,d,e,f){var h=yd();h.active=!0;h.usedDefault=!0;if(void 0!=b){var k=h.entries,l=k[a]||{},n=l.region,q=c&&ya(c)?c.toUpperCase():void 0;d=d.toUpperCase();e=e.toUpperCase();if(""===d||q===e||(q===d?n!==e:!q&&!n)){var p=!!(f&&0<f&&void 0===l.update),r={region:q,initial:"granted"===b,update:l.update,quiet:p};if(""!==d||!1!==l.initial)k[a]=r;p&&E.setTimeout(function(){k[a]===r&&r.quiet&&(r.quiet=!1,Dd(a),Cd(),ta("TAGGING",2))},f)}}}
function Ad(a,b){var c=yd();c.active=!0;if(void 0!=b){var d=Ed(a),e=c.entries,f=e[a]=e[a]||{};f.update="granted"===b;var h=Ed(a);f.quiet?(f.quiet=!1,Dd(a)):h!==d&&Dd(a)}}function Bd(a,b){xd.push({Ye:a,Xg:b})}function Dd(a){for(var b=0;b<xd.length;++b){var c=xd[b];Ca(c.Ye)&&-1!==c.Ye.indexOf(a)&&(c.pf=!0)}}function Cd(a){for(var b=0;b<xd.length;++b){var c=xd[b];if(c.pf){c.pf=!1;try{c.Xg({Xe:a})}catch(d){}}}}
var Ed=function(a){var b=yd().entries[a]||{};return void 0!==b.update?b.update:void 0!==b.initial?b.initial:void 0},Fd=function(a){return(yd().entries[a]||{}).initial},Gd=function(a){return!(yd().entries[a]||{}).quiet},Hd=function(){return wd(Gc)?yd().active:!1},Id=function(){return yd().usedDefault},Jd=function(a,b){yd().addListener(a,b)},Kd=function(a,b){function c(){for(var e=0;e<b.length;e++)if(!Gd(b[e]))return!0;return!1}if(c()){var d=!1;Jd(b,function(e){d||c()||(d=!0,a(e))})}else a({})},Ld=
function(a,b){if(!1===Ed(b)){var c=!1;Jd([b],function(d){!c&&Ed(b)&&(a(d),c=!0)})}};function Md(a){for(var b=[],c=0;c<Nd.length;c++){var d=a(Nd[c]);b[c]=!0===d?"1":!1===d?"0":"-"}return b.join("")}
var Nd=[m.B,m.H],Od=function(a){var b=a[m.Sd];b&&B(40);var c=a[m.Td];c&&B(41);for(var d=Ca(b)?b:[b],e=0;e<d.length;++e)for(var f in a)if(a.hasOwnProperty(f)&&f!==m.Sd&&f!==m.Td)if(-1<Da(Nd,f)){var h=f,k=a[f],l=d[e];yd().set(h,k,l,"VN","VN-SG",c)}else{}},Pd=function(a,b){for(var c in a)if(a.hasOwnProperty(c))if(-1<
Da(Nd,c)){var d=c,e=a[c];yd().update(d,e)}else{}yd().notifyListeners(b)},J=function(a){var b=Ed(a);return void 0!=b?b:!0},Qd=function(){return"G1"+Md(Ed)},Rd=function(a,b){Kd(a,b)};var Td=function(a){return Sd?G.querySelectorAll(a):null},Ud=function(a,b){if(!Sd)return null;if(Element.prototype.closest)try{return a.closest(b)}catch(e){return null}var c=Element.prototype.matches||Element.prototype.webkitMatchesSelector||Element.prototype.mozMatchesSelector||Element.prototype.msMatchesSelector||Element.prototype.oMatchesSelector,d=a;if(!G.documentElement.contains(d))return null;do{try{if(c.call(d,b))return d}catch(e){break}d=d.parentElement||d.parentNode}while(null!==d&&1===d.nodeType);
return null},Vd=!1;if(G.querySelectorAll)try{var Wd=G.querySelectorAll(":root");Wd&&1==Wd.length&&Wd[0]==G.documentElement&&(Vd=!0)}catch(a){}var Sd=Vd;var Xd=function(a){if(G.hidden)return!0;var b=a.getBoundingClientRect();if(b.top==b.bottom||b.left==b.right||!E.getComputedStyle)return!0;var c=E.getComputedStyle(a,null);if("hidden"===c.visibility)return!0;for(var d=a,e=c;d;){if("none"===e.display)return!0;var f=e.opacity,h=e.filter;if(h){var k=h.indexOf("opacity(");0<=k&&(h=h.substring(k+8,h.indexOf(")",k)),"%"==h.charAt(h.length-1)&&(h=h.substring(0,h.length-1)),f=Math.min(h,f))}if(void 0!==f&&0>=f)return!0;(d=d.parentElement)&&(e=E.getComputedStyle(d,
null))}return!1};var fe=/:[0-9]+$/,ge=function(a,b,c){for(var d=a.split("&"),e=0;e<d.length;e++){var f=d[e].split("=");if(decodeURIComponent(f[0]).replace(/\+/g," ")===b){var h=f.slice(1).join("=");return c?h:decodeURIComponent(h).replace(/\+/g," ")}}},me=function(a,b,c,d,e){b&&(b=String(b).toLowerCase());if("protocol"===b||"port"===b)a.protocol=ke(a.protocol)||ke(E.location.protocol);"port"===b?a.port=String(Number(a.hostname?a.port:E.location.port)||("http"==a.protocol?80:"https"==a.protocol?443:"")):"host"===b&&
(a.hostname=(a.hostname||E.location.hostname).replace(fe,"").toLowerCase());return le(a,b,c,d,e)},le=function(a,b,c,d,e){var f,h=ke(a.protocol);b&&(b=String(b).toLowerCase());switch(b){case "url_no_fragment":f=ne(a);break;case "protocol":f=h;break;case "host":f=a.hostname.replace(fe,"").toLowerCase();if(c){var k=/^www\d*\./.exec(f);k&&k[0]&&(f=f.substr(k[0].length))}break;case "port":f=String(Number(a.port)||("http"==h?80:"https"==h?443:""));break;case "path":a.pathname||a.hostname||ta("TAGGING",
1);f="/"==a.pathname.substr(0,1)?a.pathname:"/"+a.pathname;var l=f.split("/");0<=Da(d||[],l[l.length-1])&&(l[l.length-1]="");f=l.join("/");break;case "query":f=a.search.replace("?","");e&&(f=ge(f,e,void 0));break;case "extension":var n=a.pathname.split(".");f=1<n.length?n[n.length-1]:"";f=f.split("/")[0];break;case "fragment":f=a.hash.replace("#","");break;default:f=a&&a.href}return f},ke=function(a){return a?a.replace(":","").toLowerCase():""},ne=function(a){var b="";if(a&&a.href){var c=a.href.indexOf("#");
b=0>c?a.href:a.href.substr(0,c)}return b},oe=function(a){var b=G.createElement("a");a&&(b.href=a);var c=b.pathname;"/"!==c[0]&&(a||ta("TAGGING",1),c="/"+c);var d=b.hostname.replace(fe,"");return{href:b.href,protocol:b.protocol,host:b.host,hostname:d,pathname:c,search:b.search,hash:b.hash,port:b.port}},pe=function(a){function b(n){var q=n.split("=")[0];return 0>d.indexOf(q)?n:q+"=0"}function c(n){return n.split("&").map(b).filter(function(q){return void 0!=q}).join("&")}var d="gclid dclid gbraid wbraid gclaw gcldc gclha gclgf gclgb _gl".split(" "),
e=oe(a),f=a.split(/[?#]/)[0],h=e.search,k=e.hash;"?"===h[0]&&(h=h.substring(1));"#"===k[0]&&(k=k.substring(1));h=c(h);k=c(k);""!==h&&(h="?"+h);""!==k&&(k="#"+k);var l=""+f+h+k;"/"===l[l.length-1]&&(l=l.substring(0,l.length-1));return l};var qe=new RegExp(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}/i),re=new RegExp(/support|noreply/i),se="SCRIPT STYLE IMG SVG PATH BR".split(" "),te=["BR"];function ue(a){var b;if(a===G.body)b="body";else{var c;if(a.id)c="#"+a.id;else{var d;if(a.parentElement){var e;a:{var f=a.parentElement;if(f){for(var h=0;h<f.childElementCount;h++)if(f.children[h]===a){e=h+1;break a}e=-1}else e=1}d=ue(a.parentElement)+">:nth-child("+e+")"}else d="";c=d}b=c}return b}
function ve(a,b){if(1>=a.length)return a;var c=a.filter(b);return 0==c.length?a:c}function we(a){if(0==a.length)return null;var b;b=ve(a,function(c){return!re.test(c.Lc)});b=ve(b,function(c){return"INPUT"===c.element.tagName.toUpperCase()});b=ve(b,function(c){return!Xd(c.element)});return b[0]}
function xe(){var a;var b=[],c=G.body;if(c){for(var d=c.querySelectorAll("*"),e=0;e<d.length&&1E4>e;e++){var f=d[e];if(!(0<=se.indexOf(f.tagName.toUpperCase()))){for(var h=!1,k=0;k<f.childElementCount&&1E4>k;k++)if(!(0<=te.indexOf(f.children[k].tagName.toUpperCase()))){h=!0;break}h||b.push(f)}}a={elements:b,status:1E4<d.length?"2":"1"}}else a={elements:b,status:"4"};for(var l=a,n=l.elements,q=[],p=0;p<n.length;p++){var r=n[p],u=r.textContent;r.value&&(u=r.value);if(u){var t=u.match(qe);if(t){var v=
t[0],x;if(E.location){var z=le(E.location,"host",!0);x=0<=v.toLowerCase().indexOf(z)}else x=!1;x||q.push({element:r,Lc:v})}}}var w=we(q),y=[];if(w){var A=w.element;y.push({Lc:w.Lc,querySelector:ue(A),tagName:A.tagName,isVisible:!Xd(A),type:1,jf:!0})}return{elements:y,status:10<q.length?"3":l.status}}var Le={},L=null,Me=Math.random();Le.D="GTM-KFPLMHC";Le.mc="4l3";Le.Mh="";Le.Gf="ChEI8PizhAYQvKqcjJHGy//0ARIkAKCSs4ck1uCJWfaQcqJVvQJrEvxu4HN3qTORF3SbSBMXXbpJGgItlQ\x3d\x3d";var Ne={__cl:!0,__ecl:!0,__ehl:!0,__evl:!0,__fal:!0,__fil:!0,__fsl:!0,__hl:!0,__jel:!0,__lcl:!0,__sdl:!0,__tl:!0,__ytl:!0},Oe={__paused:!0,__tg:!0},Pe;for(Pe in Ne)Ne.hasOwnProperty(Pe)&&(Oe[Pe]=!0);var Qe="www.googletagmanager.com/gtm.js";
var Re=Qe,Se=Na(""),Te=null,Ue=null,Ve="//www.googletagmanager.com/a?id="+Le.D+"&cv=3",We={},Xe={},Ye=function(){var a=L.sequence||1;L.sequence=a+1;return a};Le.Ff="";var Ze={},$e=new Ga,af={},bf={},ef={name:"dataLayer",set:function(a,b){g(bb(a,b),af);cf()},get:function(a){return df(a,2)},reset:function(){$e=new Ga;af={};cf()}},df=function(a,b){return 2!=b?$e.get(a):ff(a)},ff=function(a){var b,c=a.split(".");b=b||[];for(var d=af,e=0;e<c.length;e++){if(null===d)return!1;if(void 0===d)break;d=d[c[e]];if(-1!==Da(b,d))return}return d},gf=function(a,b){bf.hasOwnProperty(a)||($e.set(a,b),g(bb(a,b),af),cf())},cf=function(a){Ka(bf,function(b,c){$e.set(b,c);g(bb(b,
void 0),af);g(bb(b,c),af);a&&delete bf[b]})},jf=function(a,b,c){Ze[a]=Ze[a]||{};Ze[a][b]=hf(b,c)},hf=function(a,b){var c,d=1!==(void 0===b?2:b)?ff(a):$e.get(a);"array"===gb(d)||"object"===gb(d)?c=g(d):c=d;return c},kf=function(a,b){if(Ze[a])return Ze[a][b]},lf=function(a,b){Ze[a]&&delete Ze[a][b]};var of={},pf=function(a,b){if(E._gtmexpgrp&&E._gtmexpgrp.hasOwnProperty(a))return E._gtmexpgrp[a];void 0===of[a]&&(of[a]=Math.floor(Math.random()*b));return of[a]};var qf=function(a){var b=1,c,d,e;if(a)for(b=0,d=a.length-1;0<=d;d--)e=a.charCodeAt(d),b=(b<<6&268435455)+e+(e<<14),c=b&266338304,b=0!=c?b^c>>21:b;return b};function rf(a,b,c){for(var d=[],e=b.split(";"),f=0;f<e.length;f++){var h=e[f].split("="),k=h[0].replace(/^\s*|\s*$/g,"");if(k&&k==a){var l=h.slice(1).join("=").replace(/^\s*|\s*$/g,"");l&&c&&(l=decodeURIComponent(l));d.push(l)}}return d};function sf(a){return wd(Fc)?"null"!==a.origin:!0};var vf=function(a,b,c,d){return tf(d)?rf(a,String(b||uf()),c):[]},yf=function(a,b,c,d,e){if(tf(e)){var f=wf(a,d,e);if(1===f.length)return f[0].id;if(0!==f.length){f=xf(f,function(h){return h.wc},b);if(1===f.length)return f[0].id;f=xf(f,function(h){return h.Mb},c);return f[0]?f[0].id:void 0}}};function zf(a,b,c,d){var e=uf(),f=window;sf(f)&&(f.document.cookie=a);var h=uf();return e!=h||void 0!=c&&0<=vf(b,h,!1,d).indexOf(c)}
var Df=function(a,b,c){function d(u,t,v){if(null==v)return delete h[t],u;h[t]=v;return u+"; "+t+"="+v}function e(u,t){if(null==t)return delete h[t],u;h[t]=!0;return u+"; "+t}if(!tf(c.Aa))return 2;var f;void 0==b?f=a+"=deleted; expires="+(new Date(0)).toUTCString():(c.encode&&(b=encodeURIComponent(b)),b=Af(b),f=a+"="+b);var h={};f=d(f,"path",c.path);var k;c.expires instanceof Date?k=c.expires.toUTCString():null!=c.expires&&(k=""+c.expires);f=d(f,"expires",k);f=d(f,"max-age",c.Yh);f=d(f,"samesite",
c.Zh);c.$h&&(f=e(f,"secure"));var l=c.domain;if("auto"===l){for(var n=Bf(),q=0;q<n.length;++q){var p="none"!==n[q]?n[q]:void 0,r=d(f,"domain",p);r=e(r,c.flags);if(!Cf(p,c.path)&&zf(r,a,b,c.Aa))return 0}return 1}l&&"none"!==l&&(f=d(f,"domain",l));f=e(f,c.flags);return Cf(l,c.path)?1:zf(f,a,b,c.Aa)?0:1},Ef=function(a,b,c){null==c.path&&(c.path="/");c.domain||(c.domain="auto");return Df(a,b,c)};
function xf(a,b,c){for(var d=[],e=[],f,h=0;h<a.length;h++){var k=a[h],l=b(k);l===c?d.push(k):void 0===f||l<f?(e=[k],f=l):l===f&&e.push(k)}return 0<d.length?d:e}function wf(a,b,c){for(var d=[],e=vf(a,void 0,void 0,c),f=0;f<e.length;f++){var h=e[f].split("."),k=h.shift();if(!b||-1!==b.indexOf(k)){var l=h.shift();l&&(l=l.split("-"),d.push({id:h.join("."),wc:1*l[0]||1,Mb:1*l[1]||1}))}}return d}
var Af=function(a){a&&1200<a.length&&(a=a.substring(0,1200));return a},Kf=/^(www\.)?google(\.com?)?(\.[a-z]{2})?$/,Lf=/(^|\.)doubleclick\.net$/i,Cf=function(a,b){return Lf.test(window.document.location.hostname)||"/"===b&&Kf.test(a)},uf=function(){return sf(window)?window.document.cookie:""},Bf=function(){var a=[],b=window.document.location.hostname.split(".");if(4===b.length){var c=b[b.length-1];if(parseInt(c,10).toString()===c)return["none"]}for(var d=b.length-2;0<=d;d--)a.push(b.slice(d).join("."));
var e=window.document.location.hostname;Lf.test(e)||Kf.test(e)||a.push("none");return a},tf=function(a){if(!wd(Gc)||!a||!Hd())return!0;if(!Gd(a))return!1;var b=Ed(a);return null==b?!0:!!b};var Mf=function(a,b){a.addEventListener&&a.addEventListener.call(a,"message",b,!1)};var Nf=function(){return Tc("iPhone")&&!Tc("iPod")&&!Tc("iPad")};Tc("Opera");Tc("Trident")||Tc("MSIE");Tc("Edge");!Tc("Gecko")||-1!=Qc.toLowerCase().indexOf("webkit")&&!Tc("Edge")||Tc("Trident")||Tc("MSIE")||Tc("Edge");-1!=Qc.toLowerCase().indexOf("webkit")&&!Tc("Edge")&&Tc("Mobile");Tc("Macintosh");Tc("Windows");Tc("Linux")||Tc("CrOS");var Of=qa.navigator||null;Of&&(Of.appVersion||"").indexOf("X11");Tc("Android");Nf();Tc("iPad");Tc("iPod");Nf()||Tc("iPad")||Tc("iPod");Qc.toLowerCase().indexOf("kaios");var Pf=function(){if(!E.crypto)return Math.random();try{var a=new Uint32Array(1);E.crypto.getRandomValues(a);return a[0]/65536/65536}catch(b){return Math.random()}},Qf=function(a,b){for(var c=a,d=0;50>d;++d){var e;try{e=!(!c.frames||!c.frames[b])}catch(k){e=!1}if(e)return c;var f;a:{try{var h=c.parent;if(h&&h!=c){f=h;break a}}catch(k){}f=null}if(!(c=f))break}return null};var Rf=function(a,b){for(var c=Math.round(2147483647*(b?Pf():Math.random())),d=sf(E)?G.cookie:null,e=""+(a?"":dd.userAgent)+(d||"")+(G.referrer||""),f=e.length,h=E.history.length;0<h;)e+=h--^f++;return[c^qf(e)&2147483647,Math.round(Ta()/1E3)].join(".")},Uf=function(a,b,c,d,e){var f=Sf(b);return yf(a,f,Tf(c),d,e)},Vf=function(a,b,c,d){var e=""+Sf(c),f=Tf(d);1<f&&(e+="-"+f);return[b,e,a].join(".")},Sf=function(a){if(!a)return 1;a=0===a.indexOf(".")?a.substr(1):a;return a.split(".").length},Tf=function(a){if(!a||
"/"===a)return 1;"/"!==a[0]&&(a="/"+a);"/"!==a[a.length-1]&&(a+="/");return a.split("/").length-1};function Wf(a,b,c){var d,e=Number(null!=a.ib?a.ib:void 0);0!==e&&(d=new Date((b||Ta())+1E3*(e||7776E3)));return{path:a.path,domain:a.domain,flags:a.flags,encode:!!c,expires:d}};var Xf=["1"],Yf={},ag=function(a){var b=Zf(a.prefix),c=Yf[b];c&&$f(b,c,a)},cg=function(a){var b=Zf(a.prefix);if(!Yf[b]&&!bg(b,a.path,a.domain)){var c=Rf();if(0===$f(b,c,a)){var d=fd("google_tag_data",{});d._gcl_au?ta("GTM",57):d._gcl_au=c}bg(b,a.path,a.domain)}};function $f(a,b,c){var d=Vf(b,"1",c.domain,c.path),e=Wf(c);e.Aa="ad_storage";return Ef(a,d,e)}function bg(a,b,c){var d=Uf(a,b,c,Xf,"ad_storage");d&&(Yf[a]=d);return d}function Zf(a){return(a||"_gcl")+"_au"};var dg=function(a){for(var b=[],c=G.cookie.split(";"),d=new RegExp("^\\s*"+(a||"_gac")+"_(UA-\\d+-\\d+)=\\s*(.+?)\\s*$"),e=0;e<c.length;e++){var f=c[e].match(d);f&&b.push({Od:f[1],value:f[2],timestamp:Number(f[2].split(".")[1])||0})}b.sort(function(h,k){return k.timestamp-h.timestamp});return b};
function eg(a,b){var c=dg(a),d={};if(!c||!c.length)return d;for(var e=0;e<c.length;e++){var f=c[e].value.split(".");if(!("1"!==f[0]||b&&3>f.length||!b&&3!==f.length)&&Number(f[1])){d[c[e].Od]||(d[c[e].Od]=[]);var h={version:f[0],timestamp:1E3*Number(f[1]),da:f[2]};b&&3<f.length&&(h.labels=f.slice(3));d[c[e].Od].push(h)}}return d};function fg(){for(var a=gg,b={},c=0;c<a.length;++c)b[a[c]]=c;return b}function hg(){var a="ABCDEFGHIJKLMNOPQRSTUVWXYZ";a+=a.toLowerCase()+"0123456789-_";return a+"."}var gg,ig;
function jg(a){function b(l){for(;d<a.length;){var n=a.charAt(d++),q=ig[n];if(null!=q)return q;if(!/^[\s\xa0]*$/.test(n))throw Error("Unknown base64 encoding at char: "+n);}return l}gg=gg||hg();ig=ig||fg();for(var c="",d=0;;){var e=b(-1),f=b(0),h=b(64),k=b(64);if(64===k&&-1===e)return c;c+=String.fromCharCode(e<<2|f>>4);64!=h&&(c+=String.fromCharCode(f<<4&240|h>>2),64!=k&&(c+=String.fromCharCode(h<<6&192|k)))}};var kg;var og=function(){var a=lg,b=mg,c=ng(),d=function(h){a(h.target||h.srcElement||{})},e=function(h){b(h.target||h.srcElement||{})};if(!c.init){ld(G,"mousedown",d);ld(G,"keyup",d);ld(G,"submit",e);var f=HTMLFormElement.prototype.submit;HTMLFormElement.prototype.submit=function(){b(this);f.call(this)};c.init=!0}},pg=function(a,b,c,d,e){var f={callback:a,domains:b,fragment:2===c,placement:c,forms:d,sameHost:e};ng().decorators.push(f)},qg=function(a,b,c){for(var d=ng().decorators,e={},f=0;f<d.length;++f){var h=
d[f],k;if(k=!c||h.forms)a:{var l=h.domains,n=a,q=!!h.sameHost;if(l&&(q||n!==G.location.hostname))for(var p=0;p<l.length;p++)if(l[p]instanceof RegExp){if(l[p].test(n)){k=!0;break a}}else if(0<=n.indexOf(l[p])||q&&0<=l[p].indexOf(n)){k=!0;break a}k=!1}if(k){var r=h.placement;void 0==r&&(r=h.fragment?2:1);r===b&&Za(e,h.callback())}}return e},ng=function(){var a=fd("google_tag_data",{}),b=a.gl;b&&b.decorators||(b={decorators:[]},a.gl=b);return b};var rg=/(.*?)\*(.*?)\*(.*)/,sg=/^https?:\/\/([^\/]*?)\.?cdn\.ampproject\.org\/?(.*)/,tg=/^(?:www\.|m\.|amp\.)+/,ug=/([^?#]+)(\?[^#]*)?(#.*)?/;function vg(a){return new RegExp("(.*?)(^|&)"+a+"=([^&]*)&?(.*)")}
var xg=function(a){var b=[],c;for(c in a)if(a.hasOwnProperty(c)){var d=a[c];if(void 0!==d&&d===d&&null!==d&&"[object Object]"!==d.toString()){b.push(c);var e=b,f=e.push,h,k=String(d);gg=gg||hg();ig=ig||fg();for(var l=[],n=0;n<k.length;n+=3){var q=n+1<k.length,p=n+2<k.length,r=k.charCodeAt(n),u=q?k.charCodeAt(n+1):0,t=p?k.charCodeAt(n+2):0,v=r>>2,x=(r&3)<<4|u>>4,z=(u&15)<<2|t>>6,w=t&63;p||(w=64,q||(z=64));l.push(gg[v],gg[x],gg[z],gg[w])}h=l.join("");f.call(e,h)}}var y=b.join("*");return["1",wg(y),
y].join("*")},wg=function(a,b){var c=[window.navigator.userAgent,(new Date).getTimezoneOffset(),window.navigator.userLanguage||window.navigator.language,Math.floor((new Date).getTime()/60/1E3)-(void 0===b?0:b),a].join("*"),d;if(!(d=kg)){for(var e=Array(256),f=0;256>f;f++){for(var h=f,k=0;8>k;k++)h=h&1?h>>>1^3988292384:h>>>1;e[f]=h}d=e}kg=d;for(var l=4294967295,n=0;n<c.length;n++)l=l>>>8^kg[(l^c.charCodeAt(n))&255];return((l^-1)>>>0).toString(36)},zg=function(){return function(a){var b=oe(E.location.href),
c=b.search.replace("?",""),d=ge(c,"_gl",!0)||"";a.query=yg(d)||{};var e=me(b,"fragment").match(vg("_gl"));a.fragment=yg(e&&e[3]||"")||{}}},Ag=function(a){var b=zg(),c=ng();c.data||(c.data={query:{},fragment:{}},b(c.data));var d={},e=c.data;e&&(Za(d,e.query),a&&Za(d,e.fragment));return d},yg=function(a){var b;b=void 0===b?3:b;try{if(a){var c;a:{for(var d=a,e=0;3>e;++e){var f=rg.exec(d);if(f){c=f;break a}d=decodeURIComponent(d)}c=void 0}var h=c;if(h&&"1"===h[1]){var k=h[3],l;a:{for(var n=h[2],q=0;q<
b;++q)if(n===wg(k,q)){l=!0;break a}l=!1}if(l){for(var p={},r=k?k.split("*"):[],u=0;u<r.length;u+=2)p[r[u]]=jg(r[u+1]);return p}}}}catch(t){}};function Bg(a,b,c,d){function e(q){var p=q,r=vg(a).exec(p),u=p;if(r){var t=r[2],v=r[4];u=r[1];v&&(u=u+t+v)}q=u;var x=q.charAt(q.length-1);q&&"&"!==x&&(q+="&");return q+n}d=void 0===d?!1:d;var f=ug.exec(c);if(!f)return"";var h=f[1],k=f[2]||"",l=f[3]||"",n=a+"="+b;d?l="#"+e(l.substring(1)):k="?"+e(k.substring(1));return""+h+k+l}
function Cg(a,b){var c="FORM"===(a.tagName||"").toUpperCase(),d=qg(b,1,c),e=qg(b,2,c),f=qg(b,3,c);if($a(d)){var h=xg(d);c?Dg("_gl",h,a):Eg("_gl",h,a,!1)}if(!c&&$a(e)){var k=xg(e);Eg("_gl",k,a,!0)}for(var l in f)if(f.hasOwnProperty(l))a:{var n=l,q=f[l],p=a;if(p.tagName){if("a"===p.tagName.toLowerCase()){Eg(n,q,p,void 0);break a}if("form"===p.tagName.toLowerCase()){Dg(n,q,p);break a}}"string"==typeof p&&Bg(n,q,p,void 0)}}
function Eg(a,b,c,d){if(c.href){var e=Bg(a,b,c.href,void 0===d?!1:d);Nc.test(e)&&(c.href=e)}}
function Dg(a,b,c){if(c&&c.action){var d=(c.method||"").toLowerCase();if("get"===d){for(var e=c.childNodes||[],f=!1,h=0;h<e.length;h++){var k=e[h];if(k.name===a){k.setAttribute("value",b);f=!0;break}}if(!f){var l=G.createElement("input");l.setAttribute("type","hidden");l.setAttribute("name",a);l.setAttribute("value",b);c.appendChild(l)}}else if("post"===d){var n=Bg(a,b,c.action);Nc.test(n)&&(c.action=n)}}}
var lg=function(a){try{var b;a:{for(var c=a,d=100;c&&0<d;){if(c.href&&c.nodeName.match(/^a(?:rea)?$/i)){b=c;break a}c=c.parentNode;d--}b=null}var e=b;if(e){var f=e.protocol;"http:"!==f&&"https:"!==f||Cg(e,e.hostname)}}catch(h){}},mg=function(a){try{if(a.action){var b=me(oe(a.action),"host");Cg(a,b)}}catch(c){}},Fg=function(a,b,c,d){og();pg(a,b,"fragment"===c?2:1,!!d,!1)},Gg=function(a,b){og();pg(a,[le(E.location,"host",!0)],b,!0,!0)},Hg=function(){var a=G.location.hostname,b=sg.exec(G.referrer);if(!b)return!1;
var c=b[2],d=b[1],e="";if(c){var f=c.split("/"),h=f[1];e="s"===h?decodeURIComponent(f[2]):decodeURIComponent(h)}else if(d){if(0===d.indexOf("xn--"))return!1;e=d.replace(/-/g,".").replace(/\.\./g,"-")}var k=a.replace(tg,""),l=e.replace(tg,""),n;if(!(n=k===l)){var q="."+l;n=k.substring(k.length-q.length,k.length)===q}return n},Ig=function(a,b){return!1===a?!1:a||b||Hg()};var Jg={};var Kg=/^\w+$/,Lg=/^[\w-]+$/,Mg={aw:"_aw",dc:"_dc",gf:"_gf",ha:"_ha",gp:"_gp",gb:"_gb"},Ng=function(){if(!wd(Gc)||!Hd())return!0;var a=Ed("ad_storage");return null==a?!0:!!a},Og=function(a,b){Gd("ad_storage")?Ng()?a():Ld(a,"ad_storage"):b?ta("TAGGING",3):Kd(function(){Og(a,!0)},["ad_storage"])},Qg=function(a){return Pg(a).map(function(b){return b.da})},Pg=function(a){var b=[];if(!sf(E)||!G.cookie)return b;var c=vf(a,G.cookie,void 0,"ad_storage");if(!c||0==c.length)return b;for(var d={},e=0;e<c.length;d=
{Sb:d.Sb},e++){var f=Rg(c[e]);if(null!=f){var h=f,k=h.version;d.Sb=h.da;var l=h.timestamp,n=h.labels,q=Ea(b,function(p){return function(r){return r.da===p.Sb}}(d));q?(q.timestamp=Math.max(q.timestamp,l),q.labels=Sg(q.labels,n||[])):b.push({version:k,da:d.Sb,timestamp:l,labels:n})}}b.sort(function(p,r){return r.timestamp-p.timestamp});return Tg(b)};function Sg(a,b){for(var c={},d=[],e=0;e<a.length;e++)c[a[e]]=!0,d.push(a[e]);for(var f=0;f<b.length;f++)c[b[f]]||d.push(b[f]);return d}
function Ug(a){return a&&"string"==typeof a&&a.match(Kg)?a:"_gcl"}
var Wg=function(){var a=oe(E.location.href),b=me(a,"query",!1,void 0,"gclid"),c=me(a,"query",!1,void 0,"gclsrc"),d=me(a,"query",!1,void 0,"wbraid"),e=me(a,"query",!1,void 0,"dclid");if(!b||!c||!d){var f=a.hash.replace("#","");b=b||ge(f,"gclid",void 0);c=c||ge(f,"gclsrc",void 0);d=d||ge(f,"wbraid",void 0)}return Vg(b,c,e,d)},Vg=function(a,b,c,d){var e={},f=function(h,k){e[k]||(e[k]=[]);e[k].push(h)};e.gclid=a;e.gclsrc=b;e.dclid=c;void 0!==d&&Lg.test(d)&&(e.gbraid=d,f(d,"gb"));if(void 0!==a&&a.match(Lg))switch(b){case void 0:f(a,
"aw");break;case "aw.ds":f(a,"aw");f(a,"dc");break;case "ds":f(a,"dc");break;case "3p.ds":f(a,"dc");break;case "gf":f(a,"gf");break;case "ha":f(a,"ha")}c&&f(c,"dc");return e},Xg=function(a,b){switch(a){case void 0:case "aw":return"aw"===b;case "aw.ds":return"aw"===b||"dc"===b;case "ds":case "3p.ds":return"dc"===b;case "gf":return"gf"===b;case "ha":return"ha"===b}return!1},Zg=function(a){var b=Wg();Og(function(){Yg(b,a)})};
function Yg(a,b,c,d){function e(q,p){var r=$g(q,f);r&&(Ef(r,p,h),k=!0)}b=b||{};d=d||[];var f=Ug(b.prefix);c=c||Ta();var h=Wf(b,c,!0);h.Aa="ad_storage";var k=!1,l=Math.round(c/1E3),n=function(q){var p=["GCL",l,q];0<d.length&&p.push(d.join("."));return p.join(".")};a.aw&&e("aw",n(a.aw[0]));a.dc&&e("dc",n(a.dc[0]));a.gf&&e("gf",n(a.gf[0]));a.ha&&e("ha",n(a.ha[0]));a.gp&&e("gp",n(a.gp[0]));(void 0==Jg.enable_gbraid_cookie_write?0:Jg.enable_gbraid_cookie_write)&&!k&&a.gb&&e("gb",n(a.gb[0]))}
var bh=function(a,b){var c=Ag(!0);Og(function(){for(var d=Ug(b.prefix),e=0;e<a.length;++e){var f=a[e];if(void 0!==Mg[f]){var h=$g(f,d),k=c[h];if(k){var l=Math.min(ah(k),Ta()),n;b:{var q=l,p=h;if(sf(E))for(var r=vf(p,G.cookie,void 0,"ad_storage"),u=0;u<r.length;++u)if(ah(r[u])>q){n=!0;break b}n=!1}if(!n){var t=Wf(b,l,!0);t.Aa="ad_storage";Ef(h,k,t)}}}}Yg(Vg(c.gclid,c.gclsrc),b)})},$g=function(a,b){var c=Mg[a];if(void 0!==c)return b+c},ah=function(a){return 0!==ch(a.split(".")).length?1E3*(Number(a.split(".")[1])||
0):0};function Rg(a){var b=ch(a.split("."));return 0===b.length?null:{version:b[0],da:b[2],timestamp:1E3*(Number(b[1])||0),labels:b.slice(3)}}function ch(a){return 3>a.length||"GCL"!==a[0]&&"1"!==a[0]||!/^\d+$/.test(a[1])||!Lg.test(a[2])?[]:a}
var dh=function(a,b,c,d,e){if(Ca(b)&&sf(E)){var f=Ug(e),h=function(){for(var k={},l=0;l<a.length;++l){var n=$g(a[l],f);if(n){var q=vf(n,G.cookie,void 0,"ad_storage");q.length&&(k[n]=q.sort()[q.length-1])}}return k};Og(function(){Fg(h,b,c,d)})}},Tg=function(a){return a.filter(function(b){return Lg.test(b.da)})},eh=function(a,b){if(sf(E)){for(var c=Ug(b.prefix),d={},e=0;e<a.length;e++)Mg[a[e]]&&(d[a[e]]=Mg[a[e]]);Og(function(){Ka(d,function(f,h){var k=vf(c+h,G.cookie,void 0,"ad_storage");k.sort(function(u,
t){return ah(t)-ah(u)});if(k.length){var l=k[0],n=ah(l),q=0!==ch(l.split(".")).length?l.split(".").slice(3):[],p={},r;r=0!==ch(l.split(".")).length?l.split(".")[2]:void 0;p[f]=[r];Yg(p,b,n,q)}})})}};function fh(a,b){for(var c=0;c<b.length;++c)if(a[b[c]])return!0;return!1}
var gh=function(a){function b(e,f,h){h&&(e[f]=h)}if(Hd()){var c=Wg();if(fh(c,a)){var d={};b(d,"gclid",c.gclid);b(d,"dclid",c.dclid);b(d,"gclsrc",c.gclsrc);b(d,"wbraid",c.gbraid);Gg(function(){return d},3);Gg(function(){var e={};return e._up="1",e},1)}}};function hh(a,b){var c=Ug(b),d=$g(a,c);if(!d)return 0;for(var e=Pg(d),f=0,h=0;h<e.length;h++)f=Math.max(f,e[h].timestamp);return f}
function ih(a){var b=0,c;for(c in a)for(var d=a[c],e=0;e<d.length;e++)b=Math.max(b,Number(d[e].timestamp));return b};var jh=/^\d+\.fls\.doubleclick\.net$/,kh=!1;kh=!0;function lh(a,b){Gd(m.B)?J(m.B)?a():Ld(a,m.B):b?B(42):Rd(function(){lh(a,!0)},[m.B])}function mh(a){var b=oe(E.location.href),c=me(b,"host",!1);if(c&&c.match(jh)){var d=me(b,"path").split(a+"=");if(1<d.length)return d[1].split(";")[0].split("?")[0]}}function nh(a){return Wg()[a]||[]}
function oh(a,b,c){if("aw"===a||"dc"===a||"gb"===a){var d=mh("gcl"+a);if(d)return d.split(".")}var e=Ug(b);if("_gcl"==e){c=void 0===c?!0:c;var f=!J(m.B)&&c,h=nh(a);if(0<h.length)return f?["0"]:h}var k=$g(a,e);return k?Qg(k):[]}function ph(a){var b=[];Ka(a,function(c,d){d=Tg(d);for(var e=[],f=0;f<d.length;f++)e.push(d[f].da);e.length&&b.push(c+":"+e.join(","))});return b.join(";")}
var qh=function(a){var b=mh("gac");return b?!J(m.B)&&a?"0":decodeURIComponent(b):ph(Ng()?eg():{})},rh=function(a){var b=mh("gacgb");return b?!J(m.B)&&a?"0":decodeURIComponent(b):ph(Ng()?eg("_gac_gb",!0):{})},th=function(a,b){if(kh)sh(a,b,"dc");else{var c=nh("dc");lh(function(){cg(b);var d=Yf[Zf(b.prefix)],e=!1;if(d&&0<c.length){var f=L.joined_au=L.joined_au||{},h=b.prefix||"_gcl";if(!f[h])for(var k=0;k<c.length;k++){var l="https://adservice.google.com/ddm/regclk";l=l+"?gclid="+c[k]+"&auiddc="+d;td(l);e=f[h]=!0}}null==
a&&(a=e);a&&d&&ag(b)})}},sh=function(a,b,c){var d=Wg(),e=[],f=d.gclid,h=d.dclid,k=d.gclsrc||"aw";!f||"aw.ds"!==k&&"aw"!==k&&"ds"!==k||c&&!Xg(k,c)||e.push({da:f,td:k});!h||c&&"dc"!==c||e.push({da:h,td:"ds"});0===e.length&&d.gbraid&&void 0===c&&e.push({da:d.gbraid,td:"gb"});lh(function(){cg(b);var l=Yf[Zf(b.prefix)],n=!1;if(l&&0<e.length)for(var q=L.joined_auid=L.joined_auid||{},p=0;p<
e.length;p++){var r=e[p],u=r.da,t=r.td,v=(b.prefix||"_gcl")+"."+t+"."+u;if(!q[v]){var x="https://adservice.google.com/pagead/regclk";x="gb"===t?x+"?gbraid="+u+"&auid="+l:x+"?gclid="+u+"&auid="+l+"&gclsrc="+t;td(x);n=q[v]=!0}}null==a&&(a=n);a&&l&&ag(b)})},uh=function(a){var b;if(mh("gclaw")||mh("gac")||0<nh("aw").length)b=!1;else{var c;if(0<nh("gb").length)c=!0;else{var d=Math.max(hh("aw",a),ih(Ng()?eg():{}));c=Math.max(hh("gb",a),ih(Ng()?eg("_gac_gb",!0):{}))>d}b=c}return b};var vh=/[A-Z]+/,wh=/\s/,xh=function(a){if(ya(a)&&(a=Ra(a),!wh.test(a))){var b=a.indexOf("-");if(!(0>b)){var c=a.substring(0,b);if(vh.test(c)){for(var d=a.substring(b+1).split("/"),e=0;e<d.length;e++)if(!d[e])return;return{id:a,prefix:c,containerId:c+"-"+d[0],F:d}}}}},zh=function(a){for(var b={},c=0;c<a.length;++c){var d=xh(a[c]);d&&(b[d.id]=d)}yh(b);var e=[];Ka(b,function(f,h){e.push(h)});return e};
function yh(a){var b=[],c;for(c in a)if(a.hasOwnProperty(c)){var d=a[c];"AW"===d.prefix&&d.F[1]&&b.push(d.containerId)}for(var e=0;e<b.length;++e)delete a[b[e]]};var Ah=function(){var a=!1;return a};var Ch=function(a,b,c,d){return(2===Bh()||d||"http:"!=E.location.protocol?a:b)+c},Bh=function(){var a=id(),b;if(1===a)a:{var c=Re;c=c.toLowerCase();for(var d="https://"+c,e="http://"+c,f=1,h=G.getElementsByTagName("script"),k=0;k<h.length&&100>k;k++){var l=h[k].src;if(l){l=l.toLowerCase();if(0===l.indexOf(e)){b=3;break a}1===f&&0===l.indexOf(d)&&(f=2)}}b=f}else b=a;return b};
var Qh=function(a){if(J(m.B))return a;a=a.replace(/&url=([^&#]+)/,function(b,c){var d=pe(decodeURIComponent(c));return"&url="+encodeURIComponent(d)});a=a.replace(/&ref=([^&#]+)/,function(b,c){var d=pe(decodeURIComponent(c));return"&ref="+encodeURIComponent(d)});return a},Rh=function(){var a;if(!(a=Se)){var b;if(!0===E._gtmdgs)b=!0;else{var c=dd&&dd.userAgent||"";b=0>c.indexOf("Safari")||/Chrome|Coast|Opera|Edg|Silk|Android/.test(c)||
11>((/Version\/([\d]+)/.exec(c)||[])[1]||"")?!1:!0}a=!b}if(a)return-1;var d=Ma("1");return pf(1,100)<d?pf(2,2):-1},Sh=function(a){var b;if(!a||!a.length)return;for(var c=[],d=0;d<a.length;++d){var e=a[d];e&&e.estimated_delivery_date?c.push(""+e.estimated_delivery_date):c.push("")}b=c.join(",");return b};var Th=new RegExp(/^(.*\.)?(google|youtube|blogger|withgoogle)(\.com?)?(\.[a-z]{2})?\.?$/),Uh={cl:["ecl"],customPixels:["nonGooglePixels"],ecl:["cl"],ehl:["hl"],hl:["ehl"],html:["customScripts","customPixels","nonGooglePixels","nonGoogleScripts","nonGoogleIframes"],customScripts:["html","customPixels","nonGooglePixels","nonGoogleScripts","nonGoogleIframes"],nonGooglePixels:[],nonGoogleScripts:["nonGooglePixels"],nonGoogleIframes:["nonGooglePixels"]},Vh={cl:["ecl"],customPixels:["customScripts","html"],
ecl:["cl"],ehl:["hl"],hl:["ehl"],html:["customScripts"],customScripts:["html"],nonGooglePixels:["customPixels","customScripts","html","nonGoogleScripts","nonGoogleIframes"],nonGoogleScripts:["customScripts","html"],nonGoogleIframes:["customScripts","html","nonGoogleScripts"]},Wh="google customPixels customScripts html nonGooglePixels nonGoogleScripts nonGoogleIframes".split(" ");
var Xh=function(){var a=!1;return a},Zh=function(a){var b=df("gtm.allowlist")||df("gtm.whitelist");b&&B(9);Xh()&&(b="google gtagfl lcl zone oid op".split(" "));var c=b&&ab(Oa(b),Uh),d=df("gtm.blocklist")||
df("gtm.blacklist");d||(d=df("tagTypeBlacklist"))&&B(3);d?B(8):d=[];Yh()&&(d=Oa(d),d.push("nonGooglePixels","nonGoogleScripts","sandboxedScripts"));0<=Da(Oa(d),"google")&&B(2);var e=d&&ab(Oa(d),Vh),f={};return function(h){var k=h&&h[kb.Oa];if(!k||"string"!=typeof k)return!0;k=k.replace(/^_*/,"");if(void 0!==f[k])return f[k];var l=Xe[k]||[],n=a(k,l);if(b){var q;if(q=
n)a:{if(0>Da(c,k))if(l&&0<l.length)for(var p=0;p<l.length;p++){if(0>Da(c,l[p])){B(11);q=!1;break a}}else{q=!1;break a}q=!0}n=q}var r=!1;if(d){var u=0<=Da(e,k);if(u)r=u;else{var t=Ha(e,l||[]);t&&B(10);r=t}}var v=!n||r;v||!(0<=Da(l,"sandboxedScripts"))||c&&-1!==Da(c,"sandboxedScripts")||(v=Ha(e,Wh));return f[k]=v}},Yh=function(){return Th.test(E.location&&E.location.hostname)};var $h={active:!0,isAllowed:function(){return!0}},ai=function(a){var b=L.zones;return b?b.checkState(Le.D,a):$h},bi=function(a){var b=L.zones;!b&&a&&(b=L.zones=a());return b};var ci=function(){},di=function(){};var ei=!1,ki=0,li=[];function mi(a){if(!ei){var b=G.createEventObject,c="complete"==G.readyState,d="interactive"==G.readyState;if(!a||"readystatechange"!=a.type||c||!b&&d){ei=!0;for(var e=0;e<li.length;e++)I(li[e])}li.push=function(){for(var f=0;f<arguments.length;f++)I(arguments[f]);return 0}}}function ni(){if(!ei&&140>ki){ki++;try{G.documentElement.doScroll("left"),mi()}catch(a){E.setTimeout(ni,50)}}}var oi=function(a){ei?a():li.push(a)};var qi=function(a,b){this.m=!1;this.I=[];this.T={tags:[]};this.Y=!1;this.o=this.C=0;pi(this,a,b)},ri=function(a,b,c,d){if(Oe.hasOwnProperty(b)||"__zone"===b)return-1;var e={};ib(d)&&(e=g(d,e));e.id=c;e.status="timeout";return a.T.tags.push(e)-1},si=function(a,b,c,d){var e=a.T.tags[b];e&&(e.status=c,e.executionTime=d)},ti=function(a){if(!a.m){for(var b=a.I,c=0;c<b.length;c++)b[c]();a.m=!0;a.I.length=0}},pi=function(a,b,c){wa(b)&&ui(a,b);c&&E.setTimeout(function(){return ti(a)},Number(c))},ui=function(a,
b){var c=Ya(function(){return I(function(){b(Le.D,a.T)})});a.m?c():a.I.push(c)},vi=function(a){a.C++;return Ya(function(){a.o++;a.Y&&a.o>=a.C&&ti(a)})};var wi=function(){function a(d){return!za(d)||0>d?0:d}if(!L._li&&E.performance&&E.performance.timing){var b=E.performance.timing.navigationStart,c=za(ef.get("gtm.start"))?ef.get("gtm.start"):0;L._li={cst:a(c-b),cbt:a(Ue-b)}}};var Ai={},Bi=function(){return E.GoogleAnalyticsObject&&E[E.GoogleAnalyticsObject]},Ci=!1;
var Di=function(a){E.GoogleAnalyticsObject||(E.GoogleAnalyticsObject=a||"ga");var b=E.GoogleAnalyticsObject;if(E[b])E.hasOwnProperty(b)||B(12);else{var c=function(){c.q=c.q||[];c.q.push(arguments)};c.l=Number(new Date);E[b]=c}wi();return E[b]},Ei=function(a,b,c,d){b=String(b).replace(/\s+/g,"").split(",");var e=Bi();e(a+"require","linker");e(a+"linker:autoLink",b,c,d)},Fi=function(a){if(!Hd())return;var b=Bi();b(a+"require","linker");b(a+"linker:passthrough",
!0);};
var Hi=function(a){},Gi=function(){return E.GoogleAnalyticsObject||"ga"},Ii=function(a,b){return function(){var c=Bi(),d=c&&c.getByName&&c.getByName(a);if(d){var e=d.get("sendHitTask");d.set("sendHitTask",function(f){var h=f.get("hitPayload"),k=f.get("hitCallback"),l=0>h.indexOf("&tid="+b);l&&(f.set("hitPayload",h.replace(/&tid=UA-[0-9]+-[0-9]+/,"&tid="+
b),!0),f.set("hitCallback",void 0,!0));e(f);l&&(f.set("hitPayload",h,!0),f.set("hitCallback",k,!0),f.set("_x_19",void 0,!0),e(f))})}}};
var Ni=function(){return"&tc="+Sb.filter(function(a){return a}).length},Qi=function(){2022<=Oi().length&&Pi()},Si=function(){Ri||(Ri=E.setTimeout(Pi,500))},Pi=function(){Ri&&(E.clearTimeout(Ri),Ri=void 0);void 0===Ti||Ui[Ti]&&!Vi&&!Wi||(Xi[Ti]||Yi.jh()||0>=Zi--?(B(1),Xi[Ti]=!0):(Yi.Ah(),kd(Oi()),Ui[Ti]=!0,$i=aj=bj=Wi=Vi=""))},Oi=function(){var a=Ti;if(void 0===a)return"";var b=ua("GTM"),c=ua("TAGGING");return[cj,Ui[a]?"":"&es=1",dj[a],b?"&u="+b:"",c?"&ut="+c:"",Ni(),Vi,Wi,bj?bj:"",aj,$i,"&z=0"].join("")},
fj=function(){cj=ej()},ej=function(){return[Ve,"&v=3&t=t","&pid="+Fa(),"&rv="+Le.mc].join("")},gj="0.005000">Math.random(),cj=ej(),Ui={},Vi="",Wi="",$i="",aj="",bj="",Ti=void 0,dj={},Xi={},Ri=void 0,Yi=function(a,b){var c=0,d=0;return{jh:function(){if(c<a)return!1;Ta()-d>=b&&(c=0);return c>=a},Ah:function(){Ta()-d>=b&&(c=0);c++;d=Ta()}}}(2,1E3),Zi=1E3,hj=function(a,b,c){if(gj&&!Xi[a]&&b){a!==Ti&&(Pi(),Ti=a);var d,e=String(b[kb.Oa]||"").replace(/_/g,"");0===e.indexOf("cvt")&&(e="cvt");
d=e;var f=c+d;Vi=Vi?Vi+"."+f:"&tr="+f;var h=b["function"];if(!h)throw Error("Error: No function name given for function call.");var k=(Ub[h]?"1":"2")+d;$i=$i?$i+"."+k:"&ti="+k;Si();Qi()}},ij=function(a,b,c){if(gj&&!Xi[a]){a!==Ti&&(Pi(),Ti=a);var d=c+b;Wi=Wi?Wi+"."+d:"&epr="+d;Si();Qi()}},jj=function(a,b,c){};
function kj(a,b,c,d){var e=Sb[a],f=lj(a,b,c,d);if(!f)return null;var h=Zb(e[kb.Qe],c,[]);if(h&&h.length){var k=h[0];f=kj(k.index,{onSuccess:f,onFailure:1===k.cf?b.terminate:f,terminate:b.terminate},c,d)}return f}
function lj(a,b,c,d){function e(){if(f[kb.vg])k();else{var x=$b(f,c,[]);var y=ri(c.Pa,String(f[kb.Oa]),Number(f[kb.Re]),x[kb.wg]),A=!1;x.vtp_gtmOnSuccess=function(){if(!A){A=!0;var D=Ta()-F;hj(c.id,Sb[a],"5");si(c.Pa,y,"success",
D);h()}};x.vtp_gtmOnFailure=function(){if(!A){A=!0;var D=Ta()-F;hj(c.id,Sb[a],"6");si(c.Pa,y,"failure",D);k()}};x.vtp_gtmTagId=f.tag_id;x.vtp_gtmEventId=c.id;hj(c.id,f,"1");var C=function(){var D=Ta()-F;hj(c.id,f,"7");si(c.Pa,y,"exception",D);A||(A=!0,k())};var F=Ta();try{Yb(x,c)}catch(D){C(D)}}}var f=Sb[a],h=b.onSuccess,k=b.onFailure,l=b.terminate;if(c.zd(f))return null;var n=Zb(f[kb.Se],c,[]);if(n&&n.length){var q=n[0],p=kj(q.index,{onSuccess:h,onFailure:k,terminate:l},c,d);if(!p)return null;h=p;k=2===q.cf?l:p}if(f[kb.Le]||f[kb.yg]){var r=f[kb.Le]?Tb:
c.Gh,u=h,t=k;if(!r[a]){e=Ya(e);var v=mj(a,r,e);h=v.onSuccess;k=v.onFailure}return function(){r[a](u,t)}}return e}function mj(a,b,c){var d=[],e=[];b[a]=nj(d,e,c);return{onSuccess:function(){b[a]=oj;for(var f=0;f<d.length;f++)d[f]()},onFailure:function(){b[a]=pj;for(var f=0;f<e.length;f++)e[f]()}}}function nj(a,b,c){return function(d,e){a.push(d);b.push(e);c()}}function oj(a){a()}function pj(a,b){b()};var sj=function(a,b){for(var c=[],d=0;d<Sb.length;d++)if(a[d]){var e=Sb[d];var f=vi(b.Pa);try{var h=kj(d,{onSuccess:f,onFailure:f,terminate:f},b,d);if(h){var k=c,l=k.push,n=d,q=e["function"];if(!q)throw"Error: No function name given for function call.";var p=Ub[q];l.call(k,{xf:n,qf:p?p.priorityOverride||0:0,Wg:h})}else qj(d,b),f()}catch(t){f()}}var r=b.Pa;r.Y=!0;r.o>=r.C&&ti(r);c.sort(rj);for(var u=0;u<c.length;u++)c[u].Wg();
return 0<c.length};function rj(a,b){var c,d=b.qf,e=a.qf;c=d>e?1:d<e?-1:0;var f;if(0!==c)f=c;else{var h=a.xf,k=b.xf;f=h>k?1:h<k?-1:0}return f}function qj(a,b){if(!gj)return;var c=function(d){var e=b.zd(Sb[d])?"3":"4",f=Zb(Sb[d][kb.Qe],b,[]);f&&f.length&&c(f[0].index);hj(b.id,Sb[d],e);var h=Zb(Sb[d][kb.Se],b,[]);h&&h.length&&c(h[0].index)};c(a);}
var tj=!1,zj=function(a){var b=a["gtm.uniqueEventId"],c=a.event;if("gtm.js"===c){if(tj)return!1;tj=!0}var d=ai(b),e=!1;if(!d.active){if("gtm.js"!==c)return!1;e=!0;d=ai(Number.MAX_SAFE_INTEGER)}gj&&!Xi[b]&&Ti!==b&&(Pi(),Ti=b,$i=Vi="",dj[b]="&e="+(0===c.indexOf("gtm.")?encodeURIComponent(c):"*")+"&eid="+b,Si());var f=a.eventCallback,h=a.eventTimeout,k={id:b,name:c,zd:Zh(d.isAllowed),Gh:[],kf:function(){B(6)},We:uj(b),Pa:new qi(f,
h)};wj(b,k.Pa);var l=dc(k);e&&(l=xj(l));var n=sj(l,k);"gtm.js"!==c&&"gtm.sync"!==c||Hi(Le.D);switch(c){case "gtm.init":n&&B(20)}return yj(l,n)};function uj(a){return function(b){gj&&(jb(b)||jj(a,"input",b))}}
function wj(a,b){jf(a,"event",1);jf(a,"ecommerce",1);jf(a,"gtm");jf(a,"eventModel");}function vj(){var a={};a.event=hf("event",1);a.ecommerce=hf("ecommerce",1);a.gtm=hf("gtm");a.eventModel=hf("eventModel");return a}function xj(a){for(var b=[],c=0;c<a.length;c++)a[c]&&Ne[String(Sb[c][kb.Oa])]&&(b[c]=!0);return b}
function yj(a,b){if(!b)return b;for(var c=0;c<a.length;c++)if(a[c]&&Sb[c]&&!Oe[String(Sb[c][kb.Oa])])return!0;return!1}function Aj(a,b){if(a){var c=""+a;0!==c.indexOf("http://")&&0!==c.indexOf("https://")&&(c="https://"+c);"/"===c[c.length-1]&&(c=c.substring(0,c.length-1));return oe(""+c+b).href}}function Bj(a,b){return Cj()?Aj(a,b):void 0}function Cj(){var a=!1;return a};var Dj=function(){this.eventModel={};this.targetConfig={};this.containerConfig={};this.remoteConfig={};this.globalConfig={};this.onSuccess=function(){};this.onFailure=function(){};this.setContainerTypeLoaded=function(){};this.getContainerTypeLoaded=function(){};this.eventId=void 0},Ej=function(a){var b=new Dj;b.eventModel=a;return b},Fj=function(a,b){a.targetConfig=b;return a},Gj=function(a,b){a.containerConfig=b;return a},Hj=function(a,b){a.remoteConfig=b;return a},Ij=function(a,b){a.globalConfig=
b;return a},Jj=function(a,b){a.onSuccess=b;return a},Kj=function(a,b){a.setContainerTypeLoaded=b;return a},Lj=function(a,b){a.getContainerTypeLoaded=b;return a},Mj=function(a,b){a.onFailure=b;return a};Dj.prototype.getWithConfig=function(a){if(void 0!==this.eventModel[a])return this.eventModel[a];if(void 0!==this.targetConfig[a])return this.targetConfig[a];if(void 0!==this.containerConfig[a])return this.containerConfig[a];if(void 0!==this.remoteConfig[a])return this.remoteConfig[a];if(void 0!==this.globalConfig[a])return this.globalConfig[a]};
var Nj=function(a){function b(e){Ka(e,function(f){c[f]=null})}var c={};b(a.eventModel);b(a.targetConfig);b(a.containerConfig);b(a.globalConfig);var d=[];Ka(c,function(e){d.push(e)});return d};var Oj;if(3===Le.mc.length)Oj="g";else{var Pj="G";Oj=Pj}
var Qj={"":"n",UA:"u",AW:"a",DC:"d",G:"e",GF:"f",HA:"h",GTM:Oj,OPT:"o"},Rj=function(a){var b=Le.D.split("-"),c=b[0].toUpperCase(),d=Qj[c]||"i",e=a&&"GTM"===c?b[1]:"OPT"===c?b[1]:"",f;if(3===Le.mc.length){var h="w";f="2"+h}else f="";return f+d+Le.mc+e};var Sj=function(){};var Tj=function(a){void 0!==a.addtlConsent&&"string"!==typeof a.addtlConsent&&(a.addtlConsent=void 0);void 0!==a.gdprApplies&&"boolean"!==typeof a.gdprApplies&&(a.gdprApplies=void 0);return void 0!==a.tcString&&"string"!==typeof a.tcString||void 0!==a.listenerId&&"number"!==typeof a.listenerId?2:a.cmpStatus&&"error"!==a.cmpStatus?0:3},Uj=function(a,b){this.o=a;this.m=null;this.I={};this.Y=0;this.T=void 0===b?500:b;this.C=null};pa(Uj,Sj);
var Wj=function(a){return"function"===typeof a.o.__tcfapi||null!=Vj(a)};
Uj.prototype.addEventListener=function(a){var b={},c=Ic(function(){return a(b)}),d=0;-1!==this.T&&(d=setTimeout(function(){b.tcString="tcunavailable";b.internalErrorState=1;c()},this.T));var e=function(f,h){clearTimeout(d);f?(b=f,b.internalErrorState=Tj(b),h&&0===b.internalErrorState||(b.tcString="tcunavailable",h||(b.internalErrorState=3))):(b.tcString="tcunavailable",b.internalErrorState=3);a(b)};try{Xj(this,"addEventListener",e)}catch(f){b.tcString="tcunavailable",b.internalErrorState=3,d&&(clearTimeout(d),
d=0),c()}};Uj.prototype.removeEventListener=function(a){a&&a.listenerId&&Xj(this,"removeEventListener",null,a.listenerId)};
var Zj=function(a,b,c){var d;d=void 0===d?"755":d;var e;a:{if(a.publisher&&a.publisher.restrictions){var f=a.publisher.restrictions[b];if(void 0!==f){e=f[void 0===d?"755":d];break a}}e=void 0}var h=e;if(0===h)return!1;var k=c;2===c?(k=0,2===h&&(k=1)):3===c&&(k=1,1===h&&(k=0));var l;if(0===k)if(a.purpose&&a.vendor){var n=Yj(a.vendor.consents,void 0===d?"755":d);l=n&&"1"===b&&a.purposeOneTreatment&&("DE"===a.publisherCC||wd(Ec)&&"CH"===a.publisherCC)?!0:n&&Yj(a.purpose.consents,b)}else l=!0;else l=
1===k?a.purpose&&a.vendor?Yj(a.purpose.legitimateInterests,b)&&Yj(a.vendor.legitimateInterests,void 0===d?"755":d):!0:!0;return l},Yj=function(a,b){return!(!a||!a[b])},Xj=function(a,b,c,d){c||(c=function(){});if("function"===typeof a.o.__tcfapi){var e=a.o.__tcfapi;e(b,2,c,d)}else if(Vj(a)){ak(a);var f=++a.Y;a.I[f]=c;if(a.m){var h={};a.m.postMessage((h.__tcfapiCall={command:b,version:2,callId:f,parameter:d},h),"*")}}else c({},!1)},Vj=function(a){if(a.m)return a.m;a.m=Qf(a.o,"__tcfapiLocator");return a.m},
ak=function(a){a.C||(a.C=function(b){try{var c;c=("string"===typeof b.data?JSON.parse(b.data):b.data).__tcfapiReturn;a.I[c.callId](c.returnValue,c.success)}catch(d){}},Mf(a.o,a.C))};var bk=!0;bk=!1;var ck={1:0,3:0,4:0,7:3,9:3,10:3};function dk(a,b){if(""===a)return b;var c=Number(a);return isNaN(c)?b:c}var ek=dk("",550),fk=dk("",500);function gk(){var a=L.tcf||{};return L.tcf=a}
var hk=function(a,b){this.C=a;this.m=b;this.o=Ta();},ik=function(a){},jk=function(a){},pk=function(){var a=gk(),b=new Uj(E,bk?3E3:-1),c=new hk(b,a);if((kk()?!0===E.gtag_enable_tcf_support:!1!==E.gtag_enable_tcf_support)&&!a.active&&("function"===typeof E.__tcfapi||Wj(b))){a.active=!0;a.Nb={};lk();var d=null;bk?d=E.setTimeout(function(){mk(a);nk(a);d=null},fk):a.tcString="tcunavailable";try{b.addEventListener(function(e){d&&(clearTimeout(d),d=null);if(0!==e.internalErrorState)mk(a),nk(a),ik(c);
else{var f;a.gdprApplies=e.gdprApplies;if(!1===e.gdprApplies)f=ok(),b.removeEventListener(e);else if("tcloaded"===e.eventStatus||"useractioncomplete"===e.eventStatus||"cmpuishown"===e.eventStatus){var h={},k;for(k in ck)if(ck.hasOwnProperty(k))if("1"===k){var l,n=e,q=!0;q=void 0===q?!1:q;var p;var r=n;!1===r.gdprApplies?p=!0:(void 0===r.internalErrorState&&(r.internalErrorState=Tj(r)),p="error"===r.cmpStatus||0!==r.internalErrorState||"loaded"===r.cmpStatus&&("tcloaded"===r.eventStatus||"useractioncomplete"===
r.eventStatus)?!0:!1);l=p?!1===n.gdprApplies||"tcunavailable"===n.tcString||void 0===n.gdprApplies&&!q||"string"!==typeof n.tcString||!n.tcString.length?!0:Zj(n,"1",0):!1;h["1"]=l}else h[k]=Zj(e,k,ck[k]);f=h}f&&(a.tcString=e.tcString||"tcempty",a.Nb=f,nk(a),ik(c))}}),jk(c)}catch(e){d&&(clearTimeout(d),d=null),mk(a),nk(a)}}};function mk(a){a.type="e";a.tcString="tcunavailable";bk&&(a.Nb=ok())}function lk(){var a={};Od((a.ad_storage="denied",a.wait_for_update=ek,a))}
var kk=function(){var a=!1;a=!0;return a};function ok(){var a={},b;for(b in ck)ck.hasOwnProperty(b)&&(a[b]=!0);return a}function nk(a){var b={};Pd((b.ad_storage=a.Nb["1"]?"granted":"denied",b))}
var qk=function(){var a=gk();if(a.active&&void 0!==a.loadTime)return Number(a.loadTime)},rk=function(){var a=gk();return a.active?a.tcString||"":""},sk=function(){var a=gk();return a.active&&void 0!==a.gdprApplies?a.gdprApplies?"1":"0":""},tk=function(a){if(!ck.hasOwnProperty(String(a)))return!0;var b=gk();return b.active&&b.Nb?!!b.Nb[String(a)]:!0};var uk=!1;function vk(a){var b=String(E.location).split(/[?#]/)[0],c=Le.Gf||E._CONSENT_MODE_SALT;return a?c?String(qf(b+a+c)):"0":""}
function wk(a){function b(t){var v;L.reported_gclid||(L.reported_gclid={});v=L.reported_gclid;var x;x=uk&&h&&(!Hd()||J(m.B))?l+"."+(f.prefix||"_gcl")+(t?"gcu":"gcs"):l+(t?"gcu":"gcs");if(!v[x]){v[x]=!0;var z=[],w={},y=function(N,R){R&&(z.push(N+"="+encodeURIComponent(R)),w[N]=!0)},A="https://www.google.com";if(Hd()){var C=J(m.B);y("gcs",Qd());t&&y("gcu","1");Id()&&y("gcd","G1"+Md(Fd));L.dedupe_gclid||
(L.dedupe_gclid=""+Rf());y("rnd",L.dedupe_gclid);if((!l||n&&"aw.ds"!==n)&&J(m.B)){var F=Qg("_gcl_aw");y("gclaw",F.join("."))}y("url",String(E.location).split(/[?#]/)[0]);y("dclid",xk(d,q));var D=!1;D=!0;C||!d&&!D||(A="https://pagead2.googlesyndication.com")}
y("gdpr_consent",rk()),y("gdpr",sk());"1"===Ag(!1)._up&&y("gtm_up","1");y("gclid",xk(d,l));y("gclsrc",n);if(!(w.gclid||w.dclid||w.gclaw)&&(y("gbraid",xk(d,p)),!w.gbraid&&Hd()&&J(m.B))){var H=Qg("_gcl_gb");y("gclgb",H.join("."))}y("gtm",Rj(!e));uk&&h&&J(m.B)&&(cg(f||{}),y("auid",Yf[Zf(f.prefix)]||""));
a.$e&&y("did",a.$e);var M=A+"/pagead/landing?"+z.join("&");td(M)}}var c=!!a.pd,d=!!a.na,e=a.R,f=void 0===a.uc?{}:a.uc,h=void 0===a.Ac?!0:a.Ac,k=Wg(),l=k.gclid||"",n=k.gclsrc,q=k.dclid||"",p=k.gbraid||"",r=!c&&((!l||n&&"aw.ds"!==n?!1:!0)||p),u=Hd();if(r||u)u?Rd(function(){b();J(m.B)||Ld(function(t){return b(!0,t.Xe)},m.B)},[m.B]):b()}function xk(a,b){var c=a&&!J(m.B);return b&&c?"0":b}var il=function(){var a=!0;tk(7)&&tk(9)&&tk(10)||(a=!1);var b=!0;b=!1;b&&!hl()&&(a=!1);return a},hl=function(){var a=!0;tk(3)&&tk(4)||(a=!1);return a};var Fl=!1;function Gl(){var a=L;return a.gcq=a.gcq||new Hl}
var Il=function(a,b,c){Gl().register(a,b,c)},Jl=function(a,b,c,d){Gl().push("event",[b,a],c,d)},Kl=function(a,b){Gl().push("config",[a],b)},Ll=function(a,b,c,d){Gl().push("get",[a,b],c,d)},Ml={},Nl=function(){this.status=1;this.containerConfig={};this.targetConfig={};this.remoteConfig={};this.o=null;this.m=!1},Ol=function(a,b,c,d,e){this.type=a;this.C=b;this.R=c||"";this.m=d;this.o=e},Hl=function(){this.I={};this.o={};this.m=[];this.C={AW:!1,UA:!1}},Pl=function(a,b){var c=xh(b);return a.I[c.containerId]=
a.I[c.containerId]||new Nl},Ql=function(a,b,c){if(b){var d=xh(b);if(d&&1===Pl(a,b).status){Pl(a,b).status=2;var e={};gj&&(e.timeoutId=E.setTimeout(function(){B(38);Si()},3E3));a.push("require",[e],d.containerId);Ml[d.containerId]=Ta();if(Ah()){}else{var h=
"/gtag/js?id="+encodeURIComponent(d.containerId)+"&l=dataLayer&cx=c",k=("http:"!=E.location.protocol?"https:":"http:")+("//www.googletagmanager.com"+h),l=Bj(c,h)||k;hd(l)}}}},Rl=function(a,b,c,d){if(d.R){var e=Pl(a,d.R),f=e.o;if(f){var h=g(c),k=g(e.targetConfig[d.R]),l=g(e.containerConfig),n=g(e.remoteConfig),q=g(a.o),p=df("gtm.uniqueEventId"),r=xh(d.R).prefix,u=Lj(Kj(Mj(Jj(Ij(Hj(Gj(Fj(Ej(h),k),l),n),q),function(){ij(p,r,"2");}),function(){
ij(p,r,"3");}),function(t,v){a.C[t]=v}),function(t){return a.C[t]});try{ij(p,r,"1");f(d.R,b,d.C,u)}catch(t){ij(p,r,"4");}}}};aa=Hl.prototype;
aa.register=function(a,b,c){var d=Pl(this,a);if(3!==d.status){d.o=b;d.status=3;if(c){g(d.remoteConfig,c);d.remoteConfig=c}var e=xh(a),f=Ml[e.containerId];if(void 0!==f){var h=L[e.containerId].bootstrap,k=e.prefix.toUpperCase();L[e.containerId]._spx&&(k=k.toLowerCase());var l=df("gtm.uniqueEventId"),n=k,q=Ta()-h;if(gj&&!Xi[l]){l!==Ti&&(Pi(),Ti=l);var p=n+"."+Math.floor(h-f)+
"."+Math.floor(q);aj=aj?aj+","+p:"&cl="+p}delete Ml[e.containerId]}this.flush()}};aa.push=function(a,b,c,d){var e=Math.floor(Ta()/1E3);Ql(this,c,b[0][m.Ga]||this.o[m.Ga]);Fl&&c&&Pl(this,c).m&&(d=!1);this.m.push(new Ol(a,e,c,b,d));d||this.flush()};aa.insert=function(a,b,c){var d=Math.floor(Ta()/1E3);0<this.m.length?this.m.splice(1,0,new Ol(a,d,c,b,!1)):this.m.push(new Ol(a,d,c,b,!1))};
aa.flush=function(a){for(var b=this,c=[],d=!1,e={};this.m.length;){var f=this.m[0];if(f.o)Fl?!f.R||Pl(this,f.R).m?(f.o=!1,this.m.push(f)):c.push(f):(f.o=!1,this.m.push(f));else switch(f.type){case "require":if(3!==Pl(this,f.R).status&&!a){Fl&&this.m.push.apply(this.m,c);return}gj&&E.clearTimeout(f.m[0].timeoutId);break;case "set":Ka(f.m[0],function(r,u){g(bb(r,u),b.o)});break;case "config":e.oa={};Ka(f.m[0],function(r){return function(u,t){g(bb(u,t),r.oa)}}(e));var h=!!e.oa[m.fc];delete e.oa[m.fc];
var k=Pl(this,f.R),l=xh(f.R),n=l.containerId===l.id;h||(n?k.containerConfig={}:k.targetConfig[f.R]={});k.m&&h||Rl(this,m.Z,e.oa,f);k.m=!0;delete e.oa[m.zb];n?g(e.oa,k.containerConfig):g(e.oa,k.targetConfig[f.R]);Fl&&(d=!0);break;case "event":e.Rb={};Ka(f.m[0],function(r){return function(u,t){g(bb(u,t),r.Rb)}}(e));Rl(this,f.m[1],e.Rb,f);break;case "get":var q={},p=(q[m.Ea]=f.m[0],q[m.Da]=f.m[1],q);Rl(this,m.ra,p,f)}this.m.shift();e={oa:e.oa,Rb:e.Rb}}Fl&&(this.m.push.apply(this.m,c),d&&this.flush())};
aa.getRemoteConfig=function(a){return Pl(this,a).remoteConfig};var Sl=function(a,b,c){var d={event:b,"gtm.element":a,"gtm.elementClasses":ud(a,"className"),"gtm.elementId":a["for"]||pd(a,"id")||"","gtm.elementTarget":a.formTarget||ud(a,"target")||""};c&&(d["gtm.triggers"]=c.join(","));d["gtm.elementUrl"]=(a.attributes&&a.attributes.formaction?a.formAction:"")||a.action||ud(a,"href")||a.src||a.code||a.codebase||"";return d},Tl=function(a){L.hasOwnProperty("autoEventsSettings")||(L.autoEventsSettings={});var b=L.autoEventsSettings;b.hasOwnProperty(a)||(b[a]={});
return b[a]},Ul=function(a,b,c){Tl(a)[b]=c},Vl=function(a,b,c,d){var e=Tl(a),f=Xa(e,b,d);e[b]=c(f)},Wl=function(a,b,c){var d=Tl(a);return Xa(d,b,c)};var Xl=!!E.MutationObserver,Yl=void 0,Zl=function(a){if(!Yl){var b=function(){var c=G.body;if(c)if(Xl)(new MutationObserver(function(){for(var e=0;e<Yl.length;e++)I(Yl[e])})).observe(c,{childList:!0,subtree:!0});else{var d=!1;ld(c,"DOMNodeInserted",function(){d||(d=!0,I(function(){d=!1;for(var e=0;e<Yl.length;e++)I(Yl[e])}))})}};Yl=[];G.body?b():I(b)}Yl.push(a)};var am=!1,bm=[];function cm(){if(!am){am=!0;for(var a=0;a<bm.length;a++)I(bm[a])}}var dm=function(a){am?I(a):bm.push(a)};Object.freeze({dl:1,id:1});var em="HA GF G UA AW DC".split(" "),fm=!1,gm={},hm=!1;function im(a,b){var c={event:a};b&&(c.eventModel=g(b),b[m.Sc]&&(c.eventCallback=b[m.Sc]),b[m.Yb]&&(c.eventTimeout=b[m.Yb]));return c}function jm(){return fm}
var mm={config:function(a){var b;return b},consent:function(a){function b(){jm()&&
g(a[2],{subcommand:a[1]})}if(3===a.length){B(39);var c=Ye(),d=a[1];"default"===d?(b(),Od(a[2])):"update"===d&&(b(),Pd(a[2],c))}},event:function(a){var b=a[1];if(!(2>a.length)&&ya(b)){var c;if(2<a.length){if(!ib(a[2])&&void 0!=a[2]||3<a.length)return;c=a[2]}var d=im(b,c);return d}},get:function(a){},js:function(a){if(2==a.length&&a[1].getTime)return hm=!0,jm(),{event:"gtm.js","gtm.start":a[1].getTime()}},policy:function(){},set:function(a){var b;2==a.length&&ib(a[1])?b=g(a[1]):3==a.length&&ya(a[1])&&(b={},ib(a[2])||Ca(a[2])?b[a[1]]=g(a[2]):b[a[1]]=a[2]);if(b){b._clear=!0;return b}}},nm={policy:!0};var om=function(a,b){var c=a.hide;if(c&&void 0!==c[b]&&c.end){c[b]=!1;var d=!0,e;for(e in c)if(c.hasOwnProperty(e)&&!0===c[e]){d=!1;break}d&&(c.end(),c.end=null)}},qm=function(a){var b=pm(),c=b&&b.hide;c&&c.end&&(c[a]=!0)};var Km=function(a){if(Jm(a))return a;this.m=a};Km.prototype.bh=function(){return this.m};var Jm=function(a){return!a||"object"!==gb(a)||ib(a)?!1:"getUntrustedUpdateValue"in a};Km.prototype.getUntrustedUpdateValue=Km.prototype.bh;var Lm=[],Mm=!1,Nm=!1,Om=!1,Pm=function(a){return E["dataLayer"].push(a)},Qm=function(a){var b=L["dataLayer"],c=b?b.subscribers:1,d=0,e=a;return function(){++d===c&&(e(),e=null)}};
function Rm(a){var b=a._clear;Ka(a,function(d,e){"_clear"!==d&&(b&&gf(d,void 0),gf(d,e))});Te||(Te=a["gtm.start"]);var c=a["gtm.uniqueEventId"];if(!a.event)return!1;c||(c=Ye(),a["gtm.uniqueEventId"]=c,gf("gtm.uniqueEventId",c));return zj(a)}function Sm(){var a=Lm[0];if(null==a||"object"!==typeof a)return!1;if(a.event)return!0;if(La(a)){var b=a[0];if("config"===b||"event"===b||"js"===b)return!0}return!1}
function Tm(){for(var a=!1;!Om&&0<Lm.length;){var b=!1;if(b&&!Nm&&Sm()){var c={};Lm.unshift((c.event=
"gtm.init",c));Nm=!0}var d=!1;if(d&&!Mm&&Sm()){var e={};Lm.unshift((e.event="gtm.init_consent",e));Mm=!0}Om=!0;delete af.eventModel;cf();var f=Lm.shift();if(null!=f){var h=Jm(f);
if(h){var k=f;f=Jm(k)?k.getUntrustedUpdateValue():void 0;for(var l=["gtm.allowlist","gtm.blocklist","gtm.whitelist","gtm.blacklist","tagTypeBlacklist"],n=0;n<l.length;n++){var q=l[n],p=df(q,1);if(Ca(p)||ib(p))p=g(p);bf[q]=p}}try{if(wa(f))try{f.call(ef)}catch(y){}else if(Ca(f)){var r=f;if(ya(r[0])){var u=r[0].split("."),t=u.pop(),v=r.slice(1),x=df(u.join("."),2);if(void 0!==x&&null!==x)try{x[t].apply(x,v)}catch(y){}}}else{if(La(f)){a:{var z=f;if(z.length&&ya(z[0])){var w=mm[z[0]];if(w&&(!h||!nm[z[0]])){f=
w(z);break a}}f=void 0}if(!f){Om=!1;continue}}a=Rm(f)||a}}finally{h&&cf(!0)}}Om=!1}return!a}function Um(){var a=Tm();try{om(E["dataLayer"],Le.D)}catch(b){}return a}
var Wm=function(){var a=fd("dataLayer",[]),b=fd("google_tag_manager",{});b=b["dataLayer"]=b["dataLayer"]||{};oi(function(){b.gtmDom||(b.gtmDom=!0,a.push({event:"gtm.dom"}))});dm(function(){b.gtmLoad||(b.gtmLoad=!0,a.push({event:"gtm.load"}))});b.subscribers=(b.subscribers||0)+1;var c=a.push;a.push=function(){var e;if(0<L.SANDBOXED_JS_SEMAPHORE){e=[];for(var f=0;f<arguments.length;f++)e[f]=new Km(arguments[f])}else e=[].slice.call(arguments,0);var h=c.apply(a,e);Lm.push.apply(Lm,e);if(300<
this.length)for(B(4);300<this.length;)this.shift();var k="boolean"!==typeof h||h;return Tm()&&k};var d=a.slice(0);Lm.push.apply(Lm,d);Vm()&&I(Um)},Vm=function(){var a=!0;return a};var Xm={};Xm.hc=new String("undefined");
var Ym=function(a){this.m=function(b){for(var c=[],d=0;d<a.length;d++)c.push(a[d]===Xm.hc?b:a[d]);return c.join("")}};Ym.prototype.toString=function(){return this.m("undefined")};Ym.prototype.valueOf=Ym.prototype.toString;Xm.Bg=Ym;Xm.ld={};Xm.Pg=function(a){return new Ym(a)};var Zm={};Xm.Bh=function(a,b){var c=Ye();Zm[c]=[a,b];return c};Xm.Ze=function(a){var b=a?0:1;return function(c){var d=Zm[c];if(d&&"function"===typeof d[b])d[b]();Zm[c]=void 0}};Xm.hh=function(a){for(var b=!1,c=!1,d=2;d<a.length;d++)b=
b||8===a[d],c=c||16===a[d];return b&&c};Xm.wh=function(a){if(a===Xm.hc)return a;var b=Ye();Xm.ld[b]=a;return'google_tag_manager["'+Le.D+'"].macro('+b+")"};Xm.sh=function(a,b,c){a instanceof Xm.Bg&&(a=a.m(Xm.Bh(b,c)),b=va);return{dh:a,onSuccess:b}};var $m=["input","select","textarea"],an=["button","hidden","image","reset","submit"],bn=function(a){var b=a.tagName.toLowerCase();return!Ea($m,function(c){return c===b})||"input"===b&&Ea(an,function(c){return c===a.type.toLowerCase()})?!1:!0},cn=function(a){return a.form?a.form.tagName?a.form:G.getElementById(a.form):sd(a,["form"],100)},dn=function(a,b,c){if(!a.elements)return 0;for(var d=b.getAttribute(c),e=0,f=1;e<a.elements.length;e++){var h=a.elements[e];if(bn(h)){if(h.getAttribute(c)===d)return f;
f++}}return 0};var pn=E.clearTimeout,qn=E.setTimeout,O=function(a,b,c){if(Ah()){b&&I(b)}else return hd(a,b,c)},rn=function(){return new Date},sn=function(){return E.location.href},tn=function(a){return me(oe(a),"fragment")},un=function(a){return ne(oe(a))},vn=function(a,b){return df(a,b||2)},wn=function(a,b,c){var d;b?(a.eventCallback=b,c&&(a.eventTimeout=c),d=Pm(a)):d=Pm(a);return d},xn=function(a,b){E[a]=b},W=function(a,b,c){b&&
(void 0===E[a]||c&&!E[a])&&(E[a]=b);return E[a]},yn=function(a,b,c){return vf(a,b,void 0===c?!0:!!c)},zn=function(a,b,c){return 0===Ef(a,b,c)},An=function(a,b){if(Ah()){b&&I(b)}else jd(a,b)},Bn=function(a){return!!Wl(a,"init",!1)},Cn=function(a){Ul(a,"init",!0)},Dn=function(a){var b=Re+"?id="+encodeURIComponent(a)+"&l=dataLayer";O(Ch("https://","http://",b))},En=function(a,b,c){gj&&(jb(a)||jj(c,b,a))};var Fn=Xm.sh;function bo(a,b){a=String(a);b=String(b);var c=a.length-b.length;return 0<=c&&a.indexOf(b,c)==c}var co=new Ga;function eo(a,b,c){var d=c?"i":void 0;try{var e=String(b)+d,f=co.get(e);f||(f=new RegExp(b,d),co.set(e,f));return f.test(a)}catch(h){return!1}}
function fo(a,b){function c(h){var k=oe(h),l=me(k,"protocol"),n=me(k,"host",!0),q=me(k,"port"),p=me(k,"path").toLowerCase().replace(/\/$/,"");if(void 0===l||"http"==l&&"80"==q||"https"==l&&"443"==q)l="web",q="default";return[l,n,q,p]}for(var d=c(String(a)),e=c(String(b)),f=0;f<d.length;f++)if(d[f]!==e[f])return!1;return!0}
function go(a){return ho(a)?1:0}
function ho(a){var b=a.arg0,c=a.arg1;if(a.any_of&&Ca(c)){for(var d=0;d<c.length;d++){var e=g(a,{});g({arg1:c[d],any_of:void 0},e);if(go(e))return!0}return!1}switch(a["function"]){case "_cn":return 0<=String(b).indexOf(String(c));case "_css":var f;a:{if(b){var h=["matches","webkitMatchesSelector","mozMatchesSelector","msMatchesSelector","oMatchesSelector"];try{for(var k=0;k<h.length;k++)if(b[h[k]]){f=b[h[k]](c);break a}}catch(n){}}f=!1}return f;case "_ew":return bo(b,c);case "_eq":return String(b)==
String(c);case "_ge":return Number(b)>=Number(c);case "_gt":return Number(b)>Number(c);case "_lc":var l;l=String(b).split(",");return 0<=Da(l,String(c));case "_le":return Number(b)<=Number(c);case "_lt":return Number(b)<Number(c);case "_re":return eo(b,c,a.ignore_case);case "_sw":return 0==String(b).indexOf(String(c));case "_um":return fo(b,c)}return!1};var io=encodeURI,X=encodeURIComponent,jo=kd;var ko=function(a,b){if(!a)return!1;var c=me(oe(a),"host");if(!c)return!1;for(var d=0;b&&d<b.length;d++){var e=b[d]&&b[d].toLowerCase();if(e){var f=c.length-e.length;0<f&&"."!=e.charAt(0)&&(f--,e="."+e);if(0<=f&&c.indexOf(e,f)==f)return!0}}return!1};
var lo=function(a,b,c){for(var d={},e=!1,f=0;a&&f<a.length;f++)a[f]&&a[f].hasOwnProperty(b)&&a[f].hasOwnProperty(c)&&(d[a[f][b]]=a[f][c],e=!0);return e?d:null};function Sp(){return E.gaGlobal=E.gaGlobal||{}}var Tp=function(){var a=Sp();a.hid=a.hid||Fa();return a.hid},Up=function(a,b){var c=Sp();if(void 0==c.vid||b&&!c.from_cookie)c.vid=a,c.from_cookie=b};var Dq=window,Eq=document,Fq=function(a){var b=Dq._gaUserPrefs;if(b&&b.ioo&&b.ioo()||a&&!0===Dq["ga-disable-"+a])return!0;try{var c=Dq.external;if(c&&c._gaUserPrefs&&"oo"==c._gaUserPrefs)return!0}catch(f){}for(var d=rf("AMP_TOKEN",String(Eq.cookie),!0),e=0;e<d.length;e++)if("$OPT_OUT"==d[e])return!0;return Eq.getElementById("__gaOptOutExtension")?!0:!1};var Gq={};function Iq(a){delete a.eventModel[m.zb];Kq(a.eventModel)}var Kq=function(a){Ka(a,function(c){"_"===c.charAt(0)&&delete a[c]});var b=a[m.va]||{};Ka(b,function(c){"_"===c.charAt(0)&&delete b[c]})};var Nq=function(a,b,c){Jl(b,c,a)},Oq=function(a,b,c){Jl(b,c,a,!0)},Vq=function(a,b){};
function Pq(a,b){}var Y={g:{}};Y.g.ctv=["google"],function(){(function(a){Y.__ctv=a;Y.__ctv.h="ctv";Y.__ctv.i=!0;Y.__ctv.priorityOverride=0})(function(){return"3"})}();

Y.g.c=["google"],function(){(function(a){Y.__c=a;Y.__c.h="c";Y.__c.i=!0;Y.__c.priorityOverride=0})(function(a){En(a.vtp_value,"c",a.vtp_gtmEventId);return a.vtp_value})}();
Y.g.e=["google"],function(){(function(a){Y.__e=a;Y.__e.h="e";Y.__e.i=!0;Y.__e.priorityOverride=0})(function(a){var b=String(kf(a.vtp_gtmEventId,"event"));return b})}();
Y.g.f=["google"],function(){(function(a){Y.__f=a;Y.__f.h="f";Y.__f.i=!0;Y.__f.priorityOverride=0})(function(a){var b=vn("gtm.referrer",1)||G.referrer;return b?a.vtp_component&&"URL"!=a.vtp_component?me(oe(String(b)),a.vtp_component,a.vtp_stripWww,a.vtp_defaultPages,a.vtp_queryKey):un(String(b)):String(b)})}();

Y.g.u=["google"],function(){var a=function(b){return{toString:function(){return b}}};(function(b){Y.__u=b;Y.__u.h="u";Y.__u.i=!0;Y.__u.priorityOverride=0})(function(b){var c;c=(c=b.vtp_customUrlSource?b.vtp_customUrlSource:vn("gtm.url",1))||sn();var d=b[a("vtp_component")];if(!d||"URL"==d)return un(String(c));var e=oe(String(c)),f;if("QUERY"===d)a:{var h=b[a("vtp_multiQueryKeys").toString()],k=b[a("vtp_queryKey").toString()]||"",l=b[a("vtp_ignoreEmptyQueryParam").toString()],n;h?Ca(k)?n=k:n=String(k).replace(/\s+/g,
"").split(","):n=[String(k)];for(var q=0;q<n.length;q++){var p=me(e,"QUERY",void 0,void 0,n[q]);if(void 0!=p&&(!l||""!==p)){f=p;break a}}f=void 0}else f=me(e,d,"HOST"==d?b[a("vtp_stripWww")]:void 0,"PATH"==d?b[a("vtp_defaultPages")]:void 0,void 0);return f})}();
Y.g.v=["google"],function(){(function(a){Y.__v=a;Y.__v.h="v";Y.__v.i=!0;Y.__v.priorityOverride=0})(function(a){var b=a.vtp_name;if(!b||!b.replace)return!1;var c=vn(b.replace(/\\\./g,"."),a.vtp_dataLayerVersion||1),d=void 0!==c?c:a.vtp_defaultValue;En(d,"v",a.vtp_gtmEventId);return d})}();
Y.g.ua=["google"],function(){function a(p){return J(p)}function b(p,r,u){var t=!1;if(Hd()&&!t&&!e[p]){var v=!J(m.H),x=function(){var z=Bi(),w="gtm"+Ye(),y=n(r);y["&gtm"]=Rj(!0);var A={name:w};l(y,A,!0);var C=void 0,F=A._useUp;z(function(){var D=z.getByName(u);D&&(C=D.get("clientId"))});
z("create",p,A);v&&J(m.H)&&(v=!1,z(function(){var D=z.getByName(w);!D||D.get("clientId")===C&&F||(y["&gcs"]=Qd(),y["&gcu"]="1",D.set(y),D.send("pageview"))}));z(function(){z.remove(w)})};Ld(x,m.H);Ld(x,m.B);e[p]=!0}}var c,d={},e={},f={name:!0,clientId:!0,sampleRate:!0,siteSpeedSampleRate:!0,alwaysSendReferrer:!0,allowAnchor:!0,allowLinker:!0,cookieName:!0,cookieDomain:!0,cookieExpires:!0,
cookiePath:!0,cookieUpdate:!0,cookieFlags:!0,legacyCookieDomain:!0,legacyHistoryImport:!0,storage:!0,useAmpClientId:!0,storeGac:!0,_cd2l:!0,_useUp:!0,_cs:!0},h={allowAnchor:!0,allowLinker:!0,alwaysSendReferrer:!0,anonymizeIp:!0,cookieUpdate:!0,exFatal:!0,forceSSL:!0,javaEnabled:!0,legacyHistoryImport:!0,nonInteraction:!0,useAmpClientId:!0,useBeacon:!0,storeGac:!0,allowAdFeatures:!0,allowAdPersonalizationSignals:!0,_cd2l:!0},k={urlPassthrough:!0},l=function(p,r,u){var t=0;if(p)for(var v in p)if(!k[v]&&
p.hasOwnProperty(v)&&(u&&f[v]||!u&&void 0===f[v])){var x=h[v]?Na(p[v]):p[v];"anonymizeIp"!=v||x||(x=void 0);r[v]=x;t++}return t},n=function(p){var r={};p.vtp_gaSettings&&g(lo(p.vtp_gaSettings.vtp_fieldsToSet,"fieldName","value"),r);g(lo(p.vtp_fieldsToSet,"fieldName","value"),r);J(m.H)||(r.storage="none");J(m.B)||(r.allowAdFeatures=!1,r.storeGac=!1);il()||(r.allowAdFeatures=!1);hl()||(r.allowAdPersonalizationSignals=!1);p.vtp_transportUrl&&(r._x_19=p.vtp_transportUrl);if(Na(r.urlPassthrough)){r._useUp=!0;var u=!1;Hd()&&!u&&(r._cs=a)}return r},q=function(p){function r(Z,T){void 0!==T&&D("set",Z,T)}var u={},t={},v={},x={};
if(p.vtp_gaSettings){var z=p.vtp_gaSettings;g(lo(z.vtp_contentGroup,"index","group"),t);g(lo(z.vtp_dimension,"index","dimension"),v);g(lo(z.vtp_metric,"index","metric"),x);var w=g(z);w.vtp_fieldsToSet=void 0;w.vtp_contentGroup=void 0;w.vtp_dimension=void 0;w.vtp_metric=void 0;p=g(p,w)}g(lo(p.vtp_contentGroup,"index","group"),t);g(lo(p.vtp_dimension,"index","dimension"),v);g(lo(p.vtp_metric,"index","metric"),x);var y=n(p),A=Di(p.vtp_functionName);if(wa(A)){var C="",F="";p.vtp_setTrackerName&&"string"==
typeof p.vtp_trackerName?""!==p.vtp_trackerName&&(F=p.vtp_trackerName,C=F+"."):(F="gtm"+Ye(),C=F+".");var D=function(Z){var T=[].slice.call(arguments,0);T[0]=C+T[0];A.apply(window,T)},H=function(Z,T){return void 0===T?T:Z(T)},M=function(Z,T){if(T)for(var nb in T)T.hasOwnProperty(nb)&&D("set",Z+nb,T[nb])},N=function(){},R={name:F};l(y,R,!0);var ha=p.vtp_trackingId||u.trackingId;A("create",ha,R);D("set","&gtm",Rj(!0));var S=!1;
Hd()&&!S&&(D("set","&gcs",Qd()),b(ha,p,F));y._x_19&&(null==ed&&delete y._x_19,y._x_20&&!d[F]&&(d[F]=!0,A(Ii(F,String(y._x_20)))));p.vtp_enableRecaptcha&&D("require","recaptcha","recaptcha.js");(function(Z,T){void 0!==p[T]&&D("set",Z,p[T])})("nonInteraction","vtp_nonInteraction");M("contentGroup",t);M("dimension",v);M("metric",x);var K={};l(y,K,!1)&&D("set",K);var U;
p.vtp_enableLinkId&&D("require","linkid","linkid.js");D("set","hitCallback",function(){var Z=y&&y.hitCallback;wa(Z)&&Z();p.vtp_gtmOnSuccess()});var V=function(Z,T){return void 0===p[Z]?u[T]:p[Z]};if("TRACK_EVENT"==p.vtp_trackType){}else if("TRACK_SOCIAL"==p.vtp_trackType){}else if("TRACK_TRANSACTION"==
p.vtp_trackType){}else if("TRACK_TIMING"==p.vtp_trackType){}else if("DECORATE_LINK"==
p.vtp_trackType){}else if("DECORATE_FORM"==p.vtp_trackType){}else if("TRACK_DATA"==p.vtp_trackType){}else{p.vtp_enableEcommerce&&(D("require",
"ec","ec.js"),N());if(p.vtp_doubleClick||"DISPLAY_FEATURES"==p.vtp_advertisingFeaturesType){var Ba="_dc_gtm_"+String(p.vtp_trackingId).replace(/[^A-Za-z0-9-]/g,"");D("require","displayfeatures",void 0,{cookieName:Ba})}if("DISPLAY_FEATURES_WITH_REMARKETING_LISTS"==p.vtp_advertisingFeaturesType){var Ia="_dc_gtm_"+String(p.vtp_trackingId).replace(/[^A-Za-z0-9-]/g,"");D("require","adfeatures",{cookieName:Ia})}U?D("send","pageview",U):D("send","pageview");Na(y.urlPassthrough)&&Fi(C)}if(!c){var Qa=p.vtp_useDebugVersion?"u/analytics_debug.js":"analytics.js";p.vtp_useInternalVersion&&!p.vtp_useDebugVersion&&(Qa="internal/"+Qa);c=!0;var Gb=Bj(y._x_19,"/analytics.js"),lb=Ch("https:","http:","//www.google-analytics.com/"+Qa,y&&!!y.forceSSL);O("analytics.js"===Qa&&Gb?Gb:lb,function(){var Z=
Bi();Z&&Z.loaded||p.vtp_gtmOnFailure();},p.vtp_gtmOnFailure)}}else I(p.vtp_gtmOnFailure)};(function(p){Y.__ua=p;Y.__ua.h="ua";Y.__ua.i=!0;Y.__ua.priorityOverride=0})(function(p){Rd(function(){q(p)},[m.H,
m.B])})}();

Y.g.uv=["google"],function(){(function(a){Y.__uv=a;Y.__uv.h="uv";Y.__uv.i=!0;Y.__uv.priorityOverride=0})(function(){})}();



Y.g.cid=["google"],function(){(function(a){Y.__cid=a;Y.__cid.h="cid";Y.__cid.i=!0;Y.__cid.priorityOverride=0})(function(){return Le.D})}();




Y.g.gas=["google"],function(){(function(a){Y.__gas=a;Y.__gas.h="gas";Y.__gas.i=!0;Y.__gas.priorityOverride=0})(function(a){var b=g(a),c=b;c[kb.Oa]=null;c[kb.rg]=null;var d=b=c;d.vtp_fieldsToSet=d.vtp_fieldsToSet||[];var e=d.vtp_cookieDomain;void 0!==e&&(d.vtp_fieldsToSet.push({fieldName:"cookieDomain",value:e}),delete d.vtp_cookieDomain);return b})}();
Y.g.remm=["google"],function(){(function(a){Y.__remm=a;Y.__remm.h="remm";Y.__remm.i=!0;Y.__remm.priorityOverride=0})(function(a){for(var b=a.vtp_input,c=a.vtp_map||[],d=a.vtp_fullMatch,e=a.vtp_ignoreCase?"gi":"g",f=a.vtp_defaultValue,h=0;h<c.length;h++){var k=c[h].key||"";d&&(k="^"+k+"$");var l=new RegExp(k,e);if(l.test(b)){var n=c[h].value;a.vtp_replaceAfterMatch&&(n=String(b).replace(l,n));f=n;break}}En(f,"remm",a.vtp_gtmEventId);return f})}();Y.g.smm=["google"],function(){(function(a){Y.__smm=a;Y.__smm.h="smm";Y.__smm.i=!0;Y.__smm.priorityOverride=0})(function(a){var b=a.vtp_input,c=lo(a.vtp_map,"key","value")||{},d=c.hasOwnProperty(b)?c[b]:a.vtp_defaultValue;En(d,"smm",a.vtp_gtmEventId);return d})}();













var Wq={};Wq.macro=function(a){if(Xm.ld.hasOwnProperty(a))return Xm.ld[a]},Wq.onHtmlSuccess=Xm.Ze(!0),Wq.onHtmlFailure=Xm.Ze(!1);Wq.dataLayer=ef;Wq.callback=function(a){We.hasOwnProperty(a)&&wa(We[a])&&We[a]();delete We[a]};Wq.bootstrap=0;Wq._spx=!1;function Xq(){L[Le.D]=Wq;Za(Xe,Y.g);Wb=Wb||Xm;Xb=ec}
function Yq(){vd.o().o();L=E.google_tag_manager=E.google_tag_manager||{};pk();Jg.enable_gbraid_cookie_write=!0;if(L[Le.D]){var a=L.zones;a&&a.unregisterChild(Le.D);}else{for(var b=data.resource||{},c=b.macros||[],d=0;d<c.length;d++)Pb.push(c[d]);for(var e=b.tags||[],f=0;f<e.length;f++)Sb.push(e[f]);for(var h=b.predicates||[],k=0;k<h.length;k++)Rb.push(h[k]);for(var l=b.rules||[],n=0;n<l.length;n++){for(var q=l[n],p={},r=0;r<q.length;r++)p[q[r][0]]=Array.prototype.slice.call(q[r],1);Qb.push(p)}Ub=Y;Vb=go;Xq();Wm();ei=!1;ki=0;if("interactive"==G.readyState&&!G.createEventObject||"complete"==G.readyState)mi();
else{ld(G,"DOMContentLoaded",mi);ld(G,"readystatechange",mi);if(G.createEventObject&&G.documentElement.doScroll){var u=!0;try{u=!E.frameElement}catch(z){}u&&ni()}ld(E,"load",mi)}am=!1;"complete"===G.readyState?cm():ld(E,"load",cm);a:{if(!gj)break a;E.setInterval(fj,
864E5);}Ue=(new Date).getTime();}}
(function(a){if(!E["__TAGGY_INSTALLED"]){var b=!1;if(G.referrer){var c=oe(G.referrer);b="cct.google"===le(c,"host")}if(!b){var d=vf("googTaggyReferrer");b=d.length&&d[0].length}b&&(E["__TAGGY_INSTALLED"]=!0,hd("https://cct.google/taggy/agent.js"))}var f=function(){var n=E["google.tagmanager.debugui2.queue"];n||(n=[],E["google.tagmanager.debugui2.queue"]=n,hd("https://www.googletagmanager.com/debug/bootstrap"));var q={messageType:"CONTAINER_STARTING",data:{scriptSource:ed,containerProduct:"GTM",debug:!1}};q.data.resume=function(){a()};Le.Ff&&(q.data.initialPublish=!0);n.push(q)},h="x"===me(E.location,"query",!1,void 0,"gtm_debug");if(!h&&G.referrer){var k=oe(G.referrer);h="tagassistant.google.com"===le(k,"host")}if(!h){var l=vf("__TAG_ASSISTANT");h=l.length&&l[0].length}E.__TAG_ASSISTANT_API&&(h=!0);h&&ed?f():a()})(Yq);

})()
