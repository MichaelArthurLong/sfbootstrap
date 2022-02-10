# sfbootstrap env for asus-z00a
VENDOR=asus
VENDOR_PRETTY="ASUS"
DEVICE=z00a
DEVICE_PRETTY="Zenfone 2"
# Device codename is in uppercase for building cm-12.1(hybris)
HABUILD_DEVICE=Z00A
#HOOKS_DEVICE=$SFB_DEVICE
PORT_ARCH=i486
SOC=intel
PORT_TYPE=hybris
HYBRIS_VER=12.1
#ANDROID_MAJOR_VERSION=5
#REPO_INIT_URL="https://github.com/mer-hybris/android.git"
#REPO_LOCAL_MANIFESTS_URL="https://github.com/MichaelArthurLong/local_manifest-z00a.git"
#REPO_OVERRIDES=()
HAL_MAKE_TARGETS=(hybris-hal droidmedia)
HAL_ENV_EXTRA="export LC_ALL=C"
RELEASE=4.3.0.12
#TOOLING_RELEASE=$RELEASE
#SDK_RELEASE=latest
REPOS=(
    # Zenfone 2 (and platform)
    "https://github.com/MichaelArthurLong/android_device_asus_Z00A.git" device/asus/Z00A "hybris-$HYBRIS_VER" 1
    "https://github.com/MichaelArthurLong/android_device_asus_mofd-common.git" device/asus/mofd-common "hybris-$HYBRIS_VER" 1
    "https://github.com/MichaelArthurLong/android_kernel_asus_moorefield.git" kernel/asus/moorefield "hybris-$HYBRIS_VER" 1
    "https://github.com/TheMuppets/proprietary_vendor_asus.git" vendor/asus "cm-$HYBRIS_VER" 1
    # Mer
    "https://github.com/MichaelArthurLong/droid-hal-z00a.git" rpm '' 1
    "https://github.com/MichaelArthurLong/droid-config-z00a.git" hybris/droid-configs '' 1
    "https://github.com/MichaelArthurLong/droid-hal-version-z00a.git" hybris/droid-hal-version-z00a '' 1
    # Intel-specific CyanogenMod Dependencies
    "https://github.com/CyanogenMod/android_hardware_akm" hardware/akm '' 1
    "https://github.com/CyanogenMod/android_hardware_broadcom_libbt" hardware/broadcom/libbt '' 1
    "https://github.com/CyanogenMod/android_hardware_broadcom_wlan" hardware/broadcom/wlan '' 1
    "https://github.com/CyanogenMod/android_hardware_cm" hardware/cm '' 1
    "https://android.googlesource.com/platform/hardware/intel/audio_media" hardware/intel/audio_media '' 1
    "https://android.googlesource.com/platform/hardware/intel/bootstub" hardware/intel/bootstub '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/bd_prov" hardware/intel/common/bd_prov '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/libmix" hardware/intel/common/libmix '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/libstagefrighthw" hardware/intel/common/libstagefrighthw '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/libva" hardware/intel/common/libva '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/libwsbm" hardware/intel/common/libwsbm '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/omx-components" hardware/intel/common/omx-components '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/utils" hardware/intel/common/utils '' 1
    "https://android.googlesource.com/platform/hardware/intel/common/wrs_omxil_core" hardware/intel/common/wrs_omxil_core '' 1
    "https://android.googlesource.com/platform/hardware/intel/img/hwcomposer" hardware/intel/img/hwcomposer '' 1
    "https://android.googlesource.com/platform/hardware/intel/img/libdrm" hardware/intel/img/libdrm '' 1
    "https://android.googlesource.com/platform/hardware/intel/img/psb_headers" hardware/intel/img/psb_headers '' 1
    "https://android.googlesource.com/platform/hardware/intel/img/psb_video" hardware/intel/img/psb_video '' 1
    "https://github.com/CyanogenMod/android_hardware_invensense" hardware/invensense '' 1
    # Patched hybris-boot that passes 2ndbootloader, required by Intel Medfield platforms
    "https://github.com/MichaelArthurLong/hybris-boot" hybris/hybris-boot '' 1
    # hybris-12.1 patches, untested on other devices
    "https://github.com/MichaelArthurLong/hybris-patches" hybris-patches 'hybris-12.1_testing' 1
)
REPO_OVERRIDES=(
    'mer-hybris/hybris-boot'
)
LINKS=(
    'Sources' 'https://github.com/MichaelArthurLong'
    'Mer Wiki' '' # TODO
)
export VENDOR DEVICE PORT_ARCH RELEASE
