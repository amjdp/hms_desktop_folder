

   	// livechat by www.mylivechat.com/  2018-06-12

   	
	   // first loading
	   if (typeof (MyLiveChat) == "undefined") {
		   MyLiveChat = {};
		   MyLiveChat.RawConfig ={UIPopupMode:"Modern",InlineChatButtonMode:"round+text",SmartRejectTooltip:"Close",SmartTemplate:"2",SmartHeadline:"Chat Invitation",SmartHideTimeout:"10",WidgetPosition:"middleright",WaitingFieldQuestion:"1",InlineChatRoundSize:"32",SmartMaxReject:"2",SmartEntryUrlFilter:"",WebConsoleRedirectTime:"637172877906911918",InPageHeadBgColor:"#1d357d",InlineChatOfflineLogo:"a4",InlineChatRoundSpace:"6",InlineChatBubbleUIMode:"1",InPageUseBubbleTopOnlineOnly:"0",InviteHeadline:"Chat Invitation",InlineChatEnableDrag:"0",SmartUseVisitUrlFilter:"1",SmartUseReferUrlFilter:"1",InlineChatSurveyVisible:"1",SmartMaxIgnore:"2",InlineChatRoundPadding:"8",WaitingShowForClick:"1",WaitingShowForInvite:"0",InviteAcceptTooltip:"Chat Invitation",InlineChatSurveyUseComment:"1",InviteSoundFile:"1",InlineChatSurveyUseRating:"1",SmartVisitUrlFilter:"",InlineChatRoundBackColor:"#ff5349",SmartLocationFilter:"",InPageHeadBorderColor:"#1d357d",InviteShowTimeout:"30",ButtonOpenNewWindow:"True",SupportPhoto:"1",InlineChatEnableOAuth:"0",UIMobileMode:"Inline",InPageBubbleTop:"1",InviteRejectTooltip:"Close",InPageHeadSize:"18px",WidgetHideWidget:"1",DialogHeight:"420",InviteHideTimeout:"1800",InPageUseBubbleTop:"1",SmartPlaySound:"1",InlineChatSurveyUseEmail:"1",InlineChatRoundFontSize:"18px",SmartMessage:"May I help you?",SmartStayTime:"5",InlineChatOnlineLogo:"a4",InlineChatRoundOfflineGray:"N",WaitingShowForSmart:"1",SmartReferUrlFilter:"",InPageTemplate:"1",SmartUseShowTimeout:"1",InlineChatRoundOnlineUrl:"",WaitingLogo:"13",SmartShowTimeout:"60",InlineChatRoundOffline:"",InPageHeadOnline:"Chat Now",InlineChatRoundOfflineUrl:"",SmartUsePageTime:"1",DialogWidth:"580",InPageTemplateMobile:"1",InvitePhoto:"upload",SmartKeywordsFilter:"",InlineChatRoundMargin:"8",maxWaitTime:"300",SmartUseStayTime:"1",WaitingFieldEmail:"1",SmartUseLocationFilter:"1",SmartHideIfChatting:"1",WidgetHideInline:"1",SmartAcceptTooltip:"Chat Invitation",InPageHeadColor:"#ffffff",UIDialogMode:"Classic",SupportShowFeedbackUpload:"",WidgetOpenNewWindow:"False",InlineChatTimestampVisible:"1",SmartUseMaxReject:"1",InlineChatRoundRadius:"10",OnholdWaitTime:"120",BrandLogo:"http://www.adroitinfosystems.com/images/siteimages/logo.jpg",SmartUsePageCount:"1",FeedbackLogo:"35",WidgetFixedMode:"",SmartUseKeywordsFilter:"1",InvitePlaySound:"1",SmartUseEntryUrlFilter:"1",WaitingFieldDepartment:"1",InPageImageOffline:"9",SmartUseHideTimeout:"1",InviteTemplate:"1",SmartPageCount:"1",SmartSoundFile:"1",InlineChatHideSubject:"",SmartUseMaxIgnore:"1",WidgetStartPos:"middleright",InPageImageOnline:"9",InviteMessage:"Hello, My Name is (AGENT). How can I help you ?",InPageHeadOffline:"Leave A Message",MessageTimestampVisible:"1",InPageHeadFont:"Georgia",SmartPageTime:"5",InlineChatRoundOnline:"20"};
		   MyLiveChat.RawQuery ={hccid:"51742554",apimode:"chatinline"};
		   for (var mlcp in MyLiveChat.RawConfig) {
			   MyLiveChat[mlcp] = MyLiveChat.RawConfig[mlcp];
		   }
		   for (var mlcp in MyLiveChat.RawQuery) {
			   MyLiveChat[mlcp] = MyLiveChat.RawQuery[mlcp];
		   }

		   MyLiveChat.HCCID ='51742554';
		   MyLiveChat.PageBeginTime = new Date().getTime();
		   MyLiveChat.LoadingHandlers = [];
		   //	,"Departments"
		   MyLiveChat.CPRFIELDS = ["SyncType", "SyncStatus", "SyncResult", "HasReadyAgents", "VisitorUrls", "VisitorStatus", "VisitorDuration", "VisitorEntryUrl", "VisitorReferUrl"];

		   MyLiveChat.DefaultFont = "Poppins";

		   (function () {
			   function loadfont(font) {
				   var fonturl = "https://fonts.googleapis.com/css?family=" + encodeURIComponent(font) + ":300,400,500,600,700";

				   var div = document.createElement('div');
				   div.style.cssText = "position:fixed;left:-1000px;";
				   div.style.fontFamily = '"' + font + '"';
				   div.innerText = "a";
				   try {
					   document.body.appendChild(div);
				   } catch (x) {
					   var head = document.getElementsByTagName("head")[0]
					   try {
						   head.appendChild(div);
					   } catch (x) {
						   head.insertBefore(div, head.firstChild);
					   }
				   }

				   var link = MyLiveChat_ImportCss(fonturl);
				   link.onload = function () {
					   setTimeout(function () {
						   document.body.removeChild(div);
					   }, 100)
				   }

			   }
			   var fonts = ["Poppins"];
			   try {
				   for (var p in MyLiveChat.RawConfig) {
					   var fontval;
					   if (/Font$/.test(p)) {
						   fontval = MyLiveChat.RawConfig[p];
					   }
					   if (/TextStyle$/.test(p)) {
						   var ts = MyLiveChat.RawConfig[p];
						   if (ts) {
								//ts = "test:123;" + ts + ";another:222";
							   var ms = /font-family:([^;]+)/.exec(ts);
							   if (ms)fontval = ms[1];
						   }
					   }
					   if (!fontval || fonts.indexOf(fontval) != -1)
						   continue;
					   //console.log(fontval)
					   switch (fontval) {
						   case "Poppins":
						   case "Open Sans":
						   case "Noto Sans":
						   case "Lato":
						   case "Lora":
						   case "Roboto":
						   case "proxima-nova":
							   fonts.push(fontval);
							   break;
					   }
				   }
			   } catch (x) {
				   console.error(x);
			   }
			   for (var i = 0; i < fonts.length; i++) {
				   loadfont(fonts[i])
			   }
		   })();
	   }
	   else {
		   MyLiveChat.MultiLinked = true;
	   }
	


	   MyLiveChat.Version =3017;
	   MyLiveChat.FirstRequestTimeout =28800;
	   MyLiveChat.NextRequestTimeout =57600;
	   MyLiveChat.SyncType =null;
	   MyLiveChat.SyncStatus ="LOADING";
	   MyLiveChat.SyncUserName =null;
	   MyLiveChat.SyncResult ="LOADING";
	   MyLiveChat.HasReadyAgents =false;
	   MyLiveChat.SourceUrl ="https://www.adroitinfosystems.com/";
	   MyLiveChat.AgentTimeZone = parseInt("6" || "-5");
	   MyLiveChat.VisitorStatus ="";
	   MyLiveChat.UrlBase ="https://c1.mylivechat.com/livechat2/";
	   MyLiveChat.SiteUrl ="https://c1.mylivechat.com/";

   	

	   if (!MyLiveChat.AgentId) MyLiveChat.AgentId = MyLiveChat.RawAgentId;

	   MyLiveChat.Departments = [];

	   MyLiveChat.Departments.push({
		   Name:"Sales",
		   Agents: [{
			   Id:'User:1',
			   Name:"Sanjay",
			   Online:false
   			},{
			   Id:'User:11',
			   Name:"Alex",
			   Online:false
   			}],
		   Online:false
   		});

	   MyLiveChat.Departments.push({
		   Name:"Support",
		   Agents: [{
			   Id:'User:1',
			   Name:"Sanjay",
			   Online:false
   			},{
			   Id:'User:11',
			   Name:"Alex",
			   Online:false
   			}],
		   Online:false
   		});



	   MyLiveChat.VisitorUrls = [];



   	

	   function MyLiveChat_AddScript(tag) {
		   var func = MyLiveChat_AddScript;
		   var arr = func._list;
		   if (!arr) func._list = arr = [];
		   if (func._loading) {
			   arr.push(tag);
			   return;
		   }
		   function ontagload() {
			   func._loading = false;
			   if (!arr.length) return;
			   tag = arr.shift();
			   LoadTag();
		   }
		   function LoadTag() {
			   func._loading = true;
			   if ('onload' in tag) {
				   tag.onload = ontagload;
			   }
			   else {
				   var iid = setInterval(function () {
					   if (tag.readyState != 'complete' && tag.readyState != 'loaded')
						   return;
					   clearInterval(iid);
					   ontagload();
				   }, 10);
			   }
			   var p = document.getElementsByTagName("head")[0] || document.body;
			   p.insertBefore(tag, p.firstChild);
		   }
		   LoadTag();
	   }

	   function MyLiveChat_GetLastScriptTag() {
		   var coll = document.getElementsByTagName("script");
		   return coll[coll.length - 1];
	   }
	   function MyLiveChat_ImportCss(url,tagid) {
		   var p = document.head || document.getElementsByTagName("head")[0] || document.body;
		   var tag = document.createElement("link");
		   if (tagid) tag.setAttribute("id", tagid);
		   tag.setAttribute("rel", "stylesheet");
		   tag.setAttribute("href", url);
		   p.insertBefore(tag, p.firstChild);
		   return tag;
	   }
	   function MyLiveChat_DocWrite(html, relativetag) {
		   if (html.substr(0, 7) == "<script")	//Low IE interactive or defer
		   {
			   var src = html.match(/src=["']?([^"'>]*)["']/)[1];
			   if (!MyLiveChat.LoadedScripts) MyLiveChat.LoadedScripts = {};
			   if (MyLiveChat.LoadedScripts[src]) return;
			   MyLiveChat.LoadedScripts[src] = true;

			   var tag = document.createElement("script");
			   tag.setAttribute("src", src);
			   MyLiveChat_AddScript(tag);
		   }
		   else {
			   if (!document.body || document.readyState == "loading") {
				   document.write(html);
				   return;
			   }

			   if (!relativetag) relativetag = MyLiveChat_GetLastScriptTag();
			   var div = document.createElement("DIV");
			   div.innerHTML = html;
			   while (true) {
				   var c = div.firstChild;
				   if (!c) break;
				   div.removeChild(c);
				   relativetag.parentNode.insertBefore(c, relativetag);
			   }
		   }
	   }

	   MyLiveChat.RandomID = '6667cc92-77d6-1971-862c-cbbf63a8da08';


	   MyLiveChat.NewGuid = function () {
		   var guid = "";
		   for (var i = 1; i <= 32; i++) {
			   guid += Math.floor(Math.random() * 16.0).toString(16);
			   if (i == 8 || i == 12 || i == 16 || i == 20) guid += "-";
		   }
		   return guid;
	   }

	   MyLiveChat.RandomID = MyLiveChat.NewGuid().substring(0, 18) + MyLiveChat.RandomID.substring(18);


   	

	   MyLiveChat.VisitorDuration = 0;
	   MyLiveChat.VisitorEntryUrl = "";
	   MyLiveChat.VisitorReferUrl = "";

	   MyLiveChat.ShowButton =true;
	   MyLiveChat.ShowLink =true;
	   MyLiveChat.ShowBox =true;
	   MyLiveChat.ShowSmart =false;


	   MyLiveChat.NoPrivateLabel =true;


	   MyLiveChat.LoadingHandlers.push(function (funcself) {
		   MyLiveChat_RunLoadingHandler('chatinline', funcself);
	   });

	   MyLiveChat.ResourcesVary ="\x26culture=en-US\x26mlcv=3017\x26template=1";

   	

   	

	   MyLiveChat['chatinline' + "_script_tag"] = MyLiveChat_GetLastScriptTag();

	   if (typeof (MyLiveChat_Initialize) != "undefined") {
		   MyLiveChat_Initialize()
	   }
	   else if (!MyLiveChat.MultiLinked) {
		   MyLiveChat_ImportCss(MyLiveChat.UrlBase + "chatinline.css?" + MyLiveChat.ResourcesVary,"mlc_chatinlie_styletag");
		   MyLiveChat_DocWrite("<script defer='defer' src='" + MyLiveChat.UrlBase + "resources2.aspx?HCCID=" + MyLiveChat.HCCID + MyLiveChat.ResourcesVary + "'></scr" + "ipt>");
		   MyLiveChat_DocWrite("<script defer='defer' src='" + MyLiveChat.UrlBase + "script/livechatinit2.js'></scr" + "ipt>");
	   }


   	