/// @desc Demo Player Using Vectors

// Properties
inverseMass = 1 / 10;
damping = 0.5;

// Movement
moveStrength = 2000;
moveInput = new Vector2();
velocity = new Vector2();
acceleration = new Vector2();
force = new Vector2();

// Orientation
facingDirAngle = 0;
facingDir = new Vector2();
facingDir.setAngle(facingDirAngle);
facingDirMatrix = new Matrix22(facingDirAngle);