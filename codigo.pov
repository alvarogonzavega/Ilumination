// ILUMINATION PRACTICE. ALVARO GONZALEZ DE LA VEGA. 100363686

// ==== Standard POV-Ray Includes ====
#include "colors.inc"	  // Standard Color definitions
#include "textures.inc"	  // Standard Texture definitions
#include "functions.inc"  // internal functions usable in user defined functions 

// ==== Additional Includes ====
// Don't have all of the following included at once, it'll cost memory and time
// to parse!
// --- general include files ---
#include "arrays.inc"     // macros for manipulating arrays
#include "chars.inc"      // A complete library of character objects, by Ken Maeno
#include "consts.inc"     // Various constants and alias definitions
#include "debug.inc"      // contains various macros for debugging scene files
#include "logo.inc"       // The official POV-Ray Logo in various forms
#include "math.inc"       // general math functions and macros
#include "rad_def.inc"    // Some common radiosity settings
#include "rand.inc"       // macros for generating random numbers
#include "shapes.inc"     // macros for generating various shapes
#include "shapes2.inc"    // some not built in basic shapes
#include "shapesq.inc"    // Pre-defined quartic shapes
#include "skies.inc"      // Ready defined sky spheres
#include "stars.inc"      // Some star fields
#include "strings.inc"    // macros for generating and manipulating text strings
#include "sunpos.inc"     // macro for sun position on a given date, time, and location on earth
#include "transforms.inc" // transformation macros 

// --- textures ---
#include "finish.inc"     // Some basic finishes
#include "glass.inc"      // Glass textures/interiors
#include "golds.inc"      // Gold textures
#include "metals.inc"     // Metallic pigments, finishes, and textures
#include "stones.inc"     // Binding include-file for STONES1 and STONES2
#include "stones1.inc"    // Great stone-textures created by Mike Miller
#include "stones2.inc"    // More, done by Dan Farmer and Paul Novak
#include "woodmaps.inc"   // Basic wooden colormaps
#include "woods.inc"      // Great wooden textures created by Dan Farmer and Paul Novak

// perspective (default) camera
camera {
  location  <0.0, 4, -25.0>
  look_at   <0.0, 4.0, 0>
  right     x*image_width/image_height
}  /*

camera {
  location  <4.0, 3, -15.0>
  look_at   <-1.0, 1, -13>
  right     x*image_width/image_height
}   
     */
     






plane { <0,1,0>, 0  hollow // normal vector, distance to zero ----

        texture{ pigment{ color rgb< 1, 0.80, 0.55>*1.2}
                 normal { granite 0.75 scale 0.1  }
                 finish { phong 1 reflection{ 0.05 } }
               } // end of texture


        scale < 1, 1, 1>
        translate<0,1,0>
      } // end of plane ------------------------------------------
      
      
plane { <0,0,1>, 0  hollow // normal vector, distance to zero ----

        texture { 
                 pigment {   
       gradient y
      color_map {
	[0.0 color rgb <0.7,0.3,0.00> ]
	[0.01 color rgb <1.00,0.70,0.40> ] 
	[0.05 color rgb <1.00,0.70,0.40> ]
	[0.1 color <1.00,0.65,0.40> ] 
	[0.2 color <0.71,0.76,0.66> ]
	[0.3 color <0.71,0.76,0.66> ]  
	[0.5 color <0.23,0.45,0.75> ]
	[0.6 color Black ]
	[0.8 color Black ]
	[1.0 color Black ]
      }}
              }
        scale < 1, 50, 1>
        translate<2,0,27>
      } // end of plane ------------------------------------------
      
         
    


// create a point "parallel" (conical directed) light source
light_source {
  <-17.5,7,7>   //Detras de la pared y a la izda              // light's position (translated below)
    color rgb< 1.0, 0.4, 0.2>  // light's color             
    parallel // this kind of light source
  point_at <7.5, 5,3.9>   //A la derecha del segundo arco   // direction of spotlight
} 





      
difference{
      
box { <-1, 0,-1>,< 100.00, 50.00, 1.5>   

      texture { pigment{ color rgb<1,1,1>*0.95}  
                finish { phong 1 reflection{ 0.00 metallic 0.00} } 
              } // end of texture

      scale <1,1,1> rotate<0,0,0> translate<-15,0,5> 
    } // end of box --------------------------------------

      
      
merge{

   cylinder { <0,0,0>,<0,11.3,0>, 4 

           texture { pigment { color rgb<1,1,1>*0.8 }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } // end of cylinder -------------------------------------
         
     sphere { <0,0,0>, 4 

        texture { pigment{ color rgb<1.00, 1,1>*0.8}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>  rotate<0,0,0>  translate<0,11.2,0>  
       }  // end of sphere -----------------------------------
           
      
      translate<-5.5,0,4.5>
    
 

}


merge{

   cylinder { <0,0,0>,<0,11.3,0>, 4 

           texture { pigment { color rgb<1,1,1>*0.8 }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } // end of cylinder -------------------------------------
         
     sphere { <0,0,0>, 4 

        texture { pigment{ color rgb<1.00, 1,1>*0.8}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>  rotate<0,0,0>  translate<0,11.2,0>  
       }  // end of sphere -----------------------------------
           
      
      translate<5.5,0,4.5>
    
 

}     
      

}

 




cylinder { <0,0,0>,<0,0,50.00>,0.1 
                texture{ pigment{ image_map {png "azulejo.png"}   
                rotate<0,90,0> scale 0.5 translate<0,0,0>
             } } // end of texture 
           scale <1,1,1> rotate<0,90,0> translate<-15,1,-15>
         } // end of cylinder  ------------------------------------

    



box { <-1.00, 0.00, -1.00>,< 50, 0.2, 0.01>   

                texture{ pigment{ image_map {png "azulejo.png"}   
                rotate<0,0,0> scale 0.5 translate<0,0,0>
             } } // end of texture  


      scale <1,1,1> rotate<0,0,0> translate<-20,1,-1> 
    } // end of box --------------------------------------  
    
    
    

box { <-1.00, 0.00, -1.00>,< 50, 0.01, 13>   

            
             texture{ pigment{ color rgb<0.1,0.3,0.5>  }
                 normal { bumps 0.5 scale 0.1 turbulence 0.6}
                 finish { phong 1 phong_size 20 reflection{ 0.6 } refraction 1.33 }
               } // end of texture
      



      scale <1,1,1> rotate<0,0,0> translate<-25,1,-14> 
    } // end of box --------------------------------------
    
sphere { <0,0,0>, 1 

             texture { pigment{ color rgb< 1.0, 0.6, 0.85> } // very pale red violet
               // normal { bumps 0.5 scale 0.05 }
                  finish { phong 1 reflection 0.00}
                } // end of texture 


          scale<1,1,1>  rotate<0,0,0>  translate<3,2,-9>  
       }  // end of sphere -----------------------------------
       
       
        

merge{

cylinder { <0,0,0>,<0,2.50,0>, 0.05 

           texture { pigment { color rgb <0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<-3,0,-14>
         } // end of cylinder -------------------------------------
         
         
//--------------------------------------------------------------------------
#include "shapes3.inc"
//--------------------------------------------------------------------------
object{ Segment_of_Torus ( 0.5, // radius major, 
                           0.05, // radius minor, 
                           -70  // segment angle (in degrees)
                         ) //-----------------------------------
        texture { pigment{ color rgb <0.5,0.5,0.5>}  
                  finish { phong 1 reflection{0.80 metallic 0.15}}
                } // end of texture
        scale <1,1,1> rotate<0,30,90> translate<-3,2.05,-13.75>
      } // end of Torus_Segment(...) ---------------------------              
//--------------------------------------------------------------------------

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,1,-12.62>
         } // end of cylinder -------------------------------------
         
         
cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.7,-13.15>
         } // end of cylinder -------------------------------------         

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.35,-13.15>
         } // end of cylinder -------------------------------------            
  
  translate<0,0,-1>

}    


merge{

cylinder { <0,0,0>,<0,2.50,0>, 0.05 

           texture { pigment { color rgb <0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<-3,0,-14>
         } // end of cylinder -------------------------------------
         
         
//--------------------------------------------------------------------------
#include "shapes3.inc"
//--------------------------------------------------------------------------
object{ Segment_of_Torus ( 0.5, // radius major, 
                           0.05, // radius minor, 
                           -70  // segment angle (in degrees)
                         ) //-----------------------------------
        texture { pigment{ color rgb <0.5,0.5,0.5>}  
                  finish { phong 1 reflection{0.80 metallic 0.15}}
                } // end of texture
        scale <1,1,1> rotate<0,30,90> translate<-3,2.05,-13.75>
      } // end of Torus_Segment(...) ---------------------------              
//--------------------------------------------------------------------------

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,1,-12.62>
         } // end of cylinder -------------------------------------
         
         
cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.7,-13.15>
         } // end of cylinder -------------------------------------         

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.80 metallic 0.15} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.35,-13.15>
         } // end of cylinder -------------------------------------
         
         
 translate <1.8,0.0,-1>                    


}

// general light definition
light_source {
  <00,10, -15>      // position of the light source
  color rgb 0.35     // color of the light
  // spotlight
  // cylinder
  // parallel
  // area_light <AXIS1>, <AXIS2>, SIZE1, SIZE2
  // (---for spotlight/cylinder---)
  // radius FLOAT
  // falloff FLOAT
  // tightness FLOAT
  // point_at <VECTOR>   // for spotlight/cylinder/parallel
  // (---for area_light---)
  // adaptive FLOAT
  // jitter FLOAT
  // circular
  // orient
  // (---other modifiers---)
  // looks_like { OBJECT }
  // fade_distance FLOAT
  // fade_power FLOAT
  // media_attenuation BOOL
  // media_interaction BOOL
  // shadowless
  
  // light_source { ...
  // put this inside a light_source to add light fading
  fade_distance 10
  fade_power 2
} 

// general light definition
light_source {
  <00,10, 9>      // position of the light source
  color rgb 0.2
  parallel
  point_at <0,0,7>
  fade_distance 20
  fade_power 10     // color of the light
  // spotlight
  // cylinder
  // parallel
  // area_light <AXIS1>, <AXIS2>, SIZE1, SIZE2
  // (---for spotlight/cylinder---)
  // radius FLOAT
  // falloff FLOAT
  // tightness FLOAT
  // point_at <VECTOR>   // for spotlight/cylinder/parallel
  // (---for area_light---)
  // adaptive FLOAT
  // jitter FLOAT
  // circular
  // orient
  // (---other modifiers---)
  // looks_like { OBJECT }
  // fade_distance FLOAT
  // fade_power FLOAT
  // media_attenuation BOOL
  // media_interaction BOOL
  // shadowless
  

}

// general light definition
light_source {
  <00,10, 12>      // position of the light source
  color rgb 1    // color of the light
  // spotlight
  // cylinder
  // parallel
  // area_light <AXIS1>, <AXIS2>, SIZE1, SIZE2
  // (---for spotlight/cylinder---)
  // radius FLOAT
  // falloff FLOAT
  // tightness FLOAT
  // point_at <VECTOR>   // for spotlight/cylinder/parallel
  // (---for area_light---)
  // adaptive FLOAT
  // jitter FLOAT
  // circular
  // orient
  // (---other modifiers---)
  // looks_like { OBJECT }
  // fade_distance FLOAT
  // fade_power FLOAT
  // media_attenuation BOOL
  // media_interaction BOOL
  // shadowless
  

}  



global_settings{

radiosity
{
    pretrace_start 0.4      // Use a pretrace_end value close to what you
    pretrace_end    0.1  // intend to use for your final trace

    count 50                    // try 25 or so

    nearest_count 10            // 10 will be ok for now

    error_bound 0.375           // since 0.5 was too large, we use 0.375,
                                //  halfway between 0.25 and 0.5

    recursion_limit 3           // Recursion should be near what you want it to be
                                //  If you aren't sure, start with 3 or 4
    }
}



    