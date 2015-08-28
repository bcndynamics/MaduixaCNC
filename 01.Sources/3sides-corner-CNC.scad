///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: 3sides-corner-CNC.scad
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
// Variables

radi_sup=30;
gruix=3;

///////////////////////////////////////////////////////////////////////////////
// Modules

module superficie(){

  difference(){
    cylinder(r=radi_sup,h=gruix,$fn=100);

    union(){
      translate([-radi_sup,0,0])
	cube([radi_sup,radi_sup,gruix]);
      translate([-radi_sup,-radi_sup,0])
	cube([radi_sup,radi_sup,gruix]);
      translate([0,-radi_sup,0])
	cube([radi_sup,radi_sup,gruix]);
      
    }
  }
}

///////////////////////////////////////////////////////////////////////////////
// Main

difference(){
  union(){
    superficie();
    
    rotate([90,0,0])
      superficie();

    rotate([0,-90,0])
      superficie();

    translate([-gruix,-gruix,0])
      cube([gruix,gruix,radi_sup]);
  }
  
  union(){
    translate([radi_sup/2,radi_sup/2,0])
    cylinder(r1=3/2,r2=7/2,h=3.2,$fn=100);

    translate([-gruix,radi_sup/2,radi_sup/2])
    rotate([0,90,0])
      cylinder(r1=3/2,r2=7/2,h=3.2,$fn=100);

    translate([radi_sup/2,-gruix,radi_sup/2])
    rotate([-90,0,0])
      cylinder(r1=3/2,r2=7/2,h=3.2,$fn=100);
  }
}
