ButtonText = argument0
Result = false
// find the corners of our box
BoxTop = CurrentY
BoxBottom = BoxTop + Margin + string_height(ButtonText)+ Margin
HalfTextWidth = string_width(ButtonText) / 2 
BoxLeft = x - HalfTextWidth - Margin
BoxRight = x + HalfTextWidth + Margin

draw_set_color(make_color_hsv(0,200,128))

// see if cursor is hovering over box
if mouse_x > BoxLeft and mouse_x < BoxRight and mouse_y > BoxTop and mouse_y < BoxBottom {
    draw_set_alpha(1) 
   if mouse_check_button_pressed(mb_left) {
  Result = true }
    } else {
    draw_set_alpha(0.5)
    }
    
    
draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false)
draw_set_alpha(1)
draw_set_colour(c_white)


DrawTextAndUpdateCurrentY(ButtonText)

CurrentY = CurrentY + Margin * 3

return Result
