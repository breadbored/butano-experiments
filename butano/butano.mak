#---------------------------------------------------------------------------------------------------------------------
# Toolchain auto detection:
#---------------------------------------------------------------------------------------------------------------------
ifneq ($(strip $(BNSDL)),)
	unexport DEVKITARM
	unexport DEVKITPRO
	unexport WONDERFUL_TOOLCHAIN
	include $(LIBBUTANOABS)/butano_sdl.mak
else
	ifneq ($(strip $(DEVKITARM)),)
		include $(LIBBUTANOABS)/butano_dka.mak
	else
		ifneq ($(strip $(WONDERFUL_TOOLCHAIN)),)
			include $(LIBBUTANOABS)/butano_wt.mak
		else
	$(error "DEVKITARM and WONDERFUL_TOOLCHAIN not found")
		endif
	endif
endif
