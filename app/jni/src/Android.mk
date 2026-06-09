LOCAL_PATH := $(call my-dir)
GAME_SRC_PATH := ../../../../game

include $(CLEAR_VARS)

LOCAL_MODULE := main

# Add your application source files here...
LOCAL_SRC_FILES := \
    $(GAME_SRC_PATH)/ball.c \
    $(GAME_SRC_PATH)/paddle.c \
    $(GAME_SRC_PATH)/snow.c \
    $(GAME_SRC_PATH)/text.c \
    $(GAME_SRC_PATH)/main.c \

SDL_PATH := ../SDL  # SDL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include  # SDL

LOCAL_SHARED_LIBRARIES := SDL3 SDL3_ttf SDL3-Headers

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid  # SDL

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path,/out)
$(call import-module,prefab/SDL3)
$(call import-module,prefab/SDL3_ttf)

