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

      MODULE LINK3_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK3

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE READ_L1A_Interface
      USE OUTA_HERE_Interface
      USE SYM_MAT_DECOMP_LAPACK_Interface
      USE ALLOCATE_COL_VEC_Interface
      USE ALLOCATE_LAPACK_MAT_Interface
      USE FILE_OPEN_Interface
      USE GET_SPARSE_CRS_COL_Interface
      USE WRITE_VECTOR_Interface
      USE FBS_LAPACK_Interface
      USE EPSCALC_Interface
      USE VECINORM_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE DEALLOCATE_COL_VEC_Interface
      USE FILE_CLOSE_Interface
      USE WRITE_L1A_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE FILE_INQUIRE_Interface

      END MODULE LINK3_USE_IFs
