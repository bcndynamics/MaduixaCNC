///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: z-carriage-CNC
//
// Authors: Victor Sapena <victor@bcndynamics.com>,
//          Daniel Díaz <dani@bcndynamics.com>,
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

height=25;

///////////////////////////////////////////////////////////////////////////////
// Modules

// bearing
module rodament(height=height)
{
  difference(){
    cylinder(r=12,h=height,center=true);
    cylinder(r=8, h =height+2,center=true);
    translate([10,0,0])
    cube([20,10,height+2],center=true);
  }

  translate([15,-6.5,0]){
    difference(){

      hull(){
	translate([-6,0,-height/2+0.5])
	cube([1,3,1],center=true);

	rotate([90,0,0])
	cylinder( r=6,h=3,center=true);

	translate([-6,0,height/2-0.5])
	cube([1,3,1],center=true);
	
      }//hull
	
      rotate([90,0,0])
      cylinder( r=1.6,h=4, $fn=20 ,center=true);
    }//difference
  }//translate

  translate([15,6.5,0]){
    difference(){
      hull(){
	translate([-6,0,-height/2+0.5])
	cube([1,3,1],center=true);

	rotate([90,0,0])
	cylinder( r=6,h=3,center=true);

	translate([-6,0,height/2-0.5])
	cube([1,3,1],center=true);
      }//hull
      
      rotate([90,0,0])
      cylinder( r=1.6,h=4, $fn=20 ,center=true);
      
    }//difference

  }//translate

}

///////////////////////////////////////////////////////////////////////////////
// Main

difference(){
  cube([106,20,20],center=true);
  
  rotate([90,0,0])
    translate([25,5,0])
      cylinder(r = 2.2,h=30,$fn=20,center=true);

  rotate([90,0,0])
    translate([-25,5,0])
      cylinder(r = 2.2,h=30,$fn=20,center=true);

  rotate([90,0,0])
    translate([25,-5,0])
      cylinder(r = 2.2,h=30,$fn=20,center=true);

  rotate([90,0,0])
    translate([-25,-5,0])
      cylinder(r = 2.2,h=30,$fn=20,center=true);

  cylinder(r=4.2,h=26,center=true);

  rotate([0,0,90]){
    hull(){
      cylinder(r=7.5,h=6.5,$fn=6,center=true);
      translate([20,0,0])
	cylinder(r=7.5,h=6.5,$fn=6,center=true);
    }
  }
}

difference(){
  cylinder(r1=4.8,r2= 4.4,h=6.6,center=true);
  cylinder(r1=4,r2= 4,h=7,center=true);
}

translate([60,0,2.5])
  rodament();

translate([60,0,27.5])
  rodament();

translate([-60,0,2.5])
  mirror() rodament();











