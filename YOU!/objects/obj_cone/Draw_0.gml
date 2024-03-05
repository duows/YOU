/// @description Draw Light

if(!surface_exists(light_surf))
{
  light_surf=surface_create(room_width,room_height);
}
//Create surface
surface_set_target(light_surf)
{
  draw_clear_alpha(c_black,1);
  draw_primitive_begin(pr_trianglefan);
  draw_vertex_colour(x,y,c_white,.5);
  var _start_angle=image_angle_-angle/2;
  var _angle_change=angle/fan_divisions;
  for(var _i=0; _i<=fan_divisions;_i++)
  {
    draw_vertex_colour(x+lengthdir_x(maxLength, _start_angle + _angle_change * _i),
                       y+lengthdir_y(maxLength, _start_angle + _angle_change * _i),
                       colors[index],.1);
  }
  draw_primitive_end();
  
  var _a_big_number = $7FFFFFFF;
  var _light_x = x;
  var _light_y = y;
  
  //Cut walls out of lights.
  with(obj_wall)
  {
    //Get the points for all of the rays
    var _mar=1; //Because of the way bbox works, we need to add 1 more pixel to the
                // bottom and right of our left and bottom bbox values.
    
    var _l = ( bbox_left   - _light_x ) * _a_big_number;
    var _t = ( bbox_top    - _light_y ) * _a_big_number;
    var _r = ( bbox_right  - _light_x ) * _a_big_number;
    var _b = ( bbox_bottom - _light_y ) * _a_big_number;
    
    //Draw 8 polygons to describe the shadow... there's probably a better way to get this.
    draw_primitive_begin(pr_trianglelist);
        
    //1 br-c tr-c br-r
    draw_vertex_colour(bbox_right+_mar,bbox_top,c_black,1);
    draw_vertex_colour(bbox_right+_mar,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(_r,_b,c_black,1);
    
    //2 - tr-c br-r tr-r 
    draw_vertex_colour(bbox_right+_mar,bbox_top,c_black,1);
    draw_vertex_colour(_r,_t,c_black,1);
    draw_vertex_colour(_r,_b,c_black,1);
    
    //3 -tr-c tl-c tr-r
    draw_vertex_colour(bbox_right+_mar,bbox_top,c_black,1);
    draw_vertex_colour(_r,_t,c_black,1);
    draw_vertex_colour(bbox_left,bbox_top,c_black,1);
    
    //4 tl-c tl-r tr-r
    draw_vertex_colour(bbox_left,bbox_top,c_black,1);
    draw_vertex_colour(_r,_t,c_black,1);
    draw_vertex_colour(_l,_t,c_black,1);
    
    //5 tl-c bl-c tl-r
    draw_vertex_colour(bbox_left,bbox_top,c_black,1);
    draw_vertex_colour(bbox_left,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(_l,_t,c_black,1);
    
    //6 bl-c bl-r tl-r
    draw_vertex_colour(bbox_left,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(_l,_b,c_black,1);
    draw_vertex_colour(_l,_t,c_black,1);
    
    //7 bl-c br-c bl-r
    draw_vertex_colour(bbox_right+_mar,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(bbox_left,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(_l,_b,c_black,1);
    
    //8 br-c br-r bl-r
    draw_vertex_colour(bbox_right+_mar,bbox_bottom+_mar,c_black,1);
    draw_vertex_colour(_r,_b,c_black,1);
    draw_vertex_colour(_l,_b,c_black,1);
    
    draw_primitive_end();
  }
  
}
surface_reset_target();

gpu_set_blendmode_ext(2,2)
draw_surface_ext(light_surf,0,0,1,1,0,colors[index],.1);
gpu_set_blendmode(bm_normal)






