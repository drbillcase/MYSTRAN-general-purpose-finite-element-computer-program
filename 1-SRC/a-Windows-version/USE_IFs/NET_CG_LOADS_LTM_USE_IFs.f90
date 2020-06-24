! Begin MIT license text.                                                                                    
! _______________________________________________________________________________________________________
                                                                                                         
! Copyright 2019 Dr William R Case, Jr (dbcase29@gmail.com)                                              
                                                                                                         
! Permission is hereby granted, free of charge, to any person obtaining a copy of this software and      
! associated documentation files (the "Software"), to deal in the Software without restriction, including
! without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to   
! the following conditions:                                                                              
                                                                                                         
! The above copyright notice and this permission notice shall be included in all copies or substantial   
! portions of the Software and documentation.                                                                              
                                                                                                         
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS                                
! OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,                            
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE                            
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER                                 
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,                          
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN                              
! THE SOFTWARE.                                                                                          
! _______________________________________________________________________________________________________
                                                                                                        
! End MIT license text.                                                                                      

      MODULE NET_CG_LOADS_LTM_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE NET_CG_LOADS_LTM

      USE OURTIM_Interface
      USE MATMULT_SFF_Interface
      USE MATMULT_FFF_T_Interface
      USE INVERT_FF_MAT_Interface
      USE MATMULT_FFF_Interface
      USE CNT_NONZ_IN_FULL_MAT_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE FULL_TO_SPARSE_CRS_Interface
      USE MERGE_MAT_COLS_SSS_Interface
      USE ALLOCATE_SCR_CCS_MAT_Interface
      USE SPARSE_CRS_SPARSE_CCS_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE MATMULT_SSS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE MATMULT_SSS_Interface
      USE WRITE_SPARSE_CRS_Interface

      END MODULE NET_CG_LOADS_LTM_USE_IFs
