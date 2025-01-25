.class public final Lcom/blankj/utilcode/util/FlashlightUtils;
.super Ljava/lang/Object;


# static fields
.field private static mCamera:Landroid/hardware/Camera;

.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroy()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    sput-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    sput-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    goto :goto_5
.end method

.method private static init()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_20

    :cond_14
    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_29

    const-string v1, "FlashlightUtils"

    const-string v2, "init failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return v0

    :catchall_20
    move-exception v1

    const-string v2, "FlashlightUtils"

    const-string v3, "init failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :cond_29
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public static isFlashlightEnable()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlashlightOn()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/FlashlightUtils;->init()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "torch"

    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public static setFlashlightStatus(Z)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/FlashlightUtils;->init()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p0, :cond_37

    const-string v1, "torch"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_1b
    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/blankj/utilcode/util/FlashlightUtils;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_31} :catch_32

    goto :goto_6

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_37
    const-string v1, "off"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    sget-object v1, Lcom/blankj/utilcode/util/FlashlightUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_6
.end method
