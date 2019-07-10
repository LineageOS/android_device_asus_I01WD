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

#pragma once

typedef struct {
    int dir;
    int angle;
    int speed;
} motorDrvManualConfig_t;

#define ASUS_MOTOR_NAME_SIZE 32
#define ASUS_MOTOR_DATA_SIZE 4

#define ASUS_MOTOR_DRV_DEV_PATH ("/dev/asusMotoDrv")
#define ASUS_MOTOR_DRV_IOC_MAGIC ('M')
#define ASUS_MOTOR_DRV_AUTO_MODE _IOW(ASUS_MOTOR_DRV_IOC_MAGIC, 1, int)
#define ASUS_MOTOR_DRV_MANUAL_MODE _IOW(ASUS_MOTOR_DRV_IOC_MAGIC, 2, motorDrvManualConfig_t)
#define ASUS_MOTOR_DRV_STOP _IOW(ASUS_MOTOR_DRV_IOC_MAGIC, 3, int)
#define ASUS_MOTOR_DRV_GET_NAME _IOR(ASUS_MOTOR_DRV_IOC_MAGIC, 4, char[ASUS_MOTOR_NAME_SIZE])
#define ASUS_MOTOR_DRV_CLOSE _IOR(ASUS_MOTOR_DRV_IOC_MAGIC, 5, char[ASUS_MOTOR_NAME_SIZE])

#define ASUS_MOTOR_DRV_AUTO_MODE_WITH_ANGLE _IOW(ASUS_MOTOR_DRV_IOC_MAGIC, 6, int)
#define ASUS_MOTOR_DRV_GET_STEPS _IOR(ASUS_MOTOR_DRV_IOC_MAGIC, 7, int)
