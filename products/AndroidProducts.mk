#
# Copyright (C) 2015 VRToxin Project
#
# Licensed under the Apurityche License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apurityche.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq (vrtoxin_angler,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/vrtoxin_angler.mk
endif

ifeq (vrtoxin_bullhead,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/vrtoxin_bullhead.mk
endif

ifeq (vrtoxin_flounder,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/vrtoxin_flounder.mk
endif

ifeq (vrtoxin_hammerhead,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/vrtoxin_hammerhead.mk
endif

ifeq (vrtoxin_shamu,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/vrtoxin_shamu.mk
endif
