///	@desc	Stats
var _x = 8, _y = 8, _ySpacing = 20;

// Movement
draw_text(_x, _y, "movement");
_y += _ySpacing;
draw_text(_x, _y, string("move input: {0}", moveInput));
_y += _ySpacing;
draw_text(_x, _y, string("force: {0}", force));
_y += _ySpacing;
draw_text(_x, _y, string("acceleration: {0}", acceleration));
_y += _ySpacing;
draw_text(_x, _y, string("velocity: {0}", velocity));
_y += _ySpacing;
draw_text(_x, _y, string("speed: {0}", velocity.magnitude()));
_y += _ySpacing;
draw_text(_x, _y, string("position: ({0}, {1})", x, y));

// Orientation
_y += _ySpacing;
_y += _ySpacing;
draw_text(_x, _y, "orientation");
_y += _ySpacing;
draw_text(_x, _y, string("facing direction: {0}", facingDir));
_y += _ySpacing;
draw_text(_x, _y, string("facing angle: {0}", facingDirAngle));
_y += _ySpacing;
draw_text(_x, _y, string("{0} :facing matrix", facingDirMatrix));