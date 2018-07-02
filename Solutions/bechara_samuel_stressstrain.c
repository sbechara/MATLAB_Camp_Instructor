/*
As always header is required
-1 if they omit
*/

/*****************************************************************************
                          bechara_samuel_stresstrain.c
*****************************************************************************
  Description: compute the stress and strain in steel rods of different
               diameters D varying from 2 inches to 5 inches
               with increments of 1.0 subject to compression load P varying
               from 50,000 to 100,000 pounds per square inch in increments of
               25,000.
  Author: Samuel Bechara
  Date: 9 November 2016
  Last Modified: 9 November 2016
*****************************************************************************/

#include <stdio.h>

// define constants
// they SHOULD put them here, if not don't take off points but make a note
#define PI 3.14159f
#define ES 30000000

int main(void)
{
  // declare variables, in this case they are all floats
  float load,diameter,area,stress,strain;

  // loop through all loads
  for(load = 50000; load <= 100000; load+=25000)
  {
    // we are going to make 3 tables, one for each load
    printf("\nCompression Load = %10.2f\n\n",load);
    printf("Diameter    Stress        Strain\n"); // this is the table header

    // loop through all diameters
    for(diameter = 2.0; diameter <= 5.0; diameter ++)
    {
      // calculate all values
      area = (PI * diameter * diameter) / 4.0;
      stress = load / area;
      strain = stress / ES;
      printf("%5.2f      %8.2f      %8.6f\n",diameter,stress,strain);
    }
  }
  printf("\n\n");
  return 0;
}
