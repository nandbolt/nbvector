// Timestep
var _dt = delta_time / 1000000;

// Input
moveInput.x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
moveInput.y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
moveInput.normalize();

#region Semi-Implicit Euler

// Force
force.setScaledVector(moveInput, moveStrength);

// Acceleration
acceleration.setScaledVector(force, inverseMass);

// Velocity
velocity.addScaledVector(acceleration, _dt);

// Damp velocity
velocity.scale(power(damping, _dt));

// Position
x += velocity.x * _dt;
y += velocity.y * _dt;

#endregion

// Facing direction
facingDir.x = mouse_x - x;
facingDir.y = mouse_y - y;
facingDir.normalize();
facingDirAngle = facingDir.angle();
facingDirMatrix.setRotation(facingDirAngle);