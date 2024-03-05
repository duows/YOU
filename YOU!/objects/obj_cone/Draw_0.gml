
var lineLength = maxLength


var getLineMiddleX = x + lengthdir_x(lineLength, image_angle_)
var getLineMiddleY = y + lengthdir_y(lineLength, image_angle_)


var getLineAboveX = x + lengthdir_x(lineLength, image_angle_ - degrees)
var getLineAboveY = y + lengthdir_y(lineLength, image_angle_ - degrees)

var getLineBelowX = x + lengthdir_x(lineLength, image_angle_ + degrees)
var getLineBelowY = y + lengthdir_y(lineLength, image_angle_ + degrees)


draw_set_color(	colors[index] )

draw_triangle(x, y, getLineAboveX, getLineAboveY, getLineBelowX, getLineBelowY, false)


