/**
 * 
 */
function deleteBusDetaiels(bus_id, bus_name) {
	  if (window.confirm("Are you shore to Delete The\nBus Id: "+bus_id+"\n"+"Bus Name: "+bus_name)) { 
		  window.open("delete?bus_id="+bus_id, "Bus detaiels are deleted.");
		}
	  
	}

