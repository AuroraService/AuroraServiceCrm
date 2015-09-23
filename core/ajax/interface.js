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


function sendData() {
  //alert(data[5028]);
  var str = 'data='+JSON.stringify(data);
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php?action=2334',
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById('dop_form_interface');
      statusElem.innerHTML = data;
      if ( data == 0  ) statusElem.innerHTML = 'Change save';
      else {
        statusElem.innerHTML = 'Safe error';
        statusElem.innerHTML = data;
      }
      //alert(data);
    }
  });
}

function editProperty(propId,valCounter,value){
  data[propId][valCounter]=value;
  //alert(value);
}
