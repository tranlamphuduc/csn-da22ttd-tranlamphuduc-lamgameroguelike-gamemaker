event_user(1);


switch(slot[1]){
	case "trongkiem": event_user(0); break;	
	case "sach":      event_user(1); break;	
	case "ten":       event_user(2); break;	
	case "bom":		 event_user(3); break;
	case "hoimau":		 event_user(4); break;
}

/// loop
alarm[1] = alartime[1];