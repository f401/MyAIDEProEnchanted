.class public final Lcom/blankj/utilcode/util/VibrateUtils;
.super Ljava/lang/Object;


# static fields
.field private static vibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cancel()V
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_6
.end method

.method private static getVibrator()Landroid/os/Vibrator;
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    :cond_12
    sget-object v0, Lcom/blankj/utilcode/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static vibrate(J)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_6
.end method

.method public static vibrate([JI)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_6
.end method
