
// Create a time source
var time_source = time_source_create(time_source_game, 1, time_source_units_seconds, function(){
/// scr_StartTimeSource
var game_over = false;
if(!game_over){
instance_create_depth(0, 0, 0, obj_round_over);
}
}, []);

// Start the time source
time_source_start(time_source);
