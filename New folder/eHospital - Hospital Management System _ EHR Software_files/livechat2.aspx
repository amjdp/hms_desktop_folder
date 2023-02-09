

   	// livechat by www.mylivechat.com/  2018-06-12

   	


	   MyLiveChat.Version =3017;
	   MyLiveChat.FirstRequestTimeout =28800;
	   MyLiveChat.NextRequestTimeout =57600;
	   MyLiveChat.SyncType ="VISIT";
	   MyLiveChat.SyncStatus ="READY";
	   MyLiveChat.SyncUserName ="Guest_b9583433";
	   MyLiveChat.SyncResult =null;
	   MyLiveChat.HasReadyAgents =false;
	   MyLiveChat.SourceUrl ="https://www.adroitinfosystems.com/products/ehospital-systems";
	   MyLiveChat.AgentTimeZone = parseInt("6" || "-5");
	   MyLiveChat.VisitorStatus ="VISIT";
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



   	


	   MyLiveChat.VisitorLocation ="IN|India|13|Kerala|Kannur";
	   MyLiveChat.LastLoadTime = new Date().getTime();
	   MyLiveChat.VisitorDuration =2;
	   MyLiveChat.VisitorEntryUrl ="https://www.adroitinfosystems.com/products/ehospital-systems";
	   MyLiveChat.VisitorReferUrl ="https://www.google.com/";

	   MyLiveChat.VisitorUrls = [];



   	
	   MyLiveChat.VisitorUrls.push("https://www.adroitinfosystems.com/products/ehospital-systems");
   	

	   MyLiveChat_Initialize();

	   if (MyLiveChat.localStorage || MyLiveChat.userDataBehavior) {
		   MyLiveChat_SyncToCPR();
	   }

   	