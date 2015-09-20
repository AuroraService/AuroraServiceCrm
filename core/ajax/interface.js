function getXmlHttp(){
  var xmlhttp;
  try {
    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
  } catch (e) {
    try {
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    } catch (E) {
      xmlhttp = false;
    }
  }
  if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
    xmlhttp = new XMLHttpRequest();
  }
  return xmlhttp;
}


function load_data(action, domain, id) {
	var req = getXmlHttp()  
	var statusElem = document.getElementById('dop_form_interface') 
	req.onreadystatechange = function() {  
  if (req.readyState == 4) { 
    if(req.status == 200) { 
      statusElem.innerHTML = req.responseText; 
			}
		}

	}

	req.open('GET', '/core/ajax/interface.php?domain='+domain+'&id='+id+'&action='+action, true);  
	req.send(null);
	
}