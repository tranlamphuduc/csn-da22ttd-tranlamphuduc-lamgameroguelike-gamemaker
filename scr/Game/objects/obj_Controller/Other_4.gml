randomize();

var getRoomWidth  = round(room_width/16);
var getRoomHeigth  = round(room_height/16);


var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);

/*for( var width = 0; width < getRoomWidth; width++ ){
	for( var height = 0; height < getRoomHeigth; height++ ){
		var quality = choose;
		
	tilemap_set(map_id, quality, width, height);
	
	
	
}}