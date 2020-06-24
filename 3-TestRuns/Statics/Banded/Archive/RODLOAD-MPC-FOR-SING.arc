           0

 MYSTRAN Version 6.35     Nov 25 2011 by Dr Bill Case (this ALL FEATURES edition is SP protected)
 *** Please report any problems to the author at drbillc@mystran.com ***                                                                                                                                                                                         

 >> MYSTRAN BEGIN  : 11/26/2011 at 21:18: 3.777 The input file is RODLOAD-MPC-FOR-SING.DAT                                                                                                                                                                                                                                        

 
 
 OUTPUT FOR SUBCASE        1
 
                                                       D I S P L A C E M E N T S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            101        0  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
            102       12  9.238798E-03 -3.826829E-03  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                                                     A P P L I E D    F O R C E S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            102       12  9.238795E+01 -3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                                                          S P C   F O R C E S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            101        0 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                                                          M P C   F O R C E S
                                              (in global coordinate system at each grid)
           GRID     COORD      T1            T2            T3            R1            R2            R3
                     SYS
            102       12 -2.943160E-15 -7.105427E-15  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 


                                           G R I D   P O I N T   F O R C E   B A L A N C E
                                             (in global coordinate system at each grid)

                                FORCE BALANCE FOR GRID POINT      101 IN GLOBAL COORD SYSTEM        0

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE               -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 ROD      ELEM      1002  1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                :  2.842171E-14  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 (should all be 0)


                                FORCE BALANCE FOR GRID POINT      102 IN GLOBAL COORD SYSTEM       12

                               T1            T2            T3            R1            R2            R3

 APPLIED FORCE            9.238795E+01 -3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 SPC FORCE                0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MPC FORCE               -2.943160E-15 -7.105427E-15  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 ROD      ELEM      1002 -9.238795E+01  3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                         ------------- ------------- ------------- ------------- ------------- -------------
 TOTALS                : -2.842171E-14  7.105427E-15  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 (should all be 0)


                                      Max abs values of force imbalance totals from above grids

                               T1            T2            T3            R1            R2            R3

 Max abs imbal any grid:  2.842171E-14  7.105427E-15  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 Max abs force any grid:  1.000000E+02  3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 as % of max abs force :      2.84E-14%     1.86E-14%                                                        
 Occurs at grid*       :       101           102           101           101           101           101
 (*for output set)
 
 
 OUTPUT FOR SUBCASE        1
 
                                  E L E M   N O D A L   F O R C E S   I N   G L O B A L   C O O R D S
                                               F O R   E L E M E N T   T Y P E   R O D      
      Element     Grid         T1            T2            T3            R1            R2            R3
         ID      Point
           1002      101 -1.000000E+02  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
                     102  9.238795E+01 -3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
                         ------------- ------------- ------------- ------------- ------------- -------------
 MAX (for output set):    9.238795E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 MIN (for output set):   -1.000000E+02 -3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00

 ABS (for output set):    1.000000E+02  3.826835E+01  0.000000E+00  0.000000E+00  0.000000E+00  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                                                       E L E M E N T   E N G I N E E R I N G   F O R C E S
                                                            F O R   E L E M E N T   T Y P E   R O D      
                  Element     Axial        Torque
                     ID       Force
                    1002  1.000000E+02  0.000000E+00
                         ------------- -------------
 MAX (for output set):    1.000000E+02  0.000000E+00
 MIN (for output set):    1.000000E+02  0.000000E+00

 ABS (for output set):    1.000000E+02  0.000000E+00
 
 
 OUTPUT FOR SUBCASE        1
 
                             E L E M E N T   S T R E S S E S   I N   L O C A L   E L E M E N T   C O O R D I N A T E   S Y S T E M
                                                          F O R   E L E M E N T   T Y P E   R O D      
                 Element     Axial       Safety     Torsional     Safety    Element    Axial       Safety     Torsional     Safety
                    ID       Stress      Margin       Stress      Margin       ID      Stress      Margin       Stress      Margin
                    1002  1.000000E+03      9.00E+00  0.000000E+00         
                         ------------- ------------- ------------- -------------
 MAX (for output set):    1.000000E+03      9.00E+00  0.000000E+00      1.00E+10
 MIN (for output set):    1.000000E+03      9.00E+00  0.000000E+00      1.00E+10

 ABS (for output set):    1.000000E+03      9.00E+00  0.000000E+00      1.00E+10
