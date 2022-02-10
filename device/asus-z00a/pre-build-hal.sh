# Avoid pointless install of ImageMagick in HA build chroot
# DISABLED: Unnecessary because we're building cm-12.1, re-enable if base upgraded to Lineage
# rm -rf "$ANDROID_ROOT/vendor/lineage/bootanimation"

# Build 32-bit droidmedia because it seems like the detection doesn't work, probably an x86_64 kernel with x86 userspace issue, or just x86(_64) in general
if ! grep -q 'DROIDMEDIA_32' "$ANDROID_ROOT/external/droidmedia/env.mk"; then
    echo "DROIDMEDIA_32 := true" > "$ANDROID_ROOT/external/droidmedia/env.mk"
fi
