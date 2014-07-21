function showprofiletwo(secid,sid,dob)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showprofile2report.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
        xmlhttp.send();	
}

function profile2reportdisplay(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function profile2report(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforprofile2.jsp?id="+id,true);
    xmlhttp.send();
}

function profile1finalreport(secid,sid,dob)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showprofile1report.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
        xmlhttp.send();	
}

function datedispalayforprofile1rreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function profile1yearendyearreportj(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforprofile1yearreport.jsp?id="+id,true);
    xmlhttp.send();
}

function earlyyearfinalreport(secid,sid,dob)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showearlyyearendofyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
        xmlhttp.send();	
}

function datedispalayforearlyyearreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function earlyyearendyearreportj(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforearlyyearreport.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforkstreport(secid,sid,age)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showkeystagetwomidyearreport.jsp?secid="+secid+"&sid="+sid+"&age="+age,true);      
        xmlhttp.send();	
}


function midyearreportforkstreporta(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforkstreport.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforksoreport(secid,sid,age)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showkeystageonemidyearreport.jsp?secid="+secid+"&sid="+sid+"&age="+age,true);      
        xmlhttp.send();	
}


function agedispalayforreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","agedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function midyearreportforksoreporta(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforksoreport.jsp?id="+id,true);
    xmlhttp.send();
}

function endofyearDOB3(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}
function showkeystagetwoendeyear(secid,sid,dob)
{
	if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();       
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
	        }                
	    };   
	        
	        xmlhttp.open("POST","showkeystagetwoendeyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
	        xmlhttp.send();
}




function midyearreportforpp3(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay23.jsp?id="+id,true);
    xmlhttp.send();
}

function endofyearDOB2(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}
function showkeystageoneendeyear(secid,sid,dob)
{
	if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();       
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
	        }                
	    };   
	        
	        xmlhttp.open("POST","showkeystageoneendeyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
	        xmlhttp.send();
}



function midyearreportforpp2(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay22.jsp?id="+id,true);
    xmlhttp.send();
}


function midyearreportforp(id)
{
	alert(id);
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('diplayta').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay2.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst2.jsp?id="+id,true);
    xmlhttp.send();
}






function midyearreportforkso(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";               	            
        }
        document.getElementById('narrationd').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforkso.jsp?id="+id,true);
    xmlhttp.send();
}

////////////////////

function midyearreportforkst(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('namedisp').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst.jsp?id="+id,true);
    xmlhttp.send();
}

/////////////
function namedforearly(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dtext').innerHTML="";
        	  
        	
            
        }     
        document.getElementById('dated').innerHTML="";
        document.getElementById('formdisplay').innerHTML="";
    };
  xmlhttp.open("POST","nameforearlyyear.jsp?id="+id,true);
    xmlhttp.send();
}
/////////////////////
function displaynarration(text)
{
document.getElementById('Display').innerHTML = text;
}

function savenarration(sid,narration,callbackFunction)
{
	if(narration=="")
		{
		ValidateForm();
		return false;
		}
	else
		{
		url="savenaration.jsp";
    	var sendmessage="sid="+sid+"&narration="+narration;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}   
   }
}





function updatenarration(sid,narration,callbackFunction)
{
	if(narration=="" && sid!="")
	{
	ValidateForm();
	return false;
	}
	else
	{
		url="updatenaration.jsp";
    	var sendmessage="sid="+sid+"&narration="+narration;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}   
   }
}





function DOBforearlyyear(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
        xmlhttp2=new XMLHttpRequest();
    }
	else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
    }
	xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dtext').innerHTML=xmlhttp1.responseText;
            
        }
    };
    
    xmlhttp2.onreadystatechange=function()
    {
        if (xmlhttp2.readyState==4 && xmlhttp2.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('formdisplay').innerHTML=xmlhttp2.responseText;
            
        }
    };
    xmlhttp.open("POST","dobforearlyyear.jsp?id="+id,true);
    xmlhttp1.open("POST","narrationearlyyearendofyearreport.jsp?id="+id,true);
    xmlhttp2.open("POST","narrationprofile2.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
    xmlhttp2.send();
}
////////////////////////////

function DOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
        xmlhttp2=new XMLHttpRequest();
        xmlhttp3=new XMLHttpRequest();
        xmlhttp4=new XMLHttpRequest();
        xmlhttp5=new XMLHttpRequest();
        xmlhttp6=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp3=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp4=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp5=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp6=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textarea').innerHTML=xmlhttp1.responseText;
             
         }
    };
    
    xmlhttp2.onreadystatechange=function()
    {
    	 if (xmlhttp2.readyState==4 && xmlhttp2.status==200)
         {
             document.getElementById('teacher').innerHTML=xmlhttp2.responseText;       
         }
    };
    
    
    xmlhttp3.onreadystatechange=function()
    {
    	 if (xmlhttp3.readyState==4 && xmlhttp3.status==200)
         {
             document.getElementById('dhead').innerHTML=xmlhttp3.responseText;       
         }
    };
    
    
    
    xmlhttp4.onreadystatechange=function()
    {
    	 if (xmlhttp4.readyState==4 && xmlhttp4.status==200)
         {
    		 document.getElementById('contenta').innerHTML=xmlhttp4.responseText;
             
         }
    };
    
    xmlhttp5.onreadystatechange=function()
    {
    	 if (xmlhttp5.readyState==4 && xmlhttp5.status==200)
         {
    		 document.getElementById('age').innerHTML=xmlhttp5.responseText;             
         }
    };
    
    
    xmlhttp6.onreadystatechange=function()
    {
    	 if (xmlhttp6.readyState==4 && xmlhttp6.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('diplayta').innerHTML=xmlhttp6.responseText;
             
         }
    };
    
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narration.jsp?id="+id,true); 
        xmlhttp2.open("POST","teacherdispaly.jsp?id="+id,true);
        xmlhttp3.open("POST","departmenthade.jsp?id="+id,true);
        xmlhttp4.open("POST","mideyearreport.jsp?id="+id,true);
        xmlhttp5.open("POST","agedisplay.jsp?id="+id,true);
        xmlhttp6.open("POST","narratioreception.jsp?id="+id,true);
            
  
    xmlhttp.send();
    xmlhttp1.send();
    xmlhttp2.send();
    xmlhttp3.send();
    xmlhttp4.send();
    xmlhttp5.send();
    xmlhttp6.send();
}


///////////////////////////End of year report////////////////////////////////

function endofyearDOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationforkeystageone.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}


function kstendofyearDOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","agedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationkeysatgetwomidyearprimaryscoolreport.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}

function kstendofyearDOBB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationforkeystagetwo.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}

function displayearlyyearendofyearrpt(text)
{
document.getElementById('save').innerHTML = text;
}

function earlyyearendofyearrpt(id,a,b,c,d,e,f,g,h,callbackFunction)
{
	if(a=="" || b=="" || c=="" || d=="" || e=="" || f=="" || g=="" ||h=="")
	{
	validatearlyyearendofyearreport();
	return false;
	}
	else
		{
		var url="saveearlyyearendofreport.jsp";
		var sendmessage="id="+id+"&a="+a+"&b="+b+"&c="+c+"&d="+d+"&e="+e+"&f="+f+"&g="+g+"&h="+h;

		var XMLHttpRequestObject = false;
		if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new
		ActiveXObject("Microsoft.XMLHTTP");
		}
		if(XMLHttpRequestObject) {
		XMLHttpRequestObject.open("POST", url);
		XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
		XMLHttpRequestObject.onreadystatechange = function()
		{
		if (XMLHttpRequestObject.readyState == 4 &&
		XMLHttpRequestObject.status == 200) {
		callbackFunction(XMLHttpRequestObject.responseText);
		delete XMLHttpRequestObject;
		XMLHttpRequestObject = null;
		}
		};
		XMLHttpRequestObject.send(sendmessage);
		}
	}
}

function display2(text)
{
document.getElementById('save').innerHTML = text;
}

function receptionendofyearassessment(id,a,b,c,callbackFunction)
{

	
	if(a=="" || b=="" || c=="")
	{
	validatreception();
	return false;
	}
	else
		{
		url="savereceptionendofyearassessmentintry.jsp";
	var sendmessage="id="+id+"&a="+a+"&b="+b+"&c="+c;
		
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) 
    {
	XMLHttpRequestObject = new XMLHttpRequest();
	} 
    else if (window.ActiveXObject)
    {
	XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) 
     {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 && XMLHttpRequestObject.status == 200)
           {
			callbackFunction(XMLHttpRequestObject.responseText);
			delete XMLHttpRequestObject;
			XMLHttpRequestObject = null;
           }
	};
	XMLHttpRequestObject.send(sendmessage);
  }
}
}

function receptionendofyearassessmentupdate(id,a,b,c,callbackFunction)
{
	if(a=="" || b=="" || c=="")
	{
	validatreception();
	return false;
	}
	else
		{
		
		url="updatereceptionendofyearassessment.jsp";
		var sendmessage="id="+id+"&a="+a+"&b="+b+"&c="+c;

		if(a=="" || b=="" || c=="")
		{
		validatreception();
		return false;
		}
		
		var XMLHttpRequestObject = false;
		if (window.XMLHttpRequest) 
	    {
		XMLHttpRequestObject = new XMLHttpRequest();
		} 
	    else if (window.ActiveXObject)
	    {
		XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if(XMLHttpRequestObject) 
	     {
		XMLHttpRequestObject.open("POST", url);
		XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

		XMLHttpRequestObject.onreadystatechange = function()
		{
		if (XMLHttpRequestObject.readyState == 4 && XMLHttpRequestObject.status == 200)
	           {
				callbackFunction(XMLHttpRequestObject.responseText);
				delete XMLHttpRequestObject;
				XMLHttpRequestObject = null;
	           }
		};
		XMLHttpRequestObject.send(sendmessage);
	  }
}
}


///////////////////////////////////////profile 2///////////////////////////////////////////////////////

function saveprofile(id,form)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');
	var ff=document.getElementById('f');	
	var gg=document.getElementById('g');	
	var hh=document.getElementById('h');	
	var ii=document.getElementById('i');	
	var jj=document.getElementById('j');
	var kk=document.getElementById('k');	
	var ll=document.getElementById('l');	
	var mm=document.getElementById('m');	
	var nn=document.getElementById('n');	
	var oo=document.getElementById('o');
	var pp=document.getElementById('p');	
	var qq=document.getElementById('q');	
	
	   document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";	
	   gg.style.border="solid 0px";
	   gg.style.borderColor="";
	   hh.style.border="solid 0px";
	   hh.style.borderColor="";
	   ii.style.border="solid 0px";
	   ii.style.borderColor="";
	   jj.style.border="solid 0px";
	   jj.style.borderColor="";
	   kk.style.border="solid 0px";
	   kk.style.borderColor="";
	   ll.style.border="solid 0px";
	   ll.style.borderColor="";
	   mm.style.border="solid 0px";
	   mm.style.borderColor="";
	   nn.style.border="solid 0px";
	   nn.style.borderColor="";
	   oo.style.border="solid 0px";
	   oo.style.borderColor="";
	   pp.style.border="solid 0px";
	   pp.style.borderColor="";
	   qq.style.border="solid 0px";
	   qq.style.borderColor="";	
	for (var a = 0; a < form.txtlistening.length; a++ ) {
	
		 if (form.txtlistening[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   listening=form.txtlistening[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtlistening[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtunderstanding.length; b++ ) {
        if (form.txtunderstanding[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		understanding=form.txtunderstanding[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtunderstanding[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtspeaking.length; c++ ) {
        if (form.txtspeaking[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   speaking=form.txtspeaking[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtspeaking[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtmh.length; d++ ) {
        if (form.txtmh[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		mh=form.txtmh[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtmh[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var e = 0; e < form.txthsc.length; e++ ) {
        if (form.txthsc[e].checked==false) {
        	count=0;            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		hsc=form.txthsc[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txthsc[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var f = 0; f < form.txtpsed.length; f++ ) {
        if (form.txtpsed[f].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
	  psed=form.txtpsed[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtpsed[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var g = 0; g < form.txtmfb.length; g++ ) {
        if (form.txtmfb[g].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		mfb=form.txtmfb[g].value; 		
	}
	else
	{
	var f=document.getElementById('g');
	var bc=form.txtmfb[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var h = 0; h < form.txtmrs.length; h++ ) {
        if (form.txtmrs[h].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	mrs=form.txtmrs[h].value; 		
	}
	else
	{
	var f=document.getElementById('h');
	var bc=form.txtmrs[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var i = 0; i < form.txtlr.length; i++ ) {
        if (form.txtlr[i].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	 break;
        	}
    }
	
	if(count==1)
	{
		lr=form.txtlr[i].value; 		
	}
	else
	{
	var f=document.getElementById('i');
	var bc=form.txtlr[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var j = 0; j < form.txtlw.length; j++ ) {
        if (form.txtlw[j].checked==false) {
        	count=0;
            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		lw=form.txtlw[j].value; 		
	}
	else
	{
	var f=document.getElementById('j');
	var bc=form.txtlw[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var k = 0; k < form.txtnumb.length; k++ ) {
        if (form.txtnumb[k].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		numb=form.txtnumb[k].value; 		
	}
	else
	{
	var f=document.getElementById('k');
	var bc=form.txtnumb[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var l = 0; l < form.txtssm.length; l++ ) {
        if (form.txtssm[l].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ssm=form.txtssm[l].value; 		
	}
	else
	{
	var f=document.getElementById('l');
	var bc=form.txtssm[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var m = 0; m < form.txtpc.length; m++ ) {
        if (form.txtpc[m].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	if(count==1)
	{
		pc=form.txtpc[m].value; 		
	}
	else
	{
	var f=document.getElementById('m');
	var bc=form.txtpc[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var n = 0; n < form.txttw.length; n++ ) {
        if (form.txttw[n].checked==false)
        {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		tw=form.txttw[n].value; 		
	}
	else
	{
	var f=document.getElementById('n');
	var bc=form.txttw[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var o = 0; o < form.txttechno.length; o++ ) {
        if (form.txttechno[o].checked==false) {
          count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	
	if(count==1)
	{
		techno=form.txttechno[o].value; 		
	}
	else
	{
	var f=document.getElementById('o');
	var bc=form.txttechno[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var p = 0; p < form.txteumm.length; p++ ) {
        if (form.txteumm[p].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		eumm=form.txteumm[p].value; 		
	}
	else
	{
	var f=document.getElementById('p');
	var bc=form.txteumm[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var q = 0; q < form.txtbim.length; q++ ) {
        if (form.txtbim[q].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		bim=form.txtbim[q].value; 		
	}
	else
	{
	var f=document.getElementById('q');
	var bc=form.txtbim[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	 
	
		
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('Display').innerHTML=xmlhttp.responseText;;        	
        }
    };
  xmlhttp.open("POST","saveprofile2.jsp?id="+id+"&listening="+listening+"&understanding="+understanding+"&speaking="+speaking+"&mh="+mh+"&hsc="+hsc+"&psed="+psed+"&mfb="+mfb+"&mrs="+mrs+"&lr="+lr+"&lw="+lw+"&numb="+numb+"&ssm="+ssm+"&pc="+pc+"&tw="+tw+"&techno="+techno+"&eumm="+eumm+"&bim="+bim
,true);
    xmlhttp.send();
}



function updateprofile(id,form)
{	
	for (var a = 0; a < form.txtlistening.length; a++ ) {
		 if (form.txtlistening[a].checked) {
            break;
        }
    }	
	
	
	for (var b = 0; b < form.txtunderstanding.length; b++ ) {
        if (form.txtunderstanding[b].checked) {
            break;
        }
    }
	
	for (var c = 0; c < form.txtspeaking.length; c++ ) {
        if (form.txtspeaking[c].checked) {
            break;
        }
    }
	
	for (var d = 0; d < form.txtmh.length; d++ ) {
        if (form.txtmh[d].checked) {
            break;
        }
    }
	
	for (var e = 0; e < form.txthsc.length; e++ ) {
        if (form.txthsc[e].checked) {
            break;
        }
    }
	
	for (var f = 0; f < form.txtpsed.length; f++ ) {
        if (form.txtpsed[f].checked) {
            break;
        }
    }
	for (var g = 0; g < form.txtmfb.length; g++ ) {
        if (form.txtmfb[g].checked) {
            break;
        }
    }
	
	
	for (var h = 0; h < form.txtmrs.length; h++ ) {
        if (form.txtmrs[h].checked) {
            break;
        }
    }
	
	for (var i = 0; i < form.txtlr.length; i++ ) {
        if (form.txtlr[i].checked) {
            break;
        }
    }
	
	for (var j = 0; j < form.txtlw.length; j++ ) {
        if (form.txtlw[j].checked) {
            break;
        }
    }
	
	for (var k = 0; k < form.txtnumb.length; k++ ) {
        if (form.txtnumb[k].checked) {
            break;
        }
    }
	
	for (var l = 0; l < form.txtssm.length; l++ ) {
        if (form.txtssm[l].checked) {
            break;
        }
    }
	
	for (var m = 0; m < form.txtpc.length; m++ ) {
        if (form.txtpc[m].checked) {
            break;
        }
    }
	
	for (var n = 0; n < form.txttw.length; n++ ) {
        if (form.txttw[n].checked) {
            break;
        }
    }
	
	for (var o = 0; o < form.txttechno.length; o++ ) {
        if (form.txttechno[o].checked) {
            break;
        }
    }
	
	for (var p = 0; p < form.txteumm.length; p++ ) {
        if (form.txteumm[p].checked) {
            break;
        }
    }
	
	for (var q = 0; q < form.txtbim.length; q++ ) {
        if (form.txtbim[q].checked) {
            break;
        }
    }
	
	listening=form.txtlistening[a].value;  
	understanding=form.txtunderstanding[b].value;
	speaking=form.txtspeaking[c].value;
	mh=form.txtmh[d].value;
	hsc=form.txthsc[e].value;
	psed=form.txtpsed[f].value;
	mfb=form.txtmfb[g].value;	
	mrs=form.txtmrs[h].value;
	lr=form.txtlr[i].value;
	lw=form.txtlw[j].value;	
	numb=form.txtnumb[k].value;
	ssm=form.txtssm[l].value;
	pc=form.txtpc[m].value;
	tw=form.txttw[n].value;
	techno=form.txttechno[o].value;
	eumm=form.txteumm[p].value;
	bim=form.txtbim[q].value;
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('Display').innerHTML=xmlhttp.responseText;;        	
        }
    };
  xmlhttp.open("get","updateprofile2.jsp?id="+id+"&listening="+listening+"&understanding="+understanding+"&speaking="+speaking+"&mh="+mh+"&hsc="+hsc+"&psed="+psed+"&mfb="+mfb+"&mrs="+mrs+"&lr="+lr+"&lw="+lw+"&numb="+numb+"&ssm="+ssm+"&pc="+pc+"&tw="+tw+"&techno="+techno+"&eumm="+eumm+"&bim="+bim
,true);
    xmlhttp.send();
}


function displaysavemidyearforprimary(text)
{
document.getElementById('Display').innerHTML = text;
}

function savemidyearforprimary(id,form,lrn,lwn,lsn,num,sci,hum,aad,gc,callbackFunction)
{
	
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');
	var ff=document.getElementById('f');	
	var gg=document.getElementById('g');
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";	
	   gg.style.border="solid 0px";
	   gg.style.borderColor="";
	
for (var a = 0; a < form.txtliteracyr.length; a++ ) {
	
		 if (form.txtliteracyr[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   literacyr=form.txtliteracyr[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtliteracyr[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
   bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtliteracyw.length; b++ ) {
        if (form.txtliteracyw[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		literacyw=form.txtliteracyw[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtliteracyw[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtliteracys.length; c++ ) {
        if (form.txtliteracys[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   literacys=form.txtliteracys[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtliteracys[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtnumeracy.length; d++ ) {
        if (form.txtnumeracy[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		numeracy=form.txtnumeracy[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtnumeracy[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var e = 0; e < form.txtscience.length; e++ ) {
        if (form.txtscience[e].checked==false) {
        	count=0;            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		science=form.txtscience[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtscience[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var f = 0; f < form.txthumanities.length; f++ ) {
        if (form.txthumanities[f].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
	 humanities=form.txthumanities[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txthumanities[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var g = 0; g < form.txtad.length; g++ ) {
        if (form.txtad[g].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ad=form.txtad[g].value; 		
	}
	else
	{
	var f=document.getElementById('g');
	var bc=form.txtad[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

	
	
	
	                                                                                                       
	if(literacyr=="" || lrn=="" || literacyw=="" || lwn=="" || literacys=="" || lsn=="" || numeracy=="" || num=="" || science=="" || sci=="" || humanities=="" || hum=="" || ad=="" || aad=="" || gc=="")
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="savekeystageonemidyearforprimary.jsp";	
		var sendmessage="id="+id+"&literacyr="+literacyr+"&lrn="+lrn+"&literacyw="+literacyw+"&lwn="+lwn+"&literacys="+literacys+"&lsn="+lsn+"&numeracy="+numeracy+"&num="+num+"&science="+science+"&sci="+sci+"&humanities="+humanities+"&hum="+hum+"&ad="+ad+"&aad="+aad+"&gc="+gc;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}




function updatemidyearforprimary(id,form,lrn,lwn,lsn,num,sci,hum,aad,gc,callbackFunction)
{
	for (var a = 0; a < form.txtliteracyr.length; a++ ) {
        if (form.txtliteracyr[a].checked) {
            break;
        }
    }	
	
	
	for (var b = 0; b < form.txtliteracyw.length; b++ ) {
        if (form.txtliteracyw[b].checked) {
            break;
        }
    }
	
	for (var c = 0; c < form.txtliteracys.length; c++ ) {
        if (form.txtliteracys[c].checked) {
            break;
        }
    }
	
	for (var d = 0; d < form.txtnumeracy.length; d++ ) {
        if (form.txtnumeracy[d].checked) {
            break;
        }
    }
	
	for (var e = 0; e < form.txtscience.length; e++ ) {
        if (form.txtscience[e].checked) {
            break;
        }
    }
	
	for (var f = 0; f < form.txthumanities.length; f++ ) {
        if (form.txthumanities[f].checked) {
            break;
        }
    }
	for (var g = 0; g < form.txtad.length; g++ ) {
        if (form.txtad[g].checked) {
            break;
        }
    }
	
	
	
	literacyr=form.txtliteracyr[a].value;  
	literacyw=form.txtliteracyw[b].value;
	literacys=form.txtliteracys[c].value;
	numeracy=form.txtnumeracy[d].value;
	science=form.txtscience[e].value;
	humanities=form.txthumanities[f].value;
	ad=form.txtad[g].value;	
	
	                                                                                                       
	if(literacyr=="" || lrn=="" || literacyw=="" || lwn=="" || literacys=="" || lsn=="" || numeracy=="" || num=="" || science=="" || sci=="" || humanities=="" || hum=="" || ad=="" || aad=="" || gc=="")
		{
		Validateprofile2();
		return false;
		}
	else
		{
	
		var url="updatekeystageonemidyearforprimary.jsp";	
		var sendmessage="id="+id+"&literacyr="+literacyr+"&lrn="+lrn+"&literacyw="+literacyw+"&lwn="+lwn+"&literacys="+literacys+"&lsn="+lsn+"&numeracy="+numeracy+"&num="+num+"&science="+science+"&sci="+sci+"&humanities="+humanities+"&hum="+hum+"&ad="+ad+"&aad="+aad+"&gc="+gc;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}

}



function savemidyearforprimaryy(id,form,txtln,txtnn,txtipcn,txtsn,txtgc,callbackFunction)
{	
	var aaaa=document.getElementById('a');	
	var bbb=document.getElementById('b');	
	var ccc=document.getElementById('c');	
	var ddd=document.getElementById('d');	
	var eee=document.getElementById('e');
	var fff=document.getElementById('f');	
	var ggg=document.getElementById('g');	
	var hhh=document.getElementById('h');
	document.getElementById('error').innerHTML = ("");
	   aaaa.style.border="solid 0px";
	   aaaa.style.borderColor="";	
	   bbb.style.border="solid 0px";
	   bbb.style.borderColor="";	
	   ccc.style.border="solid 0px";
	   ccc.style.borderColor="";	
	   ddd.style.border="solid 0px";
	   ddd.style.borderColor="";
	   eee.style.border="solid 0px";
	   eee.style.borderColor="";
	   fff.style.border="solid 0px";
	   fff.style.borderColor="";	
	   ggg.style.border="solid 0px";
	   ggg.style.borderColor="";
	   hhh.style.border="solid 0px";
	   hhh.style.borderColor="";
	   
		for (var a = 0; a < form.txtliteracya.length; a++ ) {
	
		 if (form.txtliteracya[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   literacya=form.txtliteracya[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtliteracya[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
for (var aa = 0; aa < form.txtliteracye.length; aa++ ) {
	
		 if (form.txtliteracye[aa].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   literacye=form.txtliteracye[aa].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtliteracye[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	

	
	
	for (var b = 0; b < form.txtnuma.length; b++ ) {
        if (form.txtnuma[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		numa=form.txtnuma[b].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtnuma[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	for (var bb = 0; bb < form.txtnume.length; bb++ ) {
        if (form.txtnume[bb].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		nume=form.txtnume[bb].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtnume[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	
	///////////////////
	
	for (var c = 0; c < form.txtipca.length; c++ ) {
        if (form.txtipca[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   ipca=form.txtipca[c].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtipca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	for (var cc = 0; cc < form.txtipce.length; cc++ ) {
        if (form.txtipce[cc].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   ipce=form.txtipce[cc].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtipce[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	
	
	for (var d = 0; d < form.txtsca.length; d++ ) {
        if (form.txtsca[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		sca=form.txtsca[d].value; 		
	}
	else
	{
	var f=document.getElementById('g');
	var bc=form.txtsca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var dd = 0; dd < form.txtsce.length; dd++ ) {
        if (form.txtsce[dd].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		sce=form.txtsce[dd].value; 		
	}
	else
	{
	var f=document.getElementById('h');
	var bc=form.txtsce[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	if(txtln=="" || txtnn=="" || txtipcn=="" || txtsn=="" || txtgc=="")
	{
	Validateprofile2();
	return false;
	}
	else
		{
		var url="savekeystagetwomidyearforprimary.jsp";	
		var sendmessage="id="+id+"&literacya="+literacya+"&literacye="+literacye+"&txtln="+txtln+"&numa="+numa+"&nume="+nume+"&txtnn="+txtnn+"&ipca="+ipca+"&ipce="+ipce+"&txtipcn="+txtipcn+"&sca="+sca+"&sce="+sce+"&txtsn="+txtsn+"&txtgc="+txtgc;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}
	


function updatemidyearforprimaryy(id,form,txtln,txtnn,txtipcn,txtsn,txtgc,callbackFunction)
{	
		
	for (var a = 0; a < form.txtliteracya.length; a++ ) {		
	if (form.txtliteracya[a].checked) {
            break;
        }
    }	
	
	for (var aa = 0; aa < form.txtliteracye.length; aa++ ) {
		if (form.txtliteracye[aa].checked)
		{
            break;
        }
    }	
	
	
	for (var b = 0; b < form.txtnuma.length; b++ ) {
        if (form.txtnuma[b].checked) {
            break;
        }
    }
	
	for (var bb = 0; bb < form.txtnume.length; bb++ ) {
        if (form.txtnume[bb].checked) {
            break;
        }
    }
	
	
	
	for (var c = 0; c < form.txtipca.length; c++ ) {
        if (form.txtipca[c].checked) {
            break;
        }
    }
	
	for (var cc = 0; cc < form.txtipce.length; cc++ ) {
        if (form.txtipce[cc].checked) {
            break;
        }
    }
	
	
	for (var d = 0; d < form.txtsca.length; d++ ) {
        if (form.txtsca[d].checked) {
            break;
        }
    }
	
	for (var dd = 0; dd < form.txtsce.length; dd++ ) {
        if (form.txtsce[dd].checked) {
            break;
        }
    }
	
	
	
	literacya=form.txtliteracya[a].value;  
	literacye=form.txtliteracye[aa].value;
	
	numa=form.txtnuma[b].value;
	nume=form.txtnume[b].value;
	
	ipca=form.txtipca[c].value;
	ipce=form.txtipce[cc].value;
	
	sca=form.txtsca[d].value;
	sce=form.txtsce[dd].value;
	
	
	if(txtln=="" || txtnn=="" || txtipcn=="" || txtsn=="" || txtgc=="")
	{
	Validateprofile2();
	return false;
	}
	else
		{
		var url="updatekeystagetwomidyearforprimary.jsp";	
		var sendmessage="id="+id+"&literacya="+literacya+"&literacye="+literacye+"&txtln="+txtln+"&numa="+numa+"&nume="+nume+"&txtnn="+txtnn+"&ipca="+ipca+"&ipce="+ipce+"&txtipcn="+txtipcn+"&sca="+sca+"&sce="+sce+"&txtsn="+txtsn+"&txtgc="+txtgc;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}


function display(text)
{
document.getElementById('Display').innerHTML = text;
}

function saveendofschool(sid,form,lrn,lwn,lsln,uaamn,naan,ssmn,dhn,isn,kacn,rsn,hkacn,atn,cn,gc,st,callbackFunction)
{
		
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');
	var ff=document.getElementById('f');	
	var gg=document.getElementById('g');	
	var hh=document.getElementById('h');	
	var ii=document.getElementById('i');	
	var jj=document.getElementById('j');
	var kk=document.getElementById('k');	
	var ll=document.getElementById('l');	
	var mm=document.getElementById('m');	
	var nn=document.getElementById('n');	
	var oo=document.getElementById('o');
	var pp=document.getElementById('p');	
	var qq=document.getElementById('q');
	var rr=document.getElementById('r');
	var ss=document.getElementById('s');
	var tt=document.getElementById('t');
	var uu=document.getElementById('u');
	var vv=document.getElementById('v');
	var ww=document.getElementById('w');
	var xx=document.getElementById('x');
	var yy=document.getElementById('y');
	var zz=document.getElementById('z');
	
	
	
	   document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";	
	   gg.style.border="solid 0px";
	   gg.style.borderColor="";
	   hh.style.border="solid 0px";
	   hh.style.borderColor="";
	   ii.style.border="solid 0px";
	   ii.style.borderColor="";
	   jj.style.border="solid 0px";
	   jj.style.borderColor="";
	   kk.style.border="solid 0px";
	   kk.style.borderColor="";
	   ll.style.border="solid 0px";
	   ll.style.borderColor="";
	   mm.style.border="solid 0px";
	   mm.style.borderColor="";
	   nn.style.border="solid 0px";
	   nn.style.borderColor="";
	   oo.style.border="solid 0px";
	   oo.style.borderColor="";
	   pp.style.border="solid 0px";
	   pp.style.borderColor="";
	   qq.style.border="solid 0px";
	   qq.style.borderColor="";		   
	   rr.style.border="solid 0px";
	   rr.style.borderColor="";
	   ss.style.border="solid 0px";
	   ss.style.borderColor="";
	   tt.style.border="solid 0px";
	   tt.style.borderColor="";
	   uu.style.border="solid 0px";
	   uu.style.borderColor="";
	   vv.style.border="solid 0px";
	   vv.style.borderColor="";
	   ww.style.border="solid 0px";
	   ww.style.borderColor="";
	   xx.style.border="solid 0px";
	   xx.style.borderColor="";
	   yy.style.border="solid 0px";
	   yy.style.borderColor="";
	   zz.style.border="solid 0px";
	   zz.style.borderColor="";	
	   
	for (var a = 0; a < form.txtliteracyra.length; a++ ) {
	
		 if (form.txtliteracyra[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   literacyra=form.txtliteracyra[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtliteracyra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtliteracyre.length; b++ ) {
        if (form.txtliteracyre[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		literacyre=form.txtliteracyre[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtliteracyre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtliteracywa.length; c++ ) {
        if (form.txtliteracywa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   literacywa=form.txtliteracywa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtliteracywa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtliteracywe.length; d++ ) {
        if (form.txtliteracywe[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		literacywe=form.txtliteracywe[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtliteracywe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var e = 0; e < form.txtliteracyslea.length; e++ ) {
        if (form.txtliteracyslea[e].checked==false) {
        	count=0;            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		literacyslea=form.txtliteracyslea[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtliteracyslea[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var f = 0; f < form.txtliteracysle.length; f++ ) {
        if (form.txtliteracysle[f].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
	  literacysle=form.txtliteracysle[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtliteracysle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var g = 0; g < form.txtuaama.length; g++ ) {
        if (form.txtuaama[g].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		uaama=form.txtuaama[g].value; 		
	}
	else
	{
	var f=document.getElementById('g');
	var bc=form.txtuaama[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var h = 0; h < form.txtuaame.length; h++ ) {
        if (form.txtuaame[h].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	uaame=form.txtuaame[h].value; 		
	}
	else
	{
	var f=document.getElementById('h');
	var bc=form.txtuaame[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var i = 0; i < form.txtnaaa.length; i++ ) {
        if (form.txtnaaa[i].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	 break;
        	}
    }
	
	if(count==1)
	{
		naaa=form.txtnaaa[i].value; 		
	}
	else
	{
	var f=document.getElementById('i');
	var bc=form.txtnaaa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var j = 0; j < form.txtnaae.length; j++ ) {
        if (form.txtnaae[j].checked==false) {
        	count=0;
            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		naae=form.txtnaae[j].value; 		
	}
	else
	{
	var f=document.getElementById('j');
	var bc=form.txtnaae[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	for (var k = 0; k < form.txtssma.length; k++ ) {
        if (form.txtssma[k].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ssma=form.txtssma[k].value; 		
	}
	else
	{
	var f=document.getElementById('k');
	var bc=form.txtssma[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var l = 0; l < form.txtssme.length; l++ ) {
        if (form.txtssme[l].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ssme=form.txtssme[l].value; 		
	}
	else
	{
	var f=document.getElementById('l');
	var bc=form.txtssme[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
	for (var m = 0; m < form.txtdha.length; m++ ) {
        if (form.txtdha[m].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	if(count==1)
	{
		dha=form.txtdha[m].value; 		
	}
	else
	{
	var f=document.getElementById('m');
	var bc=form.txtdha[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var n = 0; n < form.txtdhe.length; n++ ) {
        if (form.txtdhe[n].checked==false)
        {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		dhe=form.txtdhe[n].value; 		
	}
	else
	{
	var f=document.getElementById('n');
	var bc=form.txtdhe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	for (var o = 0; o < form.txtisa.length; o++ ) {
        if (form.txtisa[o].checked==false) {
          count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	
	if(count==1)
	{
		isa=form.txtisa[o].value; 		
	}
	else
	{
	var f=document.getElementById('o');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var p = 0; p < form.txtise.length; p++ ) {
        if (form.txtise[p].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ise=form.txtise[p].value; 		
	}
	else
	{
	var f=document.getElementById('p');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var q = 0; q < form.txtkaca.length; q++ ) {
        if (form.txtkaca[q].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		kaca=form.txtkaca[q].value; 		
	}
	else
	{
	var f=document.getElementById('q');
	var bc=form.txtkaca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var r = 0; r < form.txtkace.length; r++ ) {
        if (form.txtkace[r].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		kace=form.txtkace[r].value; 		
	}
	else
	{
	var f=document.getElementById('r');
	var bc=form.txtkace[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
//////////////////////////////////

for (var s = 0; s < form.txtrsa.length; s++ ) {
        if (form.txtrsa[s].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		rsa=form.txtrsa[s].value; 		
	}
	else
	{
	var f=document.getElementById('s');
	var bc=form.txtrsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var t = 0; t < form.txtrse.length; t++ ) {
        if (form.txtrse[t].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		rse=form.txtrse[t].value; 		
	}
	else
	{
	var f=document.getElementById('t');
	var bc=form.txtrse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var u = 0; u < form.txthkaca.length; u++ ) {
        if (form.txthkaca[u].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		hkaca=form.txthkaca[u].value; 		
	}
	else
	{
	var f=document.getElementById('u');
	var bc=form.txthkaca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var v = 0; v < form.txthkace.length; v++ ) {
        if (form.txthkace[v].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		hkace=form.txthkace[v].value; 		
	}
	else
	{
	var f=document.getElementById('v');
	var bc=form.txthkace[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var w = 0; w < form.txtata.length; w++ ) {
        if (form.txtata[w].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ata=form.txtata[w].value; 		
	}
	else
	{
	var f=document.getElementById('w');
	var bc=form.txtata[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var x = 0; x < form.txtate.length; x++ ) {
        if (form.txtate[x].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ate=form.txtate[x].value; 		
	}
	else
	{
	var f=document.getElementById('x');
	var bc=form.txtate[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

for (var y = 0; y < form.txtca.length; y++ ) {
        if (form.txtca[y].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ca=form.txtca[y].value; 		
	}
	else
	{
	var f=document.getElementById('y');
	var bc=form.txtca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

for (var z = 0; z < form.txtce.length; z++ ) {
        if (form.txtce[z].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ce=form.txtce[z].value; 		
	}
	else
	{
	var f=document.getElementById('z');
	var bc=form.txtce[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	if(sid=="" || literacyra=="" || lrn=="" || lwn=="" || lsln=="" || uaamn=="" || naan=="" || ssmn=="" || dhn=="" || isn=="" || kacn=="" || rsn=="" || hkacn=="" || atn=="" || cn=="" || gc=="" || st=="")
		{
		Validateprofile2();
		return false;
		}
    else
	{
    	/*
    	if (window.XMLHttpRequest)
    	    {// code for IE7+, Firefox, Chrome, Opera, Safari
    	        xmlhttp=new XMLHttpRequest();
    	    }
    	    else
    	    {// code for IE6, IE5
    	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	    }
    	    xmlhttp.onreadystatechange=function()
    	    {
    	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	        {
    	        	document.getElementById('Display').innerHTML=xmlhttp.responseText;
    	           
    	        }
    	    };
    	    xmlhttp.open("POST","savekeystageoneendofschoolreport.jsp?sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st,true);
    	    xmlhttp.send();

    	*/
    	url="savekeystageoneendofschoolreport.jsp";
    	var sendmessage="sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}    	
  }
}

function updateendofschool(sid,form,lrn,lwn,lsln,uaamn,naan,ssmn,dhn,isn,kacn,rsn,hkacn,atn,cn,gc,st,callbackFunction)
{
		
	for (var aa = 0; aa < form.txtliteracyra.length; aa++ ) {
        if (form.txtliteracyra[aa].checked) {
            break;
        }
    }

for (var b = 0; b < form.txtliteracyre.length; b++ ) {
        if (form.txtliteracyre[b].checked) {
            break;
        }
    }
	
for (var bb = 0; bb < form.txtliteracywa.length; bb++ ){
        if (form.txtliteracywa[bb].checked) 
        {
            break;
        }
    }

for (var c = 0; c < form.txtliteracywe.length; c++ ) {
        if (form.txtliteracywe[c].checked) {
            break;
        }
    }
	
	for (var cc = 0; cc < form.txtliteracysle.length; cc++ ) {
        if (form.txtliteracysle[cc].checked) {
            break;
        }
    }
	
	
	for (var d = 0; d < form.txtliteracysle.length; d++ ) {
        if (form.txtliteracysle[d].checked) {
            break;
        }
    }
	
	for (var dd = 0; dd < form.txtuaama.length; dd++ ) {
        if (form.txtuaama[dd].checked) {
            break;
        }
    }


for (var e = 0; e < form.txtuaame.length; e++ ) {
        if (form.txtuaame[e].checked) {
            break;
        }
    }
for (var ee = 0; ee < form.txtnaaa.length; ee++ ) {
        if (form.txtnaaa[ee].checked) {
            break;
        }
    }
for (var f = 0; f < form.txtnaae.length; f++ ) {
        if (form.txtnaae[f].checked) {
            break;
        }
    }

for (var ff = 0; ff < form.txtssma.length; ff++ ) {
        if (form.txtssma[ff].checked) {
            break;
        }
    }
for (var g = 0; g < form.txtssme.length; g++ ) {
        if (form.txtssme[g].checked) {
            break;
        }
    }

for (var gg = 0; gg < form.txtdha.length; gg++ ) {
        if (form.txtdha[gg].checked) {
            break;
        }
    }
for (var h = 0; h < form.txtdhe.length; h++ ) {
        if (form.txtdhe[h].checked) {
            break;
        }
    }
for (var hh = 0; hh < form.txtisa.length; hh++ ) {
        if (form.txtisa[hh].checked) {
            break;
        }
    }
for (var i = 0; i < form.txtise.length; i++ ) {
        if (form.txtise[i].checked) {
            break;
        }
    }
for (var ii = 0; ii < form.txtkaca.length; ii++ ) {
        if (form.txtkaca[ii].checked) {
            break;
        }
    }
for (var j = 0; j < form.txtkace.length; j++ ) {
        if (form.txtkace[j].checked) {
            break;
        }
    }
for (var jj = 0; jj < form.txtrsa.length; jj++ ) {
        if (form.txtrsa[jj].checked) {
            break;
        }
    }
for (var k = 0; k < form.txtrse.length; k++ ) {
        if (form.txtrse[k].checked) {
            break;
        }
    }


for (var kk = 0; kk < form.txthkaca.length; kk++ ) {
        if (form.txthkaca[kk].checked) {
            break;
        }
    }
for (var l = 0; l < form.txthkace.length; l++ ) {
        if (form.txthkace[l].checked) {
            break;
        }
    }

for (var ll = 0; ll < form.txtata.length; ll++ ) {
        if (form.txtata[ll].checked) {
            break;
        }
    }
for (var m = 0; m < form.txtate.length; m++ ) {
        if (form.txtate[m].checked) {
            break;
        }
    }
for (var mm = 0; mm < form.txtca.length; mm++ ) {
        if (form.txtca[mm].checked) {
            break;
        }
    }
for (var n = 0; n < form.txtce.length; n++ ) {
        if (form.txtce[n].checked) {
            break;
        }
    }


literacyra=form.txtliteracyra[aa].value;
literacyre=form.txtliteracyre[b].value;
literacywa=form.txtliteracywa[bb].value;
literacywe=form.txtliteracywe[c].value;
literacyslea=form.txtliteracyslea[cc].value;
literacysle=form.txtliteracysle[d].value;
uaama=form.txtuaama[dd].value;
uaame=form.txtuaame[e].value;
naaa=form.txtnaaa[ee].value;
naae=form.txtnaae[f].value;
ssma=form.txtssma[ff].value;
ssme=form.txtssme[g].value;
dha=form.txtdha[gg].value;
dhe=form.txtdhe[h].value;
isa=form.txtisa[hh].value;
ise=form.txtise[i].value;
kaca=form.txtkaca[ii].value;
kace=form.txtkace[j].value;
rsa=form.txtrsa[jj].value;
rse=form.txtrse[k].value;
hkaca=form.txthkaca[kk].value;
hkace=form.txthkace[l].value;
ata=form.txtata[ll].value;
ate=form.txtate[m].value;
ca=form.txtca[mm].value;
ce=form.txtce[n].value;

	if(sid=="" || lrn=="" || lwn=="" || lsln=="" || uaamn=="" || naan=="" || ssmn=="" || dhn=="" || isn=="" || kacn=="" || rsn=="" || hkacn=="" || atn=="" || cn=="" || gc=="" || st=="")
		{
		Validateprofile2();
		return false;
		}
    else
	{
    	/*
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('Display').innerHTML=xmlhttp.responseText;
           
        }
    };
    xmlhttp.open("POST","updatekeystageoneendofschoolreport.jsp?sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st,true);
    xmlhttp.send();
    */
    	url="updatekeystageoneendofschoolreport.jsp";
    	var sendmessage="sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}
	}
}


function saveendofschooll(sid,form,lrn,lwn,lsln,uaamn,naan,ssmn,dhn,isn,kacn,rsn,hkacn,atn,cn,gc,st,callbackFunction)
{
	
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');
	var ff=document.getElementById('f');	
	var gg=document.getElementById('g');	
	var hh=document.getElementById('h');	
	var ii=document.getElementById('i');	
	var jj=document.getElementById('j');
	var kk=document.getElementById('k');	
	var ll=document.getElementById('l');	
	var mm=document.getElementById('m');	
	var nn=document.getElementById('n');	
	var oo=document.getElementById('o');
	var pp=document.getElementById('p');	
	var qq=document.getElementById('q');
	var rr=document.getElementById('r');
	var ss=document.getElementById('s');
	var tt=document.getElementById('t');
	var uu=document.getElementById('u');
	var vv=document.getElementById('v');
	var ww=document.getElementById('w');
	var xx=document.getElementById('x');
	var yy=document.getElementById('y');
	var zz=document.getElementById('z');
	
	
	
	   document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";	
	   gg.style.border="solid 0px";
	   gg.style.borderColor="";
	   hh.style.border="solid 0px";
	   hh.style.borderColor="";
	   ii.style.border="solid 0px";
	   ii.style.borderColor="";
	   jj.style.border="solid 0px";
	   jj.style.borderColor="";
	   kk.style.border="solid 0px";
	   kk.style.borderColor="";
	   ll.style.border="solid 0px";
	   ll.style.borderColor="";
	   mm.style.border="solid 0px";
	   mm.style.borderColor="";
	   nn.style.border="solid 0px";
	   nn.style.borderColor="";
	   oo.style.border="solid 0px";
	   oo.style.borderColor="";
	   pp.style.border="solid 0px";
	   pp.style.borderColor="";
	   qq.style.border="solid 0px";
	   qq.style.borderColor="";		   
	   rr.style.border="solid 0px";
	   rr.style.borderColor="";
	   ss.style.border="solid 0px";
	   ss.style.borderColor="";
	   tt.style.border="solid 0px";
	   tt.style.borderColor="";
	   uu.style.border="solid 0px";
	   uu.style.borderColor="";
	   vv.style.border="solid 0px";
	   vv.style.borderColor="";
	   ww.style.border="solid 0px";
	   ww.style.borderColor="";
	   xx.style.border="solid 0px";
	   xx.style.borderColor="";
	   yy.style.border="solid 0px";
	   yy.style.borderColor="";
	   zz.style.border="solid 0px";
	   zz.style.borderColor="";	
	   
	for (var a = 0; a < form.txtliteracyra.length; a++ ) {
	
		 if (form.txtliteracyra[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	   literacyra=form.txtliteracyra[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtliteracyra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtliteracyre.length; b++ ) {
        if (form.txtliteracyre[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		literacyre=form.txtliteracyre[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtliteracyre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtliteracywa.length; c++ ) {
        if (form.txtliteracywa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   literacywa=form.txtliteracywa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtliteracywa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtliteracywe.length; d++ ) {
        if (form.txtliteracywe[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		literacywe=form.txtliteracywe[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtliteracywe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var e = 0; e < form.txtliteracyslea.length; e++ ) {
        if (form.txtliteracyslea[e].checked==false) {
        	count=0;            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		literacyslea=form.txtliteracyslea[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtliteracyslea[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var f = 0; f < form.txtliteracysle.length; f++ ) {
        if (form.txtliteracysle[f].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
	  literacysle=form.txtliteracysle[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtliteracysle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var g = 0; g < form.txtuaama.length; g++ ) {
        if (form.txtuaama[g].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		uaama=form.txtuaama[g].value; 		
	}
	else
	{
	var f=document.getElementById('g');
	var bc=form.txtuaama[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var h = 0; h < form.txtuaame.length; h++ ) {
        if (form.txtuaame[h].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	uaame=form.txtuaame[h].value; 		
	}
	else
	{
	var f=document.getElementById('h');
	var bc=form.txtuaame[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var i = 0; i < form.txtnaaa.length; i++ ) {
        if (form.txtnaaa[i].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	 break;
        	}
    }
	
	if(count==1)
	{
		naaa=form.txtnaaa[i].value; 		
	}
	else
	{
	var f=document.getElementById('i');
	var bc=form.txtnaaa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var j = 0; j < form.txtnaae.length; j++ ) {
        if (form.txtnaae[j].checked==false) {
        	count=0;
            
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		naae=form.txtnaae[j].value; 		
	}
	else
	{
	var f=document.getElementById('j');
	var bc=form.txtnaae[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	for (var k = 0; k < form.txtssma.length; k++ ) {
        if (form.txtssma[k].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ssma=form.txtssma[k].value; 		
	}
	else
	{
	var f=document.getElementById('k');
	var bc=form.txtssma[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var l = 0; l < form.txtssme.length; l++ ) {
        if (form.txtssme[l].checked==false) {
           count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ssme=form.txtssme[l].value; 		
	}
	else
	{
	var f=document.getElementById('l');
	var bc=form.txtssme[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
	for (var m = 0; m < form.txtdha.length; m++ ) {
        if (form.txtdha[m].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	if(count==1)
	{
		dha=form.txtdha[m].value; 		
	}
	else
	{
	var f=document.getElementById('m');
	var bc=form.txtdha[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var n = 0; n < form.txtdhe.length; n++ ) {
        if (form.txtdhe[n].checked==false)
        {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		dhe=form.txtdhe[n].value; 		
	}
	else
	{
	var f=document.getElementById('n');
	var bc=form.txtdhe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	for (var o = 0; o < form.txtisa.length; o++ ) {
        if (form.txtisa[o].checked==false) {
          count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
        
    }
	
	if(count==1)
	{
		isa=form.txtisa[o].value; 		
	}
	else
	{
	var f=document.getElementById('o');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var p = 0; p < form.txtise.length; p++ ) {
        if (form.txtise[p].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ise=form.txtise[p].value; 		
	}
	else
	{
	var f=document.getElementById('p');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var q = 0; q < form.txtkaca.length; q++ ) {
        if (form.txtkaca[q].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		kaca=form.txtkaca[q].value; 		
	}
	else
	{
	var f=document.getElementById('q');
	var bc=form.txtkaca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	for (var r = 0; r < form.txtkace.length; r++ ) {
        if (form.txtkace[r].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		kace=form.txtkace[r].value; 		
	}
	else
	{
	var f=document.getElementById('r');
	var bc=form.txtkace[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
//////////////////////////////////

for (var s = 0; s < form.txtrsa.length; s++ ) {
        if (form.txtrsa[s].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		rsa=form.txtrsa[s].value; 		
	}
	else
	{
	var f=document.getElementById('s');
	var bc=form.txtrsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var t = 0; t < form.txtrse.length; t++ ) {
        if (form.txtrse[t].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		rse=form.txtrse[t].value; 		
	}
	else
	{
	var f=document.getElementById('t');
	var bc=form.txtrse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var u = 0; u < form.txthkaca.length; u++ ) {
        if (form.txthkaca[u].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		hkaca=form.txthkaca[u].value; 		
	}
	else
	{
	var f=document.getElementById('u');
	var bc=form.txthkaca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var v = 0; v < form.txthkace.length; v++ ) {
        if (form.txthkace[v].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		hkace=form.txthkace[v].value; 		
	}
	else
	{
	var f=document.getElementById('v');
	var bc=form.txthkace[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var w = 0; w < form.txtata.length; w++ ) {
        if (form.txtata[w].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ata=form.txtata[w].value; 		
	}
	else
	{
	var f=document.getElementById('w');
	var bc=form.txtata[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
for (var x = 0; x < form.txtate.length; x++ ) {
        if (form.txtate[x].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ate=form.txtate[x].value; 		
	}
	else
	{
	var f=document.getElementById('x');
	var bc=form.txtate[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

for (var y = 0; y < form.txtca.length; y++ ) {
        if (form.txtca[y].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ca=form.txtca[y].value; 		
	}
	else
	{
	var f=document.getElementById('y');
	var bc=form.txtca[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

for (var z = 0; z < form.txtce.length; z++ ) {
        if (form.txtce[z].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	
	if(count==1)
	{
		ce=form.txtce[z].value; 		
	}
	else
	{
	var f=document.getElementById('z');
	var bc=form.txtce[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}

	if(sid=="" || literacyra=="" || lrn=="" || lwn=="" || lsln=="" || uaamn=="" || naan=="" || ssmn=="" || dhn=="" || isn=="" || kacn=="" || rsn=="" || hkacn=="" || atn=="" || cn=="" || gc=="" || st=="")
		{
		Validateprofile2();
		return false;
		}
    else
	{
    	/*
    	if (window.XMLHttpRequest)
    	    {// code for IE7+, Firefox, Chrome, Opera, Safari
    	        xmlhttp=new XMLHttpRequest();
    	    }
    	    else
    	    {// code for IE6, IE5
    	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	    }
    	    xmlhttp.onreadystatechange=function()
    	    {
    	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	        {
    	        	document.getElementById('Display').innerHTML=xmlhttp.responseText;
    	           
    	        }
    	    };
    	    xmlhttp.open("POST","savekeystageoneendofschoolreport.jsp?sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st,true);
    	    xmlhttp.send();

    	*/
    	url="savekeystagetwoendofschoolreport.jsp";
    	var sendmessage="sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}    	
  }
}

function updateendofschooll(sid,form,lrn,lwn,lsln,uaamn,naan,ssmn,dhn,isn,kacn,rsn,hkacn,atn,cn,gc,st,callbackFunction)
{
		
	for (var aa = 0; aa < form.txtliteracyra.length; aa++ ) {
        if (form.txtliteracyra[aa].checked) {
            break;
        }
    }

for (var b = 0; b < form.txtliteracyre.length; b++ ) {
        if (form.txtliteracyre[b].checked) {
            break;
        }
    }
	
for (var bb = 0; bb < form.txtliteracywa.length; bb++ ){
        if (form.txtliteracywa[bb].checked) 
        {
            break;
        }
    }

for (var c = 0; c < form.txtliteracywe.length; c++ ) {
        if (form.txtliteracywe[c].checked) {
            break;
        }
    }
	
	for (var cc = 0; cc < form.txtliteracysle.length; cc++ ) {
        if (form.txtliteracysle[cc].checked) {
            break;
        }
    }
	
	
	for (var d = 0; d < form.txtliteracysle.length; d++ ) {
        if (form.txtliteracysle[d].checked) {
            break;
        }
    }
	
	for (var dd = 0; dd < form.txtuaama.length; dd++ ) {
        if (form.txtuaama[dd].checked) {
            break;
        }
    }


for (var e = 0; e < form.txtuaame.length; e++ ) {
        if (form.txtuaame[e].checked) {
            break;
        }
    }
for (var ee = 0; ee < form.txtnaaa.length; ee++ ) {
        if (form.txtnaaa[ee].checked) {
            break;
        }
    }
for (var f = 0; f < form.txtnaae.length; f++ ) {
        if (form.txtnaae[f].checked) {
            break;
        }
    }

for (var ff = 0; ff < form.txtssma.length; ff++ ) {
        if (form.txtssma[ff].checked) {
            break;
        }
    }
for (var g = 0; g < form.txtssme.length; g++ ) {
        if (form.txtssme[g].checked) {
            break;
        }
    }

for (var gg = 0; gg < form.txtdha.length; gg++ ) {
        if (form.txtdha[gg].checked) {
            break;
        }
    }
for (var h = 0; h < form.txtdhe.length; h++ ) {
        if (form.txtdhe[h].checked) {
            break;
        }
    }
for (var hh = 0; hh < form.txtisa.length; hh++ ) {
        if (form.txtisa[hh].checked) {
            break;
        }
    }
for (var i = 0; i < form.txtise.length; i++ ) {
        if (form.txtise[i].checked) {
            break;
        }
    }
for (var ii = 0; ii < form.txtkaca.length; ii++ ) {
        if (form.txtkaca[ii].checked) {
            break;
        }
    }
for (var j = 0; j < form.txtkace.length; j++ ) {
        if (form.txtkace[j].checked) {
            break;
        }
    }
for (var jj = 0; jj < form.txtrsa.length; jj++ ) {
        if (form.txtrsa[jj].checked) {
            break;
        }
    }
for (var k = 0; k < form.txtrse.length; k++ ) {
        if (form.txtrse[k].checked) {
            break;
        }
    }


for (var kk = 0; kk < form.txthkaca.length; kk++ ) {
        if (form.txthkaca[kk].checked) {
            break;
        }
    }
for (var l = 0; l < form.txthkace.length; l++ ) {
        if (form.txthkace[l].checked) {
            break;
        }
    }

for (var ll = 0; ll < form.txtata.length; ll++ ) {
        if (form.txtata[ll].checked) {
            break;
        }
    }
for (var m = 0; m < form.txtate.length; m++ ) {
        if (form.txtate[m].checked) {
            break;
        }
    }
for (var mm = 0; mm < form.txtca.length; mm++ ) {
        if (form.txtca[mm].checked) {
            break;
        }
    }
for (var n = 0; n < form.txtce.length; n++ ) {
        if (form.txtce[n].checked) {
            break;
        }
    }


literacyra=form.txtliteracyra[aa].value;
literacyre=form.txtliteracyre[b].value;
literacywa=form.txtliteracywa[bb].value;
literacywe=form.txtliteracywe[c].value;
literacyslea=form.txtliteracyslea[cc].value;
literacysle=form.txtliteracysle[d].value;
uaama=form.txtuaama[dd].value;
uaame=form.txtuaame[e].value;
naaa=form.txtnaaa[ee].value;
naae=form.txtnaae[f].value;
ssma=form.txtssma[ff].value;
ssme=form.txtssme[g].value;
dha=form.txtdha[gg].value;
dhe=form.txtdhe[h].value;
isa=form.txtisa[hh].value;
ise=form.txtise[i].value;
kaca=form.txtkaca[ii].value;
kace=form.txtkace[j].value;
rsa=form.txtrsa[jj].value;
rse=form.txtrse[k].value;
hkaca=form.txthkaca[kk].value;
hkace=form.txthkace[l].value;
ata=form.txtata[ll].value;
ate=form.txtate[m].value;
ca=form.txtca[mm].value;
ce=form.txtce[n].value;

	if(sid=="" || lrn=="" || lwn=="" || lsln=="" || uaamn=="" || naan=="" || ssmn=="" || dhn=="" || isn=="" || kacn=="" || rsn=="" || hkacn=="" || atn=="" || cn=="" || gc=="" || st=="")
		{
		Validateprofile2();
		return false;
		}
    else
	{
    	/*
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('Display').innerHTML=xmlhttp.responseText;
           
        }
    };
    xmlhttp.open("POST","updatekeystageoneendofschoolreport.jsp?sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st,true);
    xmlhttp.send();
    */
    	url="updatekeystagetwoendofschoolreport.jsp";
    	var sendmessage="sid="+sid+"&literacyra="+literacyra+"&literacyre="+literacyre+"&lrn="+lrn+"&literacywa="+literacywa+"&literacywe="+literacywe+"&lwn="+lwn+"&literacyslea="+literacyslea+"&literacysle="+literacysle+"&lsln="+lsln+"&uaama="+uaama+"&uaame="+uaame+"&uaamn="+uaamn+"&naaa="+naaa+"&naae="+naae+"&naan="+naan+"&ssma="+ssma+"&ssme="+ssme+"&ssmn="+ssmn+"&dha="+dha+"&dhe="+dhe+"&dhn="+dhn+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&kaca="+kaca+"&kace="+kace+"&kacn="+kacn+"&rsa="+rsa+"&rse="+rse+"&rsn="+rsn+"&hkaca="+hkaca+"&hkace="+hkace+"&hkacn="+hkacn+"&ata="+ata+"&ate="+ate+"&atn="+atn+"&ca="+ca+"&ce="+ce+"&cn="+cn+"&gc="+gc+"&st="+st;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}
	}
}


////////////////////////////////ICT/////////////////////////////////////////////
function ictname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	       
    }    
    document.getElementById('textdesp').innerHTML="";
 };
xmlhttp.open("POST","nameforict.jsp?id="+id,true);
xmlhttp.send();
}

function ictstudentid(id)
{
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;
    	document.getElementById('textdesp').innerHTML=xmlhttp.responseText;    	
        
    }   
};
xmlhttp.open("get","narrationict.jsp?id="+id,true);
xmlhttp.send();
}
function musicstudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		
	    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdespmusic').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationmusic.jsp?id="+id,true);
	xmlhttp.send();	
}


function pestudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdesppe').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationpe.jsp?id="+id,true);
	xmlhttp.send();
}


function amharicstudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdespamharic').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationamharic.jsp?id="+id,true);
	xmlhttp.send();
}


function frenchstudentid(id)
{
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}

xmlhttp.onreadystatechange=function()
{
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;
    	document.getElementById('textdespfrench').innerHTML=xmlhttp.responseText;          
    }
};
xmlhttp.open("get","narrationfrench.jsp?id="+id,true);
xmlhttp.send();
}

function displayict(text)
{
document.getElementById('Display').innerHTML = text;
}

function saveict(id,ictt,form,lasn,esn,callbackFunction)
{
	var count=0;
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	
for (var a = 0; a < form.txtlasa.length; a++ ) {
	var count=0;
		 if (form.txtlasa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}
}

   if(count==1)
	{
	   lasa=form.txtlasa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtlasa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtlase.length; b++ ) {
        if (form.txtlase[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		lase=form.txtlase[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtlase[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtesa.length; c++ ) {
        if (form.txtesa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   esa=form.txtesa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtesa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtese.length; d++ ) {
        if (form.txtese[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ese=form.txtese[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtese[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	if(id=="" || ictt=="" || lasn=="" || esn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="saveict.jsp";
		var sendmessage="id="+id+"&ictt="+ictt+"&lasa="+lasa+"&lase="+lase+"&lasn="+lasn+"&esa="+esa+"&ese="+ese+"&esn="+esn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}




function Updateict(id,ictt,form,lasn,esn,callbackFunction)
{
	
	var count=0;
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	
for (var a = 0; a < form.txtlasa.length; a++ ) {
	var count=0;
		 if (form.txtlasa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}
}

   if(count==1)
	{
	   lasa=form.txtlasa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtlasa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtlase.length; b++ ) {
        if (form.txtlase[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		lase=form.txtlase[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtlase[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtesa.length; c++ ) {
        if (form.txtesa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   esa=form.txtesa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtesa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtese.length; d++ ) {
        if (form.txtese[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ese=form.txtese[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtese[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	

	
	if(id=="" || ictt=="" || lasn=="" || esn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updateict.jsp";
		var sendmessage="id="+id+"&ictt="+ictt+"&lasa="+lasa+"&lase="+lase+"&lasn="+lasn+"&esa="+esa+"&ese="+ese+"&esn="+esn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}

}


function displaysavemusic(text)
{
document.getElementById('Display').innerHTML = text;
}

function savemusicinfo(id,mt,form,mpn,mclsn,callbackFunction)
{
	
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpa.length; a++ ) {
	
		 if (form.txtpa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpa=form.txtpa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///
	   for (var b = 0; b < form.txtpe.length; b++ ) {
	
		 if (form.txtpe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpe=form.txtpe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var c = 0; c < form.txtclsa.length; c++ ) {
	
		 if (form.txtclsa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclsa=form.txtclsa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtclsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var d = 0; d < form.txtclse.length; d++ ) {
	
		 if (form.txtclse[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclse=form.txtclse[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtclse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
			
	if( mt=="" || mpn=="" || mclsn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		
/////////////////////////////////////////////////////
		var url="savemusic.jsp";	
		var sendmessage="id="+id+"&mt="+mt+"&mpa="+mpa+"&mpe="+mpe+"&mpn="+mpn+"&mclsa="+mclsa+"&mclse="+mclse+"&mclsn="+mclsn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}




function updatemusicinfo(id,mt,form,mpn,mclsn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpa.length; a++ ) {
	
		 if (form.txtpa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpa=form.txtpa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///
	   for (var b = 0; b < form.txtpe.length; b++ ) {
	
		 if (form.txtpe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpe=form.txtpe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var c = 0; c < form.txtclsa.length; c++ ) {
	
		 if (form.txtclsa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclsa=form.txtclsa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtclsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var d = 0; d < form.txtclse.length; d++ ) {
	
		 if (form.txtclse[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclse=form.txtclse[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtclse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	if( mt=="" || mpn=="" || mclsn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		
		var url="updatemusic.jsp";	
		var sendmessage="id="+id+"&mt="+mt+"&mpa="+mpa+"&mpe="+mpe+"&mpn="+mpn+"&mclsa="+mclsa+"&mclse="+mclse+"&mclsn="+mclsn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}
//////////////////////////////////////////music///////////////////////////////////////////////
function musicname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespmusic').innerHTML="";
 };
xmlhttp.open("POST","nameformusic.jsp?id="+id,true);
xmlhttp.send();
}
/////////////////////////////////////////////////////////PE///////////////////////////////////////////

function pename(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdesppe').innerHTML="";
 };
xmlhttp.open("POST","nameforpe.jsp?id="+id,true);
xmlhttp.send();
}

function nameforamharic(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespamharic').innerHTML="";
 };
xmlhttp.open("POST","nameforamharic.jsp?id="+id,true);
xmlhttp.send();
}

function displaysavepeinfo(text)
{
document.getElementById('Display').innerHTML = text;
}

function savepeinfo(id,pet,form,pon,isn,twn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpoa.length; a++ ) {
	
		 if (form.txtpoa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poa=form.txtpoa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpoa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		   for (var b = 0; b < form.txtpoe.length; b++ ) {
	
		 if (form.txtpoe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poe=form.txtpoe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpoe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
		
	
	   for (var c = 0; c < form.txtisa.length; c++ ) {
	
		 if (form.txtisa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 isa=form.txtisa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtise.length; d++ ) {
	
		 if (form.txtise[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ise=form.txtise[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	
	
	

   for (var e = 0; e < form.txttwa.length; e++ ) {
	
		 if (form.txttwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twa=form.txttwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txttwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
   for (var f = 0; f < form.txttwe.length; f++ ) {
	
		 if (form.txttwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twe=form.txttwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txttwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	if(id=="" || pet=="" || pon=="" || isn=="" || twn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="savepe.jsp";	
		var sendmessage="id="+id+"&pet="+pet+"&poa="+poa+"&poe="+poe+"&pon="+pon+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&twa="+twa+"&twe="+twe+"&twn="+twn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}



function pename(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdesppe').innerHTML="";
 };
xmlhttp.open("POST","nameforpe.jsp?id="+id,true);
xmlhttp.send();
}


function updatepeinfo(id,pet,form,pon,isn,twn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpoa.length; a++ ) {
	
		 if (form.txtpoa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poa=form.txtpoa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpoa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		   for (var b = 0; b < form.txtpoe.length; b++ ) {
	
		 if (form.txtpoe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poe=form.txtpoe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpoe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
		
	
	   for (var c = 0; c < form.txtisa.length; c++ ) {
	
		 if (form.txtisa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 isa=form.txtisa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtise.length; d++ ) {
	
		 if (form.txtise[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ise=form.txtise[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	
	
	

   for (var e = 0; e < form.txttwa.length; e++ ) {
	
		 if (form.txttwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twa=form.txttwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txttwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
   for (var f = 0; f < form.txttwe.length; f++ ) {
	
		 if (form.txttwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twe=form.txttwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txttwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
   if(id=="" || pet=="" || pon=="" || isn=="" || twn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updatepe.jsp";	
		var sendmessage="id="+id+"&pet="+pet+"&poa="+poa+"&poe="+poe+"&pon="+pon+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&twa="+twa+"&twe="+twe+"&twn="+twn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}

///////////////////////////////////////Amharic////////////////////////////////////////////////
function amhname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespamharic').innerHTML="";
 };
xmlhttp.open("POST","nameforspecialityclass.jsp?id="+id,true);
xmlhttp.send();
}

function displaysaveamharicinfo(text)
{
document.getElementById('Display').innerHTML = text;
}
function saveamharicinfo(id,amt,form,asln,arn,awn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtasla.length; a++ ) {
	
		 if (form.txtasla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asla=form.txtasla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtasla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var b = 0; b < form.txtasle.length; b++ ) {
	
		 if (form.txtasle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asle=form.txtasle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtasle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtara.length; c++ ) {
	
		 if (form.txtara[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ara=form.txtara[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtara[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtare.length; d++ ) {
	
		 if (form.txtare[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 are=form.txtare[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtare[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
   for (var e = 0; e < form.txtawa.length; e++ ) {
		
		 if (form.txtawa[e].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awa=form.txtawa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtawa[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
	
	
	
 for (var f = 0; f < form.txtawe.length; f++ ) {
	
		 if (form.txtawe[f].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awe=form.txtawe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtawe[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
			
	if(id=="" || amt=="" || asln=="" || arn=="" || awn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="saveamharic.jsp";	
		var sendmessage="id="+id+"&amt="+amt+"&asla="+asla+"&asle="+asle+"&asln="+asln+"&ara="+ara+"&are="+are+"&arn="+arn+"&awa="+awa+"&awe="+awe+"&awn="+awn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}


function updateamharic(id,amt,form,asln,arn,awn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtasla.length; a++ ) {
	
		 if (form.txtasla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asla=form.txtasla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtasla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var b = 0; b < form.txtasle.length; b++ ) {
	
		 if (form.txtasle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asle=form.txtasle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtasle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtara.length; c++ ) {
	
		 if (form.txtara[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ara=form.txtara[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtara[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtare.length; d++ ) {
	
		 if (form.txtare[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 are=form.txtare[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtare[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtawa.length; e++ ) {
		
		 if (form.txtawa[e].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awa=form.txtawa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtawa[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
	
	
	
 for (var f = 0; f < form.txtawe.length; f++ ) {
	
		 if (form.txtawe[f].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awe=form.txtawe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtawe[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}		
	if(id=="" || amt=="" || asln=="" || arn=="" || awn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updateamharic.jsp";	
		var sendmessage="id="+id+"&amt="+amt+"&asla="+asla+"&asle="+asle+"&asln="+asln+"&ara="+ara+"&are="+are+"&arn="+arn+"&awa="+awa+"&awe="+awe+"&awn="+awn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}
	
///////////////////////////////////////////French//////////////////////////////////////////////////////////////////////

function frencehname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespfrench').innerHTML="";
 };
xmlhttp.open("POST","nameforspecialityclass.jsp?id="+id,true);
xmlhttp.send();
}

function displaysavefrenchinfo(text)
{
document.getElementById('Display').innerHTML = text;
}
	

function savefrenchinfo(id,ft,form,fsln,frn,fwn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtfsla.length; a++ ) {
	
		 if (form.txtfsla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsla=form.txtfsla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtfsla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtfsle.length; b++ ) {
	
		 if (form.txtfsle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsle=form.txtfsle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtfsle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtfra.length; c++ ) {
	
		 if (form.txtfra[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fra=form.txtfra[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtfra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
		
	   for (var d = 0; d < form.txtfre.length; d++ ) {
	
		 if (form.txtfre[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fre=form.txtfre[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtfre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtfwa.length; e++ ) {
	
		 if (form.txtfwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwa=form.txtfwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtfwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
		
   for (var f = 0; f < form.txtfwe.length; f++ ) {
	
		 if (form.txtfwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwe=form.txtfwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtfwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	

	if(id=="" || ft=="" || fsln=="" || frn=="" || fwn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="savefrench.jsp";	
		var sendmessage="id="+id+"&ft="+ft+"&fsla="+fsla+"&fsle="+fsle+"&fsln="+fsln+"&fra="+fra+"&fre="+fre+"&frn="+frn+"&fwa="+fwa+"&fwe="+fwe+"&fwn="+fwn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}


function updatefrenchinfo(id,ft,form,fsln,frn,fwn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtfsla.length; a++ ) {
	
		 if (form.txtfsla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsla=form.txtfsla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtfsla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtfsle.length; b++ ) {
	
		 if (form.txtfsle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsle=form.txtfsle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtfsle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtfra.length; c++ ) {
	
		 if (form.txtfra[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fra=form.txtfra[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtfra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
		
	   for (var d = 0; d < form.txtfre.length; d++ ) {
	
		 if (form.txtfre[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fre=form.txtfre[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtfre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtfwa.length; e++ ) {
	
		 if (form.txtfwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwa=form.txtfwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtfwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
		
   for (var f = 0; f < form.txtfwe.length; f++ ) {
	
		 if (form.txtfwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwe=form.txtfwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtfwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	if(id=="" || ft=="" || fsla=="" || fsle=="" || fsln=="" || fra=="" || fre=="" || frn=="" || fwa=="" || fwe=="" || fwn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
	var url="updatefrench.jsp";	
	var sendmessage="id="+id+"&ft="+ft+"&fsla="+fsla+"&fsle="+fsle+"&fsln="+fsln+"&fra="+fra+"&fre="+fre+"&frn="+frn+"&fwa="+fwa+"&fwe="+fwe+"&fwn="+fwn;
		
var XMLHttpRequestObject = false;
if (window.XMLHttpRequest) {
XMLHttpRequestObject = new XMLHttpRequest();
} else if (window.ActiveXObject) {
XMLHttpRequestObject = new
ActiveXObject("Microsoft.XMLHTTP");
}
if(XMLHttpRequestObject) {
XMLHttpRequestObject.open("POST", url);
XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
XMLHttpRequestObject.onreadystatechange = function()
{
if (XMLHttpRequestObject.readyState == 4 &&
XMLHttpRequestObject.status == 200) {
callbackFunction(XMLHttpRequestObject.responseText);
delete XMLHttpRequestObject;
XMLHttpRequestObject = null;
}
};
XMLHttpRequestObject.send(sendmessage);
}
}
}

function DOBforkso(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }
       
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('narrationd').innerHTML=xmlhttp1.responseText;            
        }
       
                
    };
    xmlhttp.open("get","agedisplay.jsp?id="+id,true);
    xmlhttp1.open("get","narrationkeysatgeonemidyearprimaryscoolreport.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
    
}


function DOBforkst(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }
       
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('containerr').innerHTML=xmlhttp1.responseText;            
        }
       
                
    };
    xmlhttp.open("get","agedisplay.jsp?id="+id,true);
    xmlhttp1.open("get","narrationkeysatgetwomidyearprimaryscoolreport.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
  }


function reportforreceptionmid(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";        	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay11.jsp?id="+id,true);
    xmlhttp.send();
}
function DOBforreceptionmid(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}
function showreceptionmidyearreport(secid,sid,dob)
{
	if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();       
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
	        }                
	    };   
	        
	        xmlhttp.open("POST","showreceptionmidyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
	        xmlhttp.send();
}

