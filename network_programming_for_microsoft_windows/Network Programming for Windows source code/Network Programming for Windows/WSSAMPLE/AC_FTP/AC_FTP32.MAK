# Microsoft Visual C++ Generated NMAKE File, Format Version 2.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Win32 Release" && "$(CFG)" != "Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "AC_FTP32.MAK" CFG="Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

################################################################################
# Begin Project
# PROP Target_Last_Scanned "Win32 Debug"
MTL=MkTypLib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Win32 Release"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "WinRel"
# PROP Intermediate_Dir "WinRel"
OUTDIR=.\WinRel
INTDIR=.\WinRel

ALL : $(OUTDIR)/AC_FTP32.exe $(OUTDIR)/AC_FTP32.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE CPP /nologo /MT /W3 /GX /YX /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR /c
# ADD CPP /nologo /MT /W3 /GX /YX /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR /c
CPP_PROJ=/nologo /MT /W3 /GX /YX /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_MBCS" /FR$(INTDIR)/ /Fp$(OUTDIR)/"AC_FTP32.pch" /Fo$(INTDIR)/ /c 
CPP_OBJS=.\WinRel/
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"AC_FTP.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o$(OUTDIR)/"AC_FTP32.bsc" 
BSC32_SBRS= \
	$(INTDIR)/AC_FTP.SBR \
	$(INTDIR)/FTP_CTRL.SBR \
	$(INTDIR)/FTP_DATA.SBR

$(OUTDIR)/AC_FTP32.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows /MACHINE:IX86
# ADD LINK32 oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows /MACHINE:IX86
LINK32_FLAGS=oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows\
 /INCREMENTAL:no /PDB:$(OUTDIR)/"AC_FTP32.pdb" /MACHINE:IX86\
 /DEF:".\AC_FTP32.DEF" /OUT:$(OUTDIR)/"AC_FTP32.exe" 
DEF_FILE=.\AC_FTP32.DEF
LINK32_OBJS= \
	\WINSOCK\WSOCK32X.lib \
	\WINSOCK\WSOCK32.LIB \
	$(INTDIR)/AC_FTP.OBJ \
	$(INTDIR)/AC_FTP.res \
	$(INTDIR)/FTP_CTRL.OBJ \
	$(INTDIR)/FTP_DATA.OBJ

$(OUTDIR)/AC_FTP32.exe : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Debug"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "WinDebug"
# PROP Intermediate_Dir "WinDebug"
OUTDIR=.\WinDebug
INTDIR=.\WinDebug

ALL : $(OUTDIR)/AC_FTP32.exe $(OUTDIR)/AC_FTP32.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE CPP /nologo /MT /W4 /GX /Zi /YX /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR /c
# ADD CPP /nologo /MT /W3 /GX /Zi /YX /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR /c
CPP_PROJ=/nologo /MT /W3 /GX /Zi /YX /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_MBCS" /FR$(INTDIR)/ /Fp$(OUTDIR)/"AC_FTP32.pch" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"AC_FTP32.pdb" /c 
CPP_OBJS=.\WinDebug/
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"AC_FTP.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o$(OUTDIR)/"AC_FTP32.bsc" 
BSC32_SBRS= \
	$(INTDIR)/AC_FTP.SBR \
	$(INTDIR)/FTP_CTRL.SBR \
	$(INTDIR)/FTP_DATA.SBR

$(OUTDIR)/AC_FTP32.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows /DEBUG /MACHINE:IX86
# ADD LINK32 oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows /DEBUG /MACHINE:IX86
LINK32_FLAGS=oldnames.lib /NOLOGO /STACK:0x10240 /SUBSYSTEM:windows\
 /INCREMENTAL:yes /PDB:$(OUTDIR)/"AC_FTP32.pdb" /DEBUG /MACHINE:IX86\
 /DEF:".\AC_FTP32.DEF" /OUT:$(OUTDIR)/"AC_FTP32.exe" 
DEF_FILE=.\AC_FTP32.DEF
LINK32_OBJS= \
	\WINSOCK\WSOCK32X.lib \
	\WINSOCK\WSOCK32.LIB \
	$(INTDIR)/AC_FTP.OBJ \
	$(INTDIR)/AC_FTP.res \
	$(INTDIR)/FTP_CTRL.OBJ \
	$(INTDIR)/FTP_DATA.OBJ

$(OUTDIR)/AC_FTP32.exe : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Group "Object/Library Files"

################################################################################
# Begin Source File

SOURCE=\WINSOCK\WSOCK32X.lib
# End Source File
################################################################################
# Begin Source File

SOURCE=\WINSOCK\WSOCK32.LIB
# End Source File
# End Group
################################################################################
# Begin Group "Source Files"

################################################################################
# Begin Source File

SOURCE=.\AC_FTP.C
DEP_AC_FT=\

$(INTDIR)/AC_FTP.OBJ :  $(SOURCE)  $(DEP_AC_FT) $(INTDIR)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AC_FTP.RC
DEP_AC_FTP=\
	.\AC_FTP.H

$(INTDIR)/AC_FTP.res :  $(SOURCE)  $(DEP_AC_FTP) $(INTDIR)
   $(RSC) $(RSC_PROJ)  $(SOURCE) 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FTP_CTRL.C
DEP_FTP_C=\
	..\WSA_XTRA.H\
	..\WINSOCKX.H\
	.\AC_FTP.H

$(INTDIR)/FTP_CTRL.OBJ :  $(SOURCE)  $(DEP_FTP_C) $(INTDIR)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FTP_DATA.C
DEP_FTP_D=\
	..\WSA_XTRA.H\
	..\WINSOCKX.H\
	.\AC_FTP.H

$(INTDIR)/FTP_DATA.OBJ :  $(SOURCE)  $(DEP_FTP_D) $(INTDIR)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AC_FTP32.DEF
# End Source File
# End Group
# End Project
################################################################################
