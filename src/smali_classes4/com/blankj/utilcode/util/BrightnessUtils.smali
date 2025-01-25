.class public final Lcom/blankj/utilcode/util/BrightnessUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBrightness()I
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getWindowBrightness(Landroid/view/Window;)I
    .registers 3

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10

    invoke-static {}, Lcom/blankj/utilcode/util/BrightnessUtils;->getBrightness()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_f
.end method

.method public static isAutoBrightnessEnabled()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_f} :catch_13

    move-result v2

    if-ne v2, v0, :cond_19

    :goto_12
    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_12

    :cond_19
    move v0, v1

    goto :goto_12
.end method

.method public static setAutoBrightnessEnabled(Z)Z
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setBrightness(I)Z
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v1
.end method

.method public static setWindowBrightness(Landroid/view/Window;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
