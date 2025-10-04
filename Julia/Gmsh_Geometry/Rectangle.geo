// rectangle.geo
lc = 0.1;  // mesh element size

// Define 4 corner points
Point(1) = {0, 0, 0, lc};
Point(2) = {2, 0, 0, lc};
Point(3) = {2, 1, 0, lc};
Point(4) = {0, 1, 0, lc};

// Define 4 boundary lines
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

// Create surface
Line Loop(10) = {1,2,3,4};
Plane Surface(11) = {10};

// Define physical groups
Physical Line("left")   = {4};
Physical Line("right")  = {2};
Physical Line("bottom") = {1};
Physical Line("top")    = {3};
Physical Surface("domain") = {11};
