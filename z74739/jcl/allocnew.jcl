//ALLOCNEW JOB 1,NOTIFY=&SYSUID                                         00010000
//*                                                                     00020000
//* //DELETE   EXEC PGM=IDCAMS                                          00050000
//* //SYSPRINT DD SYSOUT=*                                              00060000
//* //SYSIN    DD *,SYMBOLS=CNVTSYS                                     00070000
//*   DELETE &SYSUID..JCL                                               00080000
//*   DELETE &SYSUID..CBL                                               00090000
//*   DELETE &SYSUID..LOAD                                              00100000
//*   DELETE &SYSUID..DATA                                              00110000
//*   SET MAXCC=0                                                       00120000
//*                                                                     00130000
//JCL     EXEC PGM=IEBCOPY                                              00140000
//SYSIN    DD DUMMY                                                     00150000
//SYSPRINT DD DUMMY                                                     00160000
//SYSUT1   DD DSN=ZOS.PUBLIC.JCL,DISP=SHR                               00170000
//SYSUT2   DD DSN=&SYSUID..JCL,DISP=(,CATLG,DELETE),                    00180000
//       LIKE=ZOS.PUBLIC.JCL                                            00190000
//CBL     EXEC PGM=IEBCOPY                                              00200000
//SYSIN    DD DUMMY                                                     00210000
//SYSPRINT DD DUMMY                                                     00220000
//SYSUT1   DD DSN=ZOS.PUBLIC.CBL,DISP=SHR                               00230000
//SYSUT2   DD DSN=&SYSUID..CBL,DISP=(,CATLG,DELETE),                    00240000
//       LIKE=ZOS.PUBLIC.CBL                                            00250000
//LOAD    EXEC PGM=IEBCOPY                                              00260000
//SYSIN    DD DUMMY                                                     00270000
//SYSPRINT DD DUMMY                                                     00280000
//SYSUT1   DD DSN=ZOS.PUBLIC.LOAD,DISP=SHR                              00290000
//SYSUT2   DD DSN=&SYSUID..LOAD,DISP=(,CATLG,DELETE),                   00300000
//       LIKE=ZOS.PUBLIC.LOAD,DSNTYPE=LIBRARY                           00310000
//DATA    EXEC PGM=IEBGENER                                             00320000
//SYSIN    DD DUMMY                                                     00330000
//SYSPRINT DD DUMMY                                                     00340000
//SYSUT1   DD DSN=ZOS.PUBLIC.SEQ.DATA,DISP=SHR                          00350000
//SYSUT2   DD DSN=&SYSUID..DATA,DISP=(,CATLG,DELETE),                   00360000
//       LIKE=ZOS.PUBLIC.SEQ.DATA                                       00370000
