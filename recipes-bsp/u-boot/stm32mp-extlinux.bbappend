FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS:append:stm32mp25common = " dtbo-stm32mp25x-swch "
RDEPENDS:${PN}:append:stm32mp25common = " dtbo-stm32mp25x-swch "


UBOOT_EXTLINUX_TARGETS_EXTRA_CONFIG[stm32mp257f-ev1] += "stm32mp257f-ev1-tsn"
UBOOT_EXTLINUX_DEFAULT_LABEL:stm32mp257f-ev1-tsn = "stm32mp257f-ev1-tsn"
UBOOT_EXTLINUX_FDTOVERLAYS:stm32mp257f-ev1-tsn = "/devicetree/stm32mp25xx-ev1-swch.dtbo"

# ALIENTEK STM32MP257DAK3: the switch is the point of this board, so the
# overlay applies to the default boot label - the board DTS itself only
# describes the CubeMX dual-ethernet configuration.
UBOOT_EXTLINUX_FDTOVERLAYS:stm32mp2-develop = "/devicetree/stm32mp257d-stm32mp257dak3-mx-swch.dtbo"
