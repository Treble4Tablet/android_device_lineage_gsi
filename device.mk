DEVICE_PATH := device/lineage/gsi

# Fixes inherited from PHH
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init/init-gsi.rc:system/etc/init/init-gsi.rc \
    $(DEVICE_PATH)/init/treble-post-fs.sh:system/bin/treble-post-fs.sh \
    $(DEVICE_PATH)/init/treble-prop-handler.sh:system/bin/treble-prop-handler.sh

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

SELINUX_IGNORE_NEVERALLOWS := true
