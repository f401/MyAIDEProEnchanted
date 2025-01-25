.class final Lcom/google/android/gms/internal/ads/ZD;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private DW:Landroid/os/Handler;

.field private FH:Landroid/graphics/SurfaceTexture;

.field private Hw:Ljava/lang/Error;

.field private Zo:Lcom/google/android/gms/internal/ads/zzqk;

.field private final j6:[I

.field private v5:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_45

    if-eq v2, v3, :cond_3f

    const/4 v0, 0x3

    if-eq v2, v0, :cond_12

    return v6

    :cond_12
    :try_start_12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_26

    :try_start_17
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_24

    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_39

    :catchall_24
    move-exception v0

    goto :goto_31

    :catchall_26
    move-exception v0

    :try_start_27
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    invoke-static {v6, v2, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    throw v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_24

    :goto_31
    :try_start_31
    const-string v2, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    goto :goto_20

    :goto_39
    return v6

    :catchall_3a
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    :cond_3f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v6

    :cond_45
    :try_start_45
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eqz v2, :cond_54

    const/4 v7, 0x1

    goto :goto_55

    :cond_54
    const/4 v7, 0x0

    :goto_55
    const-string v8, "eglGetDisplay failed"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    new-array v7, v3, [I

    invoke-static {v2, v7, v5, v7, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v7

    const-string v8, "eglInitialize failed"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    new-array v15, v6, [Landroid/opengl/EGLConfig;

    new-array v14, v6, [I

    const/16 v7, 0x11

    new-array v8, v7, [I

    fill-array-data v8, :array_138

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object v7, v2

    move-object v10, v15

    move-object v13, v14

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-static/range {v7 .. v14}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v7
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_80} :catch_c2
    .catch Ljava/lang/Error; {:try_start_45 .. :try_end_80} :catch_c0
    .catchall {:try_start_45 .. :try_end_80} :catchall_be

    if-eqz v7, :cond_8c

    aget v7, v17, v5

    if-lez v7, :cond_8c

    aget-object v7, v15, v5

    if-eqz v7, :cond_8c

    const/4 v7, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v7, 0x0

    :goto_8d
    :try_start_8d
    const-string v8, "eglChooseConfig failed"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V
    :try_end_92
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_92} :catch_c2
    .catch Ljava/lang/Error; {:try_start_8d .. :try_end_92} :catch_c0
    .catchall {:try_start_8d .. :try_end_92} :catchall_be

    aget-object v7, v15, v5

    const/16 v8, 0x3098

    const/16 v9, 0x3038

    if-eqz v0, :cond_a1

    const/16 v10, 0x32c0

    :try_start_9c
    filled-new-array {v8, v3, v10, v6, v9}, [I

    move-result-object v3

    goto :goto_a5

    :cond_a1
    filled-new-array {v8, v3, v9}, [I

    move-result-object v3

    :goto_a5
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v7, v8, v3, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    if-eqz v3, :cond_af

    const/4 v8, 0x1

    goto :goto_b0

    :cond_af
    const/4 v8, 0x0

    :goto_b0
    const-string v10, "eglCreateContext failed"

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    if-eqz v0, :cond_c4

    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_15e

    goto :goto_cc

    :catchall_be
    move-exception v0

    goto :goto_12c

    :catch_c0
    move-exception v0

    goto :goto_108

    :catch_c2
    move-exception v0

    goto :goto_11a

    :cond_c4
    const/16 v8, 0x3057

    const/16 v10, 0x3056

    filled-new-array {v8, v6, v10, v6, v9}, [I

    move-result-object v8

    :goto_cc
    invoke-static {v2, v7, v8, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v7

    if-eqz v7, :cond_d4

    const/4 v8, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v8, 0x0

    :goto_d5
    const-string v9, "eglCreatePbufferSurface failed"

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    invoke-static {v2, v7, v7, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    const-string v3, "eglMakeCurrent failed"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    invoke-static {v6, v2, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    aget v3, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/ZD;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/YD;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_ff} :catch_c2
    .catch Ljava/lang/Error; {:try_start_9c .. :try_end_ff} :catch_c0
    .catchall {:try_start_9c .. :try_end_ff} :catchall_be

    monitor-enter p0

    :try_start_100
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_128

    :catchall_105
    move-exception v0

    monitor-exit p0
    :try_end_107
    .catchall {:try_start_100 .. :try_end_107} :catchall_105

    throw v0

    :goto_108
    :try_start_108
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_be

    monitor-enter p0

    :try_start_112
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_128

    :catchall_117
    move-exception v0

    monitor-exit p0
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_117

    throw v0

    :goto_11a
    :try_start_11a
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_be

    monitor-enter p0

    :try_start_124
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_128
    return v6

    :catchall_129
    move-exception v0

    monitor-exit p0
    :try_end_12b
    .catchall {:try_start_124 .. :try_end_12b} :catchall_129

    throw v0

    :goto_12c
    monitor-enter p0

    :try_start_12d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_131
    .catchall {:try_start_12d .. :try_end_131} :catchall_132

    throw v0

    :catchall_132
    move-exception v0

    :try_start_133
    monitor-exit p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    goto :goto_136

    :goto_135
    throw v0

    :goto_136
    goto :goto_135

    nop

    :array_138
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    :array_15e
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method public final j6(Z)Lcom/google/android/gms/internal/ads/zzqk;
    .registers 5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    monitor-enter p0

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_44

    if-nez p1, :cond_2d

    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_44

    goto :goto_1a

    :catch_2a
    move-exception p1

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_44

    if-eqz v2, :cond_37

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    return-object p1

    :cond_42
    throw p1

    :cond_43
    throw p1

    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
