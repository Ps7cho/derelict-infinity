
var type = argument0;
direc = argument1;


switch direc{
	case 0: if type = 0
			or type = 1
			or type = 3
			or type = 4
			or type = 5
			or type = 9{
				return false;
			}else return true;
	
	break;
	
	case 1: if type = 0
			or type = 1
			or type = 2
			or type = 5
			or type = 6
			or type = 10{
				return false;	
			}else return true;
	
	break;
	
	case 2: if type = 1
			or type = 2
			or type = 3
			or type = 6
			or type = 7
			or type = 11{
				return false;	
			}else return true;
	
	break;
	
	case 3: if type = 0
			or type = 2
			or type = 3
			or type = 4
			or type = 7
			or type = 8{
				return false;
			}else return true;
	
	break;

}