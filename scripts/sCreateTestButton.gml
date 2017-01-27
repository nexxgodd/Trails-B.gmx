///sCreateTestButton(x,y,sprite)

xx = argument0
yy = argument1
SpriteIndex = argument2


var CurrentVar = instance_create(xx,yy,oButton);
CurrentVar.sprite_index = SpriteIndex

global.TrailAArray[i] = CurrentVar;
i++;



