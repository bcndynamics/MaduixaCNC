///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: universal-holder-CNC.scad
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

rotate([0,90,0])
  union(){
    difference(){
      cube([70,20,70],center=true);
      
      translate([0,-10,-25])
	cube([70,10,20],center=true);
	
      translate([0,30,0])
	cylinder(r=25,h=80,center=true);

      difference(){
	translate([0,20,0])
	  cylinder(r=60,h=10,center=true);
	  
	translate([0,20,0])
	  cylinder(r=30,h=11,center=true);
      }
      
      difference(){
	translate([0,20,20])
	  cylinder(r=60,h=10,center=true);
	translate([0,20,20])
	  cylinder(r=30,h=11,center=true);
      }

      translate([25,0,-20])
	rotate([90,0,0])
	  cylinder(r = 2.2,h=30,$fn=20,center=true);
      translate([25,10,-20])
	rotate([90,0,0])
	  cylinder(r = 4.1,h=10,$fn=6,center=true);

      translate([25,0,-30])
	rotate([90,0,0])
	  cylinder(r = 2.2,h=30,$fn=20,center=true);
	  
      translate([25,10,-30])
	rotate([90,0,0])
	  cylinder(r = 4.1,h=15,$fn=6,center=true);

      translate([-25,0,-20])
	rotate([90,0,0])
	  cylinder(r = 2.2,h=30,$fn=20,center=true);
	  
      translate([-25,10,-20])
	rotate([90,0,0])
	  cylinder(r = 4.1,h=15,$fn=6,center=true);

      translate([-25,0,-30])
	rotate([90,0,0])
	  cylinder(r = 2.2,h=30,$fn=20,center=true);
	  
      translate([-25,10,-30])
	rotate([90,0,0])
	  cylinder(r = 4.1,h=15,$fn=6,center=true);

    }
    
  }
  