BOARD_SEPOLICY_DIRS += \
	vendor/fml/sepolicy

BOARD_SEPOLICY_UNION += \
	file_contexts \
	su.te \
	sysinit.te
