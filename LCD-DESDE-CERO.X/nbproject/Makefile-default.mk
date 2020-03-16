#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=XLCD/busyxlcd.c XLCD/openxlcd.c XLCD/putrxlcd.c XLCD/putsxlcd.c XLCD/readaddr.c XLCD/readdata.c XLCD/setcgram.c XLCD/setddram.c XLCD/wcmdxlcd.c XLCD/writdata.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/XLCD/busyxlcd.p1 ${OBJECTDIR}/XLCD/openxlcd.p1 ${OBJECTDIR}/XLCD/putrxlcd.p1 ${OBJECTDIR}/XLCD/putsxlcd.p1 ${OBJECTDIR}/XLCD/readaddr.p1 ${OBJECTDIR}/XLCD/readdata.p1 ${OBJECTDIR}/XLCD/setcgram.p1 ${OBJECTDIR}/XLCD/setddram.p1 ${OBJECTDIR}/XLCD/wcmdxlcd.p1 ${OBJECTDIR}/XLCD/writdata.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/XLCD/busyxlcd.p1.d ${OBJECTDIR}/XLCD/openxlcd.p1.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d ${OBJECTDIR}/XLCD/readaddr.p1.d ${OBJECTDIR}/XLCD/readdata.p1.d ${OBJECTDIR}/XLCD/setcgram.p1.d ${OBJECTDIR}/XLCD/setddram.p1.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d ${OBJECTDIR}/XLCD/writdata.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/XLCD/busyxlcd.p1 ${OBJECTDIR}/XLCD/openxlcd.p1 ${OBJECTDIR}/XLCD/putrxlcd.p1 ${OBJECTDIR}/XLCD/putsxlcd.p1 ${OBJECTDIR}/XLCD/readaddr.p1 ${OBJECTDIR}/XLCD/readdata.p1 ${OBJECTDIR}/XLCD/setcgram.p1 ${OBJECTDIR}/XLCD/setddram.p1 ${OBJECTDIR}/XLCD/wcmdxlcd.p1 ${OBJECTDIR}/XLCD/writdata.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=XLCD/busyxlcd.c XLCD/openxlcd.c XLCD/putrxlcd.c XLCD/putsxlcd.c XLCD/readaddr.c XLCD/readdata.c XLCD/setcgram.c XLCD/setddram.c XLCD/wcmdxlcd.c XLCD/writdata.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/XLCD/busyxlcd.p1: XLCD/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/busyxlcd.p1 XLCD/busyxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/busyxlcd.d ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/openxlcd.p1: XLCD/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/openxlcd.p1 XLCD/openxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/openxlcd.d ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putrxlcd.p1: XLCD/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/putrxlcd.p1 XLCD/putrxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putrxlcd.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putsxlcd.p1: XLCD/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/putsxlcd.p1 XLCD/putsxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putsxlcd.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readaddr.p1: XLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/readaddr.p1 XLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/XLCD/readaddr.d ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readdata.p1: XLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/readdata.p1 XLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/readdata.d ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setcgram.p1: XLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/setcgram.p1 XLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setcgram.d ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setddram.p1: XLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/setddram.p1 XLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setddram.d ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/wcmdxlcd.p1: XLCD/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/wcmdxlcd.p1 XLCD/wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/wcmdxlcd.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/writdata.p1: XLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/writdata.p1 XLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/writdata.d ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/XLCD/busyxlcd.p1: XLCD/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/busyxlcd.p1 XLCD/busyxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/busyxlcd.d ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/openxlcd.p1: XLCD/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/openxlcd.p1 XLCD/openxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/openxlcd.d ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putrxlcd.p1: XLCD/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/putrxlcd.p1 XLCD/putrxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putrxlcd.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putsxlcd.p1: XLCD/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/putsxlcd.p1 XLCD/putsxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putsxlcd.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readaddr.p1: XLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/readaddr.p1 XLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/XLCD/readaddr.d ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readdata.p1: XLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/readdata.p1 XLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/readdata.d ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setcgram.p1: XLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/setcgram.p1 XLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setcgram.d ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setddram.p1: XLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/setddram.p1 XLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setddram.d ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/wcmdxlcd.p1: XLCD/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/wcmdxlcd.p1 XLCD/wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/wcmdxlcd.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/writdata.p1: XLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/XLCD/writdata.p1 XLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/writdata.d ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../LCD-DESDE-CERO.X" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=0x1000  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/LCD-DESDE-CERO.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
