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

// general light definition
light_source {
  <10, 10, 10>      // position of the light source
  color rgb 1.0     // color of the light
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




plane { <0,1,0>, 0  hollow // normal vector, distance to zero ----

        texture{ pigment{ color rgb<0.35,0.60, 0.00> }
	         normal { bumps 0.25 scale 0.05 }
                 finish { phong 1 }
               } // end of texture
        scale < 1, 1, 1>
        translate<0,1,0>
      } // end of plane ------------------------------------------   
      
      
difference{
      
box { <-1, 0,-1>,< 100.00, 50.00, 1.5>   

      texture { pigment{ color rgb<1,0,0>}  
                finish { phong 1 reflection{ 0.00 metallic 0.00} } 
              } // end of texture

      scale <1,1,1> rotate<0,0,0> translate<-15,0,5> 
    } // end of box --------------------------------------

      
      
merge{

   cylinder { <0,0,0>,<0,11.3,0>, 4 

           texture { pigment { color rgb<1,1,1> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } // end of cylinder -------------------------------------
         
     sphere { <0,0,0>, 4 

        texture { pigment{ color rgb<1.00, 1,1>}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>  rotate<0,0,0>  translate<0,11.2,0>  
       }  // end of sphere -----------------------------------
           
      
      translate<-5.5,0,4.5>
    
 

}


merge{

   cylinder { <0,0,0>,<0,11.3,0>, 4 

           texture { pigment { color rgb<1,1,1> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<0,0,0> translate<0,0,0>
         } // end of cylinder -------------------------------------
         
     sphere { <0,0,0>, 4 

        texture { pigment{ color rgb<1.00, 1,1>}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>  rotate<0,0,0>  translate<0,11.2,0>  
       }  // end of sphere -----------------------------------
           
      
      translate<5.5,0,4.5>
    
 

}     
      

}

 




box { <-1.00, 0.00, -1.00>,< 10.00, 0.1, 0.01>   

                texture{ pigment{ checker color White color Black }   
                finish { phong 1 } 
                rotate<0,0,0> scale 0.25 translate<0,0,0>
              } // end of texture 


      scale <1,1,1> rotate<0,0,0> translate<-5,1,-14> 
    } // end of box --------------------------------------


box { <-1.00, 0.00, -1.00>,< 50, 0.2, 0.01>   

                texture{ pigment{ checker color White color Black }   
                finish { phong 1 } 
                rotate<0,0,0> scale 0.25 translate<0,0,0>
              } // end of texture 


      scale <1,1,1> rotate<0,0,0> translate<-20,1,-1> 
    } // end of box --------------------------------------
    

box { <-1.00, 0.00, -1.00>,< 50, 0.01, 13>   

      texture { pigment{ color rgb<0.00, 0.00, 1.00>}  
                finish { phong 1 reflection{ 0.00 metallic 0.00} } 
              } // end of texture

      scale <1,1,1> rotate<0,0,0> translate<-25,1,-14> 
    } // end of box --------------------------------------
    
sphere { <0,0,0>, 1 

        texture { pigment{ color rgb<1.00, 0.55, 0.00>}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>  rotate<0,0,0>  translate<3,2,-9>  
       }  // end of sphere -----------------------------------
       
       
        

merge{

cylinder { <0,0,0>,<0,2.50,0>, 0.05 

           texture { pigment { color rgb <0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
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
                  finish { phong 1}
                } // end of texture
        scale <1,1,1> rotate<0,30,90> translate<-3,2.05,-13.75>
      } // end of Torus_Segment(...) ---------------------------              
//--------------------------------------------------------------------------

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,1,-12.62>
         } // end of cylinder -------------------------------------
         
         
cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.7,-13.15>
         } // end of cylinder -------------------------------------         

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.35,-13.15>
         } // end of cylinder -------------------------------------            


}    


merge{

cylinder { <0,0,0>,<0,2.50,0>, 0.05 

           texture { pigment { color rgb <0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
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
                  finish { phong 1}
                } // end of texture
        scale <1,1,1> rotate<0,30,90> translate<-3,2.05,-13.75>
      } // end of Torus_Segment(...) ---------------------------              
//--------------------------------------------------------------------------

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,1,-12.62>
         } // end of cylinder -------------------------------------
         
         
cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.7,-13.15>
         } // end of cylinder -------------------------------------         

cylinder { <0,0,0>,<0,1.7,0>, 0.05 

           texture { pigment { color rgb<0.5,0.5,0.5> }
                   //normal  { bumps 0.5 scale <0.005,0.25,0.005>}
                     finish  { phong 0.5 reflection{ 0.00 metallic 0.00} } 
                   } // end of texture

           scale <1,1,1> rotate<-30,0,00> translate<-3,0.35,-13.15>
         } // end of cylinder -------------------------------------
         
         
 translate <1.8,0.0,0>                    


}    