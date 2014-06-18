C $Id: selelm.f,v 1.1 1991/02/21 15:45:25 gdsjaar Exp $
C $Log: selelm.f,v $
C Revision 1.1  1991/02/21 15:45:25  gdsjaar
C Initial revision
C
C=======================================================================
      SUBROUTINE SELELM (MAT, SELECT, NUMEL, NELBLK, NUMSEL)
C=======================================================================
      DIMENSION MAT(6,*)
      LOGICAL SELECT(*)

      CALL INILOG (NUMEL, .FALSE., SELECT)

      DO 20 IBLK = 1, NELBLK
         IF (MAT(5,IBLK) .GT. 0) THEN
            IBEG = MAT(3,IBLK)
            IEND = MAT(4,IBLK)
            DO 10 IEL = IBEG, IEND
               SELECT(IEL) = .TRUE.
   10       CONTINUE
         END IF
   20 CONTINUE

      NUMSEL = NUMEQL (.TRUE., NUMEL, SELECT)

      RETURN
      END