           0

 MYSTRAN Version 6.35     Nov 25 2011 by Dr Bill Case (this ALL FEATURES edition is SP protected)
 *** Please report any problems to the author at drbillc@mystran.com ***                                                                                                                                                                                         

 >> MYSTRAN BEGIN  : 11/26/2011 at 21:17:42.589 The input file is BAR-PINFLAG.DAT                                                                                                                                                                                                                                                 

 
 
 OUTPUT FOR SUBCASE        1
 
                                                       D I S P L A C E M E N T S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            101        0  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
            102        0  1.000000E-04  2.500000E-03  2.500000E-03  0.000000E+00 -4.500000E-03  4.500000E-03
            103        0  2.000000E-04  8.000000E-03  8.000000E-03  0.000000E+00 -6.000000E-03  6.000000E-03
            104        0  1.000000E-04  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
            105        0  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 MAX (for output set):    2.000000E-04  8.000000E-03  8.000000E-03  0.000000E+00  0.000000E+00  6.000000E-03
 MIN (for output set):    0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -6.000000E-03  0.000000E+00

 ABS (for output set):    2.000000E-04  8.000000E-03  8.000000E-03  0.000000E+00  6.000000E-03  6.000000E-03
 
 
 OUTPUT FOR SUBCASE        1
 
                                                     A P P L I E D    F O R C E S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            103        0  2.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                                                          S P C   F O R C E S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            101        0 -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  1.200000E+03 -6.000000E+02
            105        0 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
     SPC FORCE TOTALS:   -2.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  1.200000E+03 -6.000000E+02
     (for output set)
 
 
 OUTPUT FOR SUBCASE        1
 


                                           G R I D   P O I N T   F O R C E   B A L A N C E
                                             (in global coordinate system at each grid)

                                FORCE BALANCE FOR GRID POINT      101 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE               -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  1.200000E+03 -6.000000E+02
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        12  1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00 -1.200000E+03  6.000000E+02
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                :  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 (should all be 0)


                                FORCE BALANCE FOR GRID POINT      102 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        12 -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  6.000000E+02 -3.000000E+02
 BAR      ELEM        23  1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00 -6.000000E+02  3.000000E+02
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                :  0.000000E+00  4.547474E-13  9.094947E-13  0.000000E+00 -9.094947E-13 -9.094947E-13
 (should all be 0)


                                FORCE BALANCE FOR GRID POINT      103 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            2.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        23 -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00 -9.094947E-13 -4.547474E-13
 BAR      ELEM        34 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                : -5.684342E-14  4.547474E-13 -9.094947E-13  0.000000E+00 -9.094947E-13 -4.547474E-13
 (should all be 0)


                                FORCE BALANCE FOR GRID POINT      104 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        34  1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        45 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                :  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 (should all be 0)


                                FORCE BALANCE FOR GRID POINT      105 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE               -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 BAR      ELEM        45  1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                :  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 (should all be 0)


                                      Max abs values of force imbalance totals from above grids

                               T1            T2            T3            R1            R2            R3

 Max abs imbal any grid:  5.684342E-14  4.547474E-13  9.094947E-13  0.000000E+00  9.094947E-13  9.094947E-13
 Max abs force any grid:  2.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  1.200000E+03  6.000000E+02
 as % of max abs force :      2.84E-14%     1.52E-13%     1.52E-13%                   7.58E-14%     1.52E-13%
 Occurs at grid*       :       103           102           102           101           102           102
 (*for output set)
 
 
 OUTPUT FOR SUBCASE        1
 
                                  E L E M   N O D A L   F O R C E S   I N   G L O B A L   C O O R D S
                                               F O R   E L E M E N T   T Y P E   B A R      
      Element     Grid         T1            T2            T3            R1            R2            R3
         ID      Point
             12      101 -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  1.200000E+03 -6.000000E+02
                     102  1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00 -6.000000E+02  3.000000E+02
 
             23      102 -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00  6.000000E+02 -3.000000E+02
                     103  1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  9.094947E-13  4.547474E-13
 
             34      103  1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                     104 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
             45      104  1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                     105 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
                         ------------- ------------- ------------- ------------- ------------- -------------
 MAX (for output set):    1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  1.200000E+03  3.000000E+02
 MIN (for output set):   -1.000000E+02 -3.000000E+02 -6.000000E+02  0.000000E+00 -6.000000E+02 -6.000000E+02

 ABS (for output set):    1.000000E+02  3.000000E+02  6.000000E+02  0.000000E+00  1.200000E+03  6.000000E+02
 
 
 OUTPUT FOR SUBCASE        1
 
                                                       E L E M E N T   E N G I N E E R I N G   F O R C E S
                                                            F O R   E L E M E N T   T Y P E   B A R      
                  Element       Bend-Moment End A           Bend-Moment End B              - Shear -              Axial         Torque
                     ID       Plane 1       Plane 2       Plane 1       Plane 2      Plane 1       Plane 2        Force
                      12  6.000000E+02  1.200000E+03  3.000000E+02  6.000000E+02  3.000000E+02  6.000000E+02  1.000000E+02  0.000000E+00
                      23  3.000000E+02  6.000000E+02  2.273737E-13 -4.547474E-13  3.000000E+02  6.000000E+02  1.000000E+02  0.000000E+00
                      34  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+02  0.000000E+00
                      45  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+02  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- ------------- ------------- -------------
 MAX (for output set):    6.000000E+02  1.200000E+03  3.000000E+02  6.000000E+02  3.000000E+02  6.000000E+02  1.000000E+02  0.000000E+00
 MIN (for output set):    0.000000E+00  0.000000E+00  0.000000E+00 -4.547474E-13  0.000000E+00  0.000000E+00 -1.000000E+02  0.000000E+00

 ABS (for output set):    6.000000E+02  1.200000E+03  3.000000E+02  6.000000E+02  3.000000E+02  6.000000E+02  1.000000E+02  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                             E L E M E N T   S T R E S S E S   I N   L O C A L   E L E M E N T   C O O R D I N A T E   S Y S T E M
                                                          F O R   E L E M E N T   T Y P E   B A R      
                 Element      SA1           SA2           SA3           SA4          Axial         SA-Max        SA-Min      M.S.-T
                    ID        SB1           SB2           SB3           SB4          Stress        SB-Max        SB-Min      M.S.-C
 
                      12 -6.000000E+04 -1.455192E-11  1.200000E+05  1.455192E-11  1.000000E+03  1.210000E+05 -5.900000E+04     -1.00E+00
                         -3.000000E+04  5.820766E-11  6.000000E+04 -5.820766E-11  1.000000E+03  6.100000E+04 -2.900000E+04     -1.00E+00
 
                      23 -3.000000E+04 -2.910383E-11  6.000000E+04  2.910383E-11  1.000000E+03  6.100000E+04 -2.900000E+04     -1.00E+00
                          2.910383E-11  0.000000E+00 -5.820766E-11  0.000000E+00  1.000000E+03  1.000000E+03  1.000000E+03     -1.00E+00
 
                      34  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+03 -1.000000E+03 -1.000000E+03     -1.00E+00
                          0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+03 -1.000000E+03 -1.000000E+03     -9.99E-01
 
                      45  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+03 -1.000000E+03 -1.000000E+03     -1.00E+00
                          0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00 -1.000000E+03 -1.000000E+03 -1.000000E+03     -9.99E-01
                         ------------- ------------- ------------- ------------- ------------- ------------- ------------- ---------
 MAX (for output set):    0.000000E+00  0.000000E+00  1.200000E+05  2.910383E-11  1.000000E+03  1.210000E+05 -1.000000E+03     -1.00E+00
 MAX (for output set):    2.910383E-11  5.820766E-11  6.000000E+04  0.000000E+00  1.000000E+03  6.100000E+04  1.000000E+03     -9.99E-01

 MIN (for output set):   -6.000000E+04 -2.910383E-11  0.000000E+00  0.000000E+00 -1.000000E+03 -1.000000E+03 -5.900000E+04     -1.00E+00
 MIN (for output set):   -3.000000E+04  0.000000E+00 -5.820766E-11 -5.820766E-11 -1.000000E+03 -1.000000E+03 -2.900000E+04     -1.00E+00

 ABS (for output set):    6.000000E+04  2.910383E-11  1.200000E+05  2.910383E-11  1.000000E+03  1.210000E+05  5.900000E+04      1.00E+00
 ABS (for output set):    3.000000E+04  5.820766E-11  6.000000E+04  5.820766E-11  1.000000E+03  6.100000E+04  2.900000E+04      1.00E+00
