PKG_NAME="esp8089-firmware"
PKG_VERSION="7221f52b930072f29f5e7f49b7e663224e70cc9e"
PKG_LICENSE="Apache"
PKG_SITE="https://github.com/armbian/firmware"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_NEED_UNPACK="${LINUX_DEPENDS}"
PKG_LONGDESC="esp8089 Linux firmware"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_kernel_overlay_dir)/lib/firmware
    cp -av eagle_fw*.bin ${INSTALL}/$(get_kernel_overlay_dir)/lib/firmware
}
