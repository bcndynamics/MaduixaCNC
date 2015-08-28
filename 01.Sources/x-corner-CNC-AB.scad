///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: x-corner-CNC-AB.scad
//
// Authors: Victor Sapena <victor@bcndynamics.com>,
//          Dani Díaz <dani@bcndynamics.com>,
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

aresta=16;
alsada=18;
brida_gruix=1.5;
brida_ample=3;

///////////////////////////////////////////////////////////////////////////////
// Modules

module cornerCNC(){

  difference(){

    //--COS PEÇA;
    translate([0,0,alsada/2])
      cube([aresta,aresta,alsada],center=true);

    //--FORATS BRIDAS CORBATS;
    union(){
      translate([0,aresta-11,aresta/2+3+alsada-15])
	rotate([90,0,0])
	  difference(){
	    cylinder(r=aresta/2+3,h=brida_ample,$fn=100);
	    cylinder(r=aresta/2+1.5,h=brida_ample,$fn=100);
          }
          
      translate([0,-aresta/2+6,aresta/2+3+alsada-15])
	rotate([90,0,0])
	  difference(){
	    cylinder(r=aresta/2+3,h=brida_ample,$fn=100);
	    cylinder(r=aresta/2+1.5,h=brida_ample,$fn=100);
          }
      
    }
            
    //--FORAT VARILLA;
    translate([0,10,18])
      rotate([90,0,0])
	cylinder(r=4.1,h=40,$fn=100);}

    //--FORATS PER LA FUSTA
    difference(){
      translate([aresta-4,0,3/2])
	cube([10,10,3],center=true);
	
      translate([aresta-4,0,3/2])
	cylinder(r1=1.5,r2=5.8/2,h=3,$fn=100,center=true);
      
    }

    difference(){
      translate([0,-aresta+4,3/2])
	cube([10,10,3],center=true);
	
      translate([0,-aresta+4,3/2])
	cylinder(r1=1.5,r2=5.8/2,h=3,$fn=100,center=true);
      
    }
}

///////////////////////////////////////////////////////////////////////////////
// Main

cornerCNC();

translate([0,40,0])
  mirror([1,0,0])
    cornerCNC();













