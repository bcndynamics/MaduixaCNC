///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: x-drive-train-CNC.scad
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

aresta=20;
llarg=60;
distancia_forats=103;
canto_llarg=120;
gruix_agarre=8;

///////////////////////////////////////////////////////////////////////////////
// Main

difference(){
  union(){
    translate([llarg/2,0,0])
      cube([llarg,aresta,aresta],center=true);
      
    cube([gruix_agarre,canto_llarg,aresta],center=true);
  }

  translate([0,distancia_forats/2,0])
    rotate([0,90,0])
      cylinder(r=1.6,h=50,$fn=100,center=true);

  translate([0,-distancia_forats/2,0])
    rotate([0,90,0])
      cylinder(r=1.6,h=50,$fn=100,center=true);

  translate([46,0,0])
    rotate([90,0,0])
      cylinder(r=4.2,h=50,$fn=100,center=true);

  translate([46,0,9])
    rotate([90,90,0])
      hull(){
	cylinder(r=7.5,h=7,$fn=6,center=true);
	
	translate([10,0,0])
	  cylinder(r=7.5,h=7,$fn=6,center=true);
     }
}   

hull(){
  translate([20,0,0])
    cylinder(r=4,h=20,$fn=20,center=true);
    
  translate([0,20,0])
    cylinder(r=4,h=20,$fn=20,center=true);
    
  translate([0,-20,0])
    cylinder(r=4,h=20,$fn=20,center=true);

}
