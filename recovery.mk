# Copyright (C) 2010 The Android Open Source Project
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

CORI_PATH := device/samsung/cori
CORI_PREBUILT_ROOT_PATH := $(CORI_PATH)/prebuilt/root

PRODUCT_PACKAGES += \
    make_ext4fs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    fat.format \
    ua_launcher \

PRODUCT_COPY_FILES += \
    $(CORI_PATH)/recovery.fstab:root/recovery.fstab \
    $(CORI_PREBUILT_ROOT_PATH)/default.prop:root/default.prop \
    $(CORI_PREBUILT_ROOT_PATH)/fota.rc:root/fota.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init:root/init \
    $(CORI_PREBUILT_ROOT_PATH)/init.bcm21553.rc:root/init.bcm21553.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init.charge.rc:root/init.charge.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init.environ.rc:root/init.environ.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init.rc:root/init.rc \
    $(CORI_PREBUILT_ROOT_PATH)/j4fs.ko:root/j4fs.ko \
    $(CORI_PREBUILT_ROOT_PATH)/recovery.rc:root/recovery.rc \
    $(CORI_PREBUILT_ROOT_PATH)/sec_param.ko:root/sec_param.ko \
    $(CORI_PREBUILT_ROOT_PATH)/ueventd.rc:root/ueventd.rc \

PRODUCT_COPY_FILES += \
    $(CORI_PREBUILT_ROOT_PATH)/sbin/fota_logo.png:root/sbin/fota_logo.png \

PRODUCT_COPY_FILES += \
    $(CORI_PREBUILT_ROOT_PATH)/res/recovery.fstab:root/res/recovery.fstab \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/0.png:root/res/images/240x320/0.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/1.png:root/res/images/240x320/1.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/2.png:root/res/images/240x320/2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/3.png:root/res/images/240x320/3.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/4.png:root/res/images/240x320/4.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/5.png:root/res/images/240x320/5.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/6.png:root/res/images/240x320/6.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/7.png:root/res/images/240x320/7.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/8.png:root/res/images/240x320/8.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/9.png:root/res/images/240x320/9.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/a.png:root/res/images/240x320/a.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/abc.png:root/res/images/240x320/abc.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/alt.png:root/res/images/240x320/alt.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/alt2.png:root/res/images/240x320/alt2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/and.png:root/res/images/240x320/and.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/b.png:root/res/images/240x320/b.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/back_slash.png:root/res/images/240x320/back_slash.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/backtick.png:root/res/images/240x320/backtick.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/c.png:root/res/images/240x320/c.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/cap.png:root/res/images/240x320/cap.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_a.png:root/res/images/240x320/caps_a.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_b.png:root/res/images/240x320/caps_b.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_c.png:root/res/images/240x320/caps_c.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_d.png:root/res/images/240x320/caps_d.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_e.png:root/res/images/240x320/caps_e.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_f.png:root/res/images/240x320/caps_f.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_g.png:root/res/images/240x320/caps_g.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_h.png:root/res/images/240x320/caps_h.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_i.png:root/res/images/240x320/caps_i.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_j.png:root/res/images/240x320/caps_j.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_k.png:root/res/images/240x320/caps_k.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_l.png:root/res/images/240x320/caps_l.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_m.png:root/res/images/240x320/caps_m.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_n.png:root/res/images/240x320/caps_n.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_o.png:root/res/images/240x320/caps_o.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_p.png:root/res/images/240x320/caps_q.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_r.png:root/res/images/240x320/caps_r.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_s.png:root/res/images/240x320/caps_s.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_t.png:root/res/images/240x320/caps_t.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_u.png:root/res/images/240x320/caps_u.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_v.png:root/res/images/240x320/caps_v.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_w.png:root/res/images/240x320/caps_w.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_x.png:root/res/images/240x320/caps_x.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_y.png:root/res/images/240x320/caps_y.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/caps_z.png:root/res/images/240x320/caps_z.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/colon.png:root/res/images/240x320/colon.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/comma.png:root/res/images/240x320/comma.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/d.png:root/res/images/240x320/d.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/decryption1.png:root/res/images/240x320/decryption1.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/decryption2.png:root/res/images/240x320/decryption2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/del.png:root/res/images/240x320/del.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/dollar.png:root/res/images/240x320/dollar.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/dot.png:root/res/images/240x320/dot.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/double_quotes.png:root/res/images/240x320/double_quotes.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/e.png:root/res/images/240x320/e.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/empty.png:root/res/images/240x320/empty.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/encryption1.png:root/res/images/240x320/encryption1.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/encryption2.png:root/res/images/240x320/encryption2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/equal.png:root/res/images/240x320/equal.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/exclaim.png:root/res/images/240x320/exclaim.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/f.png:root/res/images/240x320/f.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/fwd_slash.png:root/res/images/240x320/fwd_slash.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/g.png:root/res/images/240x320/g.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/h.png:root/res/images/240x320/h.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/hyphen.png:root/res/images/240x320/hyphen.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/i.png:root/res/images/240x320/i.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_datadecrypted.png:root/res/images/240x320/icon_datadecrypted.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_dataencrypted.png:root/res/images/240x320/icon_dataencrypted.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_decryption.png:root/res/images/240x320/icon_decryption.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_encryption.png:root/res/images/240x320/icon_encryption.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_error.png:root/res/images/240x320/icon_error.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_firmware_error.png:root/res/images/240x320/icon_firmware_error.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_firmware_install.png:root/res/images/240x320/icon_firmware_install.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_installing.png:root/res/images/240x320/icon_installing.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/icon_passcode.png:root/res/images/240x320/icon_passcode.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate1.png:root/res/images/240x320/indeterminate1.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate2.png:root/res/images/240x320/indeterminate2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate3.png:root/res/images/240x320/indeterminate3.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate4.png:root/res/images/240x320/indeterminate4.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate5.png:root/res/images/240x320/indeterminate5.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/indeterminate6.png:root/res/images/240x320/indeterminate6.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/j.png:root/res/images/240x320/j.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/k.png:root/res/images/240x320/k.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/l.png:root/res/images/240x320/l.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/left_angular_brace.png:root/res/images/240x320/left_angular_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/left_curly_brace.png:root/res/images/240x320/left_curly_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/left_round_brace.png:root/res/images/240x320/left_round_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/left_square_brace.png:root/res/images/240x320/left_square_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/m.png:root/res/images/240x320/m.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/minus.png:root/res/images/240x320/minus.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/n.png:root/res/images/240x320/n.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/numeric.png:root/res/images/240x320/numeric.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/o.png:root/res/images/240x320/o.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/ok.png:root/res/images/240x320/ok.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/passcode_key_relative_layout_eng.ini:root/res/images/240x320/passcode_key_relative_layout_eng.ini \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_confirm_45.png:root/res/images/240x320/password_confirm_45.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_highlight.png:root/res/images/240x320/password_highlight.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_last_time.png:root/res/images/240x320/password_last_time.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_max16_45.png:root/res/images/240x320/password_max16_45.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_not_matched_wipe_data.png:root/res/images/240x320/password_not_matched_wipe_data.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_notmatched_45.png:root/res/images/240x320/password_notmatched_45.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_retry_45.png:root/res/images/240x320/password_retry_45.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/password_star_221.png:root/res/images/240x320/password_star_221.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/percent.png:root/res/images/240x320/percent.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/pipe.png:root/res/images/240x320/pipe.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/plus.png:root/res/images/240x320/plus.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/pound.png:root/res/images/240x320/pound.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_empty.png:root/res/images/240x320/progress_bar_empty.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_empty_left_round.png:root/res/images/240x320/progress_bar_empty_left_round.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_empty_right_round.png:root/res/images/240x320/progress_bar_empty_right_round.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_fill.png:root/res/images/240x320/progress_bar_fill.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_left_round.png:root/res/images/240x320/progress_bar_left_round.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_bar_right_round.png:root/res/images/240x320/progress_bar_right_round.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_empty.png:root/res/images/240x320/progress_empty.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/progress_fill.png:root/res/images/240x320/progress_fill.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/q.png:root/res/images/240x320/q.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/question_mark.png:root/res/images/240x320/question_mark.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/r.png:root/res/images/240x320/r.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/rate.png:root/res/images/240x320/rate.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/right_angular_brace.png:root/res/images/240x320/right_angular_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/right_curly_brace.png:root/res/images/240x320/right_curly_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/right_round_brace.png:root/res/images/240x320/right_round_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/right_square_brace.png:root/res/images/240x320/right_square_brace.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/s.png:root/res/images/240x320/s.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/semi_colon.png:root/res/images/240x320/semi_colon.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/shift.png:root/res/images/240x320/shift.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/shift2.png:root/res/images/240x320/shift2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/single_quote.png:root/res/images/240x320/single_quote.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/space.png:root/res/images/240x320/space.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/space2.png:root/res/images/240x320/space2.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/star.png:root/res/images/240x320/star.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/t.png:root/res/images/240x320/t.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/tilde.png:root/res/images/240x320/tilde.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/u.png:root/res/images/240x320/u.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/under_score.png:root/res/images/240x320/under_score.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/v.png:root/res/images/240x320/v.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/w.png:root/res/images/240x320/w.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/x.png:root/res/images/240x320/x.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/y.png:root/res/images/240x320/y.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/z.png:root/res/images/240x320/z.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/a.png:root/res/images/240x320/a.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/a.png:root/res/images/240x320/a.png \
    $(CORI_PREBUILT_ROOT_PATH)/res/images/240x320/a.png:root/res/images/240x320/a.png \
