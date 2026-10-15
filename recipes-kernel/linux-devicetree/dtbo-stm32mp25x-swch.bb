DESCRIPTION = "Device tree for stm32mp25x ethernet switch "
HOMEPAGE = "www.st.com"

SRC_URI = " file://stm32mp257d-stm32mp257dak3-mx-swch.dts "

COMPATIBLE_MACHINE = "(stm32mp25common)"

inherit devicetree
PROVIDES:remove = "virtual/dtb"

