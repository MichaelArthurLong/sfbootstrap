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
REPO_LOCAL_MANIFESTS_URL="https://github.com/MichaelArthurLong/local_manifest-z00a.git"
#REPO_OVERRIDES=()
HAL_MAKE_TARGETS=(hybris-hal droidmedia)
HAL_ENV_EXTRA="export LC_ALL=C"
RELEASE=4.3.0.12
#TOOLING_RELEASE=$RELEASE
#SDK_RELEASE=latest
REPOS=(
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
