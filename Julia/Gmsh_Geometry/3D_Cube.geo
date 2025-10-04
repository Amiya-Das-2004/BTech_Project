// cube.geo
lc = 0.2;   // mesh size

// Define cube corner points
Point(1) = {0,0,0,lc};
Point(2) = {1,0,0,lc};
Point(3) = {1,1,0,lc};
Point(4) = {0,1,0,lc};
Point(5) = {0,0,1,lc};
Point(6) = {1,0,1,lc};
Point(7) = {1,1,1,lc};
Point(8) = {0,1,1,lc};

// Bottom face
Line(1) = {1,2}; Line(2) = {2,3}; Line(3) = {3,4}; Line(4) = {4,1};
Line Loop(10) = {1,2,3,4};
Plane Surface(11) = {10};

// Top face
Line(5) = {5,6}; Line(6) = {6,7}; Line(7) = {7,8}; Line(8) = {8,5};
Line Loop(20) = {5,6,7,8};
Plane Surface(21) = {20};

// Vertical edges
Line(9)  = {1,5};
Line(10) = {2,6};
Line(11) = {3,7};
Line(12) = {4,8};

// Side faces
Line Loop(30) = {1,10,-5,-9};
Plane Surface(31) = {30};

Line Loop(40) = {2,11,-6,-10};
Plane Surface(41) = {40};

Line Loop(50) = {3,12,-7,-11};
Plane Surface(51) = {50};

Line Loop(60) = {4,9,-8,-12};
Plane Surface(61) = {60};

// Surface loop & volume
Surface Loop(100) = {11,21,31,41,51,61};
Volume(200) = {100};

// Physical groups
Physical Surface("bottom") = {11};
Physical Surface("top")    = {21};
Physical Surface("sides")  = {31,41,51,61};
Physical Volume("domain")  = {200};
