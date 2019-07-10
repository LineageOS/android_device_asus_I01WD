/*
 * Copyright (C) 2019 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "CameraMotorService"

#include "CameraMotor.h"
#include "AsusMotor.h"

#include <android-base/logging.h>
#include <hidl/HidlTransportSupport.h>

#define CAMERA_ID_FRONT 1

namespace vendor {
namespace lineage {
namespace camera {
namespace motor {
namespace V1_0 {
namespace implementation {

CameraMotor::CameraMotor() {
    motor_fd_ = android::base::unique_fd(open(ASUS_MOTOR_DRV_DEV_PATH, O_RDWR));
}

Return<void> CameraMotor::onConnect(int8_t cameraId) {
    if (cameraId == CAMERA_ID_FRONT) {
        LOG(INFO) << "Rotating camera to front";
        motorDrvManualConfig_t cmd;
        cmd.dir = 0;
        cmd.angle = 180;
        cmd.speed = 4;
        ioctl(motor_fd_.get(), ASUS_MOTOR_DRV_MANUAL_MODE, &cmd);
    }

    return Void();
}

Return<void> CameraMotor::onDisconnect(int8_t cameraId) {
    if (cameraId == CAMERA_ID_FRONT) {
        LOG(INFO) << "Rotating camera from front";
        motorDrvManualConfig_t cmd;
        cmd.dir = 1;
        cmd.angle = 180;
        cmd.speed = 4;
        ioctl(motor_fd_.get(), ASUS_MOTOR_DRV_MANUAL_MODE, &cmd);
    }

    return Void();
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace motor
}  // namespace camera
}  // namespace lineage
}  // namespace vendor
