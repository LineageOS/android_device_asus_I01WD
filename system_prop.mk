#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.showdeviceswithoutnames=true \
    vendor.bluetooth.soc=cherokee

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.capture.hdrplus.dump=0 \
    ro.asus.camera.ai_scene_mode=0:1;1:1;2:1;3:1 \
    ro.asus.camera.cam0.eis.sup_list=4K@60,4K@30,FHD@60,FHD@30,HD@30,TV@30 \
    ro.asus.camera.cam0.exposure_time_range=312500,32000000000 \
    ro.asus.camera.cam0.preview_fps_range=8,45 \
    ro.asus.camera.cam0.stream_list=1P/2Y/1J \
    ro.asus.camera.cam0.video_fps=HD@60,FHD@60,4K@60 \
    ro.asus.camera.cam1.eis.sup_list=4K@60,4K@30,FHD@60,FHD@30,HD@30,TV@30 \
    ro.asus.camera.cam1.exposure_time_range=312500,32000000000 \
    ro.asus.camera.cam1.preview_fps_range=8,45 \
    ro.asus.camera.cam1.stream_list=1P/2Y/1J \
    ro.asus.camera.cam1.video_fps=HD@60,FHD@60,4K@60 \
    ro.asus.camera.cam2.eis.sup_list=4K@60,4K@30,FHD@60,FHD@30,HD@30,TV@30 \
    ro.asus.camera.cam2.exposure_time_range=100000,16000000000 \
    ro.asus.camera.cam2.video_fps=HD@60,FHD@60,4K@30 \
    ro.asus.camera.cam3.eis.sup_list=4K@60,4K@30,FHD@60,FHD@30,HD@30,TV@30 \
    ro.asus.camera.cam3.exposure_time_range=100000,16000000000 \
    ro.asus.camera.cam3.video_fps=HD@60,FHD@60,4K@30 \
    ro.asus.camera.dual_bokeh=0:0;1:0;2:0;3:0;4:1;5:1 \
    ro.asus.camera.fovc=0:1;1:1;2:0;3:0 \
    ro.asus.camera.lens_type=0:standard;1:standard;2:wide-angle;3:wide-angle;4:virtual;5:virtual \
    ro.asus.camera.night=0:1;1:1;2:1;3:1 \
    ro.asus.camera.preview_beauty=4:1;5:1 \
    ro.asus.camera.undistortion.preview=0:0;1:0;2:1;3:1 \
    ro.asus.camera.undistortion.video=0:0;1:0;2:0;3:0 \
    ro.asus.camera.use_frame_processor=0 \
    vendor.camera.expTimeMax=0

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=10 \
    persist.vendor.dpmhalservice.loglevel=0 \
    persist.vendor.dpm.loglevel=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    ro.asus.hdr=1 \
    ro.asus.wcg=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.overlay.izat.optin=rro

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.settings.xml=/system/etc/media_profiles_vendor.xml

# Netmgr
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.mode=concurrent

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=9,9

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.enable.mag_filter=true
