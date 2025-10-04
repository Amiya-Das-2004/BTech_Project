// circle.geo
lc = 0.05;   // mesh size

// Points (center + boundary)
Point(1) = {0, 0, 0, lc};  // center
Point(2) = {1, 0, 0, lc};
Point(3) = {0, 1, 0, lc};
Point(4) = {-1, 0, 0, lc};
Point(5) = {0, -1, 0, lc};

// Circle arcs
Circle(1) = {2,1,3};
Circle(2) = {3,1,4};
Circle(3) = {4,1,5};
Circle(4) = {5,1,2};

// Line loop and surface
Line Loop(10) = {1,2,3,4};
Plane Surface(11) = {10};

// Physical groups
Physical Line("boundary") = {1,2,3,4};  // circle boundary
Physical Surface("domain") = {11};      // interior
