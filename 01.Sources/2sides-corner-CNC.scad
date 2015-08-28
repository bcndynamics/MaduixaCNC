///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: 2sides-corner-CNC.scad
//
// Authors: Dani Díaz <dani@bcndynamics.com>,
//          Victor Sapena <victor@bcndynamics.com>,
//          Emili Sapena <emili@bcndynamics.com>
//
// Copyright (c) 2015 by the original authors.
//
// This file is part of MaduixaCNC.
// 
// MaduixaCNC is free: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// MaduixaCNC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with MaduixaCNC.  If not, see <http://www.gnu.org/licenses/>.
//
// http://bcndynamics.com 
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Main


difference(){
  cube([30,30,20]);
  
  rotate([0,0,45])
    cube([60,30,20]);

  translate([5,20,10])
    rotate([0,90,0])
      cylinder(r=1.6,h=30,$fn=10);

  translate([15,20,10])
    rotate([0,90,0])
      cylinder(r=3,h=10,$fn=10);

  translate([10,20,10])
    rotate([90,0,0])
      cylinder(r=1.6,h=30,$fn=10);

  translate([10,15,10])
    rotate([90,0,0])
      cylinder(r=3,h=10,$fn=10);
}

// The following cylinders avoid warping when 3Dprinting
// Uncomment the following lines to use them
// cylinder(r=3,h=0.6);
// 
// translate([30,0,0])
//   cylinder(r=3,h=0.6);
// 
// translate([30,30,0])
//   cylinder(r=3,h=0.6);
