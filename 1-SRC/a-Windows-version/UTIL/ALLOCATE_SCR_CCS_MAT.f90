! ##################################################################################################################################
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

      SUBROUTINE ALLOCATE_SCR_CCS_MAT ( NAME, NCOLS, NTERMS, CALLING_SUBR )
 
! Allocate scratch matrices in sparse, compressed column storage (CCS), format.
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_SCR_CCS_MAT_BEGEND
      USE SCRATCH_MATRICES , ONLY     :  I_CCS1, J_CCS1, CCS1, I_CCS2, J_CCS2, CCS2, I_CCS3, J_CCS3, CCS3

      USE ALLOCATE_SCR_CCS_MAT_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'ALLOCATE_SCR_CCS_MAT'
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(14*BYTE)              :: NAMEL             ! First 14 bytes of NAME
      CHARACTER(6*BYTE)               :: NAMEO             ! Array name (used for output error message)
 
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols for matrix CCSi
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of nonzero terms that will be in matrix CCSi
      INTEGER(LONG)                   :: I                 ! DO loop index   
      INTEGER(LONG)                   :: IERR              ! STAT from DEALLOCATE
      INTEGER(LONG)                   :: JERR              ! Local error indicator
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_SCR_CCS_MAT_BEGEND

      REAL(DOUBLE)                    :: CUR_MB_ALLOCATED  ! MB of memory that is currently allocated to ARRAY_NAME when subr
!                                                            ALLOCATED_MEMORY is called (before entering MB_ALLOCATED into array
!                                                            ALLOCATED_ARRAY_MEM
      REAL(DOUBLE)                    :: MB_ALLOCATED      ! Megabytes of mmemory allocated for the arrays to put into array
!                                                            ALLOCATED_ARRAY_MEM when subr ALLOCATED_MEMORY is called

      INTRINSIC                       :: REAL

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      MB_ALLOCATED = ZERO
      JERR = 0

! Allocate array named 'NAME' which was declared allocatable in module SCRATCH_MATRICES

      IF (NAME == 'CCS1') THEN                             ! Allocate arrays for CCS1

         NAMEO = 'J_CCS1'
         IF (ALLOCATED(J_CCS1)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (J_CCS1(NCOLS+1),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NCOLS+1
               J_CCS1(I) = 1
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'I_CCS1'
         IF (ALLOCATED(I_CCS1)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (I_CCS1(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  I_CCS1(I) = 0
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'CCS1'
         IF (ALLOCATED(CCS1)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (CCS1(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  CCS1(I) = ZERO
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

      ELSE IF (NAME == 'CCS2') THEN                        ! Allocate arrays for CCS2

         NAMEO = 'J_CCS2'
         IF (ALLOCATED(J_CCS2)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (J_CCS2(NCOLS+1),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NCOLS+1
               J_CCS2(I) = 1
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'I_CCS2'
         IF (ALLOCATED(I_CCS2)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (I_CCS2(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  I_CCS2(I) = 0
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'CCS2'
         IF (ALLOCATED(CCS2)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (CCS2(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  CCS2(I) = ZERO
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

      ELSE IF (NAME == 'CCS3') THEN                        ! Allocate arrays for CCS3

         NAMEO = 'J_CCS3'
         IF (ALLOCATED(J_CCS3)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (J_CCS3(NCOLS+1),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NCOLS+1
               J_CCS3(I) = 1
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'I_CCS3'
         IF (ALLOCATED(I_CCS3)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (I_CCS3(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  I_CCS3(I) = 0
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

         NAMEO = 'CCS3'
         IF (ALLOCATED(CCS3)) THEN
            WRITE(ERR,990) SUBR_NAME, NAME
            WRITE(F06,990) SUBR_NAME, NAME
            FATAL_ERR = FATAL_ERR + 1
            JERR = JERR + 1
         ELSE
            ALLOCATE (CCS3(NTERMS),STAT=IERR)
            IF (IERR == 0) THEN
               DO I=1,NTERMS
                  CCS3(I) = ZERO
               ENDDO
            ELSE
               WRITE(ERR,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               WRITE(F06,991) MB_ALLOCATED,NAMEO,SUBR_NAME,IERR
               FATAL_ERR = FATAL_ERR + 1
               JERR = JERR + 1
            ENDIF
         ENDIF

      ELSE                                                 ! NAME not recognized, so coding error

         WRITE(ERR,915) SUBR_NAME, 'ALLOCATED', NAME 
         WRITE(F06,915) SUBR_NAME, 'ALLOCATED', NAME
         FATAL_ERR = FATAL_ERR + JERR
         JERR = JERR + 1

      ENDIF
 
! Quit if there were errors

      IF (JERR /= 0) THEN
         WRITE(ERR,1699) SUBR_NAME, CALLING_SUBR
         WRITE(F06,1699) SUBR_NAME, CALLING_SUBR
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! **********************************************************************************************************************************
      MB_ALLOCATED = (REAL(LONG)*REAL(NCOLS + 1 + NTERMS) + REAL(DOUBLE)*REAL(NTERMS))/ONEPP6
      CALL ALLOCATED_MEMORY ( NAME, MB_ALLOCATED, 'ALLOC', 'Y', CUR_MB_ALLOCATED, SUBR_NAME )

      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         NAMEL(1:LEN(NAMEL)) = ' '
         NAMEL(1:) = NAME(1:)
         IF (DEBUG(107) == 0) THEN
            WRITE(F04,9002) SUBR_NAME, TSEC, MB_ALLOCATED, NAMEL, NCOLS, NTERMS, TOT_MB_MEM_ALLOC
         ELSE
            WRITE(F04,9004) SUBR_NAME, TSEC, MB_ALLOCATED, NAMEL, NCOLS, NTERMS, TOT_MB_MEM_ALLOC
         ENDIF
      ENDIF

      RETURN

! **********************************************************************************************************************************
  915 FORMAT(' *ERROR   915: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' NAME OF ARRAY TO BE ',A,' IS INCORRECT. INPUT NAME WAS ',A)

  990 FORMAT(' *ERROR   990: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' CANNOT ALLOCATE MEMORY TO ARRAY ',A,'. IT IS ALREADY ALLOCATED')

  991 FORMAT(' *ERROR   991: CANNOT ALLOCATE ',F10.3,' MB OF MEMORY TO ARRAY ',A,' IN SUBROUTINE ',A                               &
                    ,/,14X,' ALLOCATION STAT = ',I8)

 1699 FORMAT('               THE SUBR IN WHICH THESE ERRORS WERE FOUND (',A,') WAS CALLED BY SUBR ',A)

 9002 FORMAT(1X,A,' END  ',F10.3,F13.3,' MB ',A15,':',I12,' col,',I12,' nonzero, T:',F10.3)

 9004 FORMAT(1X,A,' END  ',F10.3,F13.6,' MB ',A15,':',I12,' col,',I12,' nonzero, T:',F13.6)

! **********************************************************************************************************************************
 
      END SUBROUTINE ALLOCATE_SCR_CCS_MAT
