# GNU Make project makefile autogenerated by GENie
ifeq ($(OS), Windows_NT)
  SHELL = cmd.exe
endif
ifeq ($(OS), windows)
  SHELL = cmd.exe
endif

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || true
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),release)
  OBJDIR     = obj/Release
  TARGETDIR  = ../../bin/linux
  TARGET     = $(TARGETDIR)/genie
  DEFINES   += -DNDEBUG -DLUA_COMPAT_MODULE -DLUA_USE_POSIX -DLUA_USE_DLOPEN
  INCLUDES  += -I../../src/host/lua-5.2.3/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -Os
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -s -rdynamic
  LDDEPS    +=
  LIBS      += $(LDDEPS) -ldl -lm
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR     = obj/Debug
  TARGETDIR  = ../../bin/linux
  TARGET     = $(TARGETDIR)/genie
  DEFINES   += -D_DEBUG -DLUA_COMPAT_MODULE -DLUA_USE_POSIX -DLUA_USE_DLOPEN
  INCLUDES  += -I../../src/host/lua-5.2.3/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -rdynamic
  LDDEPS    +=
  LIBS      += $(LDDEPS) -ldl -lm
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/src/host/os_isfile.o \
	$(OBJDIR)/src/host/os_stat.o \
	$(OBJDIR)/src/host/os_rmdir.o \
	$(OBJDIR)/src/host/os_copyfile.o \
	$(OBJDIR)/src/host/string_hash.o \
	$(OBJDIR)/src/host/os_chdir.o \
	$(OBJDIR)/src/host/os_is64bit.o \
	$(OBJDIR)/src/host/os_match.o \
	$(OBJDIR)/src/host/scripts.o \
	$(OBJDIR)/src/host/string_endswith.o \
	$(OBJDIR)/src/host/os_mkdir.o \
	$(OBJDIR)/src/host/os_getversion.o \
	$(OBJDIR)/src/host/premake_main.o \
	$(OBJDIR)/src/host/path_isabsolute.o \
	$(OBJDIR)/src/host/premake.o \
	$(OBJDIR)/src/host/os_isdir.o \
	$(OBJDIR)/src/host/os_uuid.o \
	$(OBJDIR)/src/host/os_pathsearch.o \
	$(OBJDIR)/src/host/os_getcwd.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lbaselib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lvm.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lcorolib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ltablib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lobject.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lcode.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ldo.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/liolib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ltable.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/loadlib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lundump.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/loslib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lfunc.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/linit.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lstate.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/llex.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ldump.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lstrlib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lmathlib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lauxlib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lopcodes.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lparser.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lapi.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ldblib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lbitlib.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lgc.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ltm.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lzio.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lmem.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lctype.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/lstring.o \
	$(OBJDIR)/src/host/lua-5.2.3/src/ldebug.o \

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src/host \
	$(OBJDIR)/src/host/lua-5.2.3/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIRS) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking genie
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(OBJDIR)
	-$(call MKDIR,$(OBJDIR))
	-$(call MKDIR,$(OBJDIR)/src/host)
	-$(call MKDIR,$(OBJDIR)/src/host/lua-5.2.3/src)

clean:
	@echo Cleaning genie
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/src/host/os_isfile.o: ../../src/host/os_isfile.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_stat.o: ../../src/host/os_stat.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_rmdir.o: ../../src/host/os_rmdir.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_copyfile.o: ../../src/host/os_copyfile.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/string_hash.o: ../../src/host/string_hash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_chdir.o: ../../src/host/os_chdir.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_is64bit.o: ../../src/host/os_is64bit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_match.o: ../../src/host/os_match.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/scripts.o: ../../src/host/scripts.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/string_endswith.o: ../../src/host/string_endswith.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_mkdir.o: ../../src/host/os_mkdir.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_getversion.o: ../../src/host/os_getversion.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/premake_main.o: ../../src/host/premake_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/path_isabsolute.o: ../../src/host/path_isabsolute.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/premake.o: ../../src/host/premake.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_isdir.o: ../../src/host/os_isdir.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_uuid.o: ../../src/host/os_uuid.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_pathsearch.o: ../../src/host/os_pathsearch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/os_getcwd.o: ../../src/host/os_getcwd.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lbaselib.o: ../../src/host/lua-5.2.3/src/lbaselib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lvm.o: ../../src/host/lua-5.2.3/src/lvm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lcorolib.o: ../../src/host/lua-5.2.3/src/lcorolib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ltablib.o: ../../src/host/lua-5.2.3/src/ltablib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lobject.o: ../../src/host/lua-5.2.3/src/lobject.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lcode.o: ../../src/host/lua-5.2.3/src/lcode.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ldo.o: ../../src/host/lua-5.2.3/src/ldo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/liolib.o: ../../src/host/lua-5.2.3/src/liolib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ltable.o: ../../src/host/lua-5.2.3/src/ltable.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/loadlib.o: ../../src/host/lua-5.2.3/src/loadlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lundump.o: ../../src/host/lua-5.2.3/src/lundump.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/loslib.o: ../../src/host/lua-5.2.3/src/loslib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lfunc.o: ../../src/host/lua-5.2.3/src/lfunc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/linit.o: ../../src/host/lua-5.2.3/src/linit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lstate.o: ../../src/host/lua-5.2.3/src/lstate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/llex.o: ../../src/host/lua-5.2.3/src/llex.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ldump.o: ../../src/host/lua-5.2.3/src/ldump.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lstrlib.o: ../../src/host/lua-5.2.3/src/lstrlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lmathlib.o: ../../src/host/lua-5.2.3/src/lmathlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lauxlib.o: ../../src/host/lua-5.2.3/src/lauxlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lopcodes.o: ../../src/host/lua-5.2.3/src/lopcodes.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lparser.o: ../../src/host/lua-5.2.3/src/lparser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lapi.o: ../../src/host/lua-5.2.3/src/lapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ldblib.o: ../../src/host/lua-5.2.3/src/ldblib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lbitlib.o: ../../src/host/lua-5.2.3/src/lbitlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lgc.o: ../../src/host/lua-5.2.3/src/lgc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ltm.o: ../../src/host/lua-5.2.3/src/ltm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lzio.o: ../../src/host/lua-5.2.3/src/lzio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lmem.o: ../../src/host/lua-5.2.3/src/lmem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lctype.o: ../../src/host/lua-5.2.3/src/lctype.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/lstring.o: ../../src/host/lua-5.2.3/src/lstring.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/host/lua-5.2.3/src/ldebug.o: ../../src/host/lua-5.2.3/src/ldebug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
