///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                       MaduixaCNC - BCN Dynamics                           //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
//
// File: x-carriage-CNC.scad
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

width=170;
length=180;
height=8;
bearingxdist = 120;
bearingydist = 150;

///////////////////////////////////////////////////////////////////////////////
// Modules

module rodament(){
  cylinder(r=7.5 ,h=24,center=true);

}

///////////////////////////////////////////////////////////////////////////////
// Main

translate([-width/6,48,24]){
  difference(){
    cube([10,42,42],center=true);

    translate([0,-15,15])
      rotate([0,90,0])
	cylinder(r=40,h=height+10,center=true,$fn=20);
  }
}

translate([width/6,48,24]){
  difference(){
    cube([10,42,42],center=true);

    translate([0,-15,15])
      rotate([0,90,0])
	cylinder(r=40,h=height+10,center=true,$fn=20);
  }
}

translate([-width/6,-48,24]){
  difference(){
    cube([10,42,42],center=true);

    translate([0,15,15])
      rotate([0,90,0])
	cylinder(r=40,h=height+10,center=true,$fn=20);
  }
}

translate([width/6,-48,24]){
  difference(){
    cube([10,42,42],center=true);

    translate([0,15,15])
      rotate([0,90,0])
	cylinder(r=40,h=height+10,center=true,$fn=20);
  }
}

difference(){
  cube([width,length,height],center=true);
  
  translate([51.5,0,0])
    cylinder(r=1.8,h=height+10,center=true,$fn=10);

  translate([-51.5,0,0])
    cylinder(r=1.8,h=height+10,center=true,$fn=10);

  translate([-width/2,0,0])
    scale([0.5,1,1])
      cylinder(r=60,h=height+10,center=true,$fn=20);
    
  translate([width/2,0,0])
    scale([0.5,1,1])
      cylinder(r=60,h=height+10,center=true,$fn=20);

  translate([-width/4+15,0,0])
    scale([0.5,1,1])
      cylinder(r=40,h=height+10,center=true,$fn=20);
      
  translate([width/4-15,0,0])
    scale([0.5,1,1])
      cylinder(r=40,h=height+10,center=true,$fn=20);


  translate([bearingxdist/2,bearingydist/2,-9])
    rotate([0,90,0])
      rodament();

  translate([-bearingxdist/2,bearingydist/2,-9])
    rotate([0,90,0])
      rodament();

  translate([bearingxdist/2,-bearingydist/2,-9])
    rotate([0,90,0])
      rodament();

  translate([-bearingxdist/2,-bearingydist/2,-9])
    rotate([0,90,0])
      rodament();

  //hole bearing screw
  //xy positive bearing
  translate([bearingxdist/2+10,bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2-10,bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2+10,bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2-10,bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  //x pos y neg bearing
  translate([bearingxdist/2+10,-bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2-10,-bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2+10,-bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([bearingxdist/2-10,-bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  //x neg y neg bearing
  translate([-bearingxdist/2+10,-bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2-10,-bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2+10,-bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2-10,-bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  //x neg y pos bearing
  translate([-bearingxdist/2+10,bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2-10,bearingydist/2+12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2+10,bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

  translate([-bearingxdist/2-10,bearingydist/2-12,-5])
    cylinder(r=1.6,h=height+10,center=true,$fn=20);

}


difference(){
  translate([0,length/2-15,25])
    cube([150,12,42],center= true);

  translate([60,75,25])
    rotate([90,0,0])
      cylinder(r=4.2,h = 20 ,center=true);

  translate([-60,75,25])
    rotate([90,0,0])
      cylinder(r=4.2,h = 20 ,center=true);

  //motor hole
  translate([0,75,25])
    rotate([90,0,0])
      cylinder(r=12,h = 20 ,center=true);
      
  //motor screw holes
  translate([15.5,75,25+15.5])
    rotate([90,0,0])
      cylinder(r=1.6,h = 20 ,center=true);
      
  translate([-15.5,75,25+15.5])
    rotate([90,0,0])
      cylinder(r=1.6,h = 20 ,center=true);
      
  translate([15.5,75,25-15.5])
    rotate([90,0,0])
      cylinder(r=1.6,h = 20 ,center=true);
      
  translate([-15.5,75,25-15.5])
    rotate([90,0,0])
      cylinder(r=1.6,h = 20 ,center=true);
}

difference(){
  translate([0,-length/2+15,25])
    cube([150,12,42],center= true);

  translate([60,-75,25])
    rotate([90,0,0])
      cylinder(r=4.2,h = 20 ,center=true);

  translate([-60,-75,25])
    rotate([90,0,0])
      cylinder(r=4.2,h = 20 ,center=true);

  translate([0,-75,25])
    rotate([90,0,0])
      cylinder(r=4.2,h = 20 ,center=true);
}

