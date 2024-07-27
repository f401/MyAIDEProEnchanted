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
    .registers 15

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v8, :cond_2

    if-eq v0, v11, :cond_1

    if-eq v0, v12, :cond_0

    :goto_0
    return v8

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    :cond_2
    :try_start_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v10, v8

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-eqz v0, :cond_4

    move v1, v8

    :goto_2
    const-string v2, "eglGetDisplay failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    const-string v2, "eglInitialize failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/opengl/EGLConfig;

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result v1

    if-eqz v1, :cond_5

    aget v1, v6, v9

    if-lez v1, :cond_5

    aget-object v1, v3, v9

    if-eqz v1, :cond_5

    move v1, v8

    :goto_3
    :try_start_5
    const-string v2, "eglChooseConfig failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    aget-object v2, v3, v9

    if-eqz v10, :cond_6

    const/4 v1, 0x5

    :try_start_6
    new-array v1, v1, [I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/16 v3, 0x3098

    aput v3, v1, v9

    aput v11, v1, v8

    const/16 v3, 0x32c0

    aput v3, v1, v11

    aput v8, v1, v12

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v1, v3

    :goto_4
    :try_start_7
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v8

    :goto_5
    const-string v4, "eglCreateContext failed"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    if-eqz v10, :cond_8

    const/4 v1, 0x7

    new-array v1, v1, [I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v4, 0x3057

    aput v4, v1, v9

    aput v8, v1, v8

    const/16 v4, 0x3056

    aput v4, v1, v11

    aput v8, v1, v12

    const/4 v4, 0x4

    const/16 v5, 0x32c0

    aput v5, v1, v4

    const/4 v4, 0x5

    aput v8, v1, v4

    const/4 v4, 0x6

    const/16 v5, 0x3038

    aput v5, v1, v4

    :goto_6
    const/4 v4, 0x0

    :try_start_8
    invoke-static {v0, v2, v1, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_9

    move v1, v8

    :goto_7
    const-string v4, "eglCreatePbufferSurface failed"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "eglMakeCurrent failed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->j6:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZD;->FH:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/ZD;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/YD;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-enter p0

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_3
    move v10, v9

    goto/16 :goto_1

    :cond_4
    move v1, v9

    goto/16 :goto_2

    :cond_5
    move v1, v9

    goto/16 :goto_3

    :cond_6
    const/4 v1, 0x3

    :try_start_a
    new-array v1, v1, [I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/16 v3, 0x3098

    aput v3, v1, v9

    aput v11, v1, v8

    const/16 v3, 0x3038

    aput v3, v1, v11

    goto/16 :goto_4

    :cond_7
    move v1, v9

    goto :goto_5

    :cond_8
    const/4 v1, 0x5

    :try_start_b
    new-array v1, v1, [I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const/16 v4, 0x3057

    aput v4, v1, v9

    aput v8, v1, v8

    const/16 v4, 0x3056

    aput v4, v1, v11

    aput v8, v1, v12

    const/4 v4, 0x4

    const/16 v5, 0x3038

    aput v5, v1, v4

    goto :goto_6

    :cond_9
    move v1, v9

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_c
    const-string v1, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    monitor-enter p0

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :catch_2
    move-exception v0

    :try_start_e
    const-string v1, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-enter p0

    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    monitor-enter p0

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    :array_0
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
.end method

.method public final j6(Z)Lcom/google/android/gms/internal/ads/zzqk;
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->v5:Ljava/lang/RuntimeException;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->Hw:Ljava/lang/Error;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->Zo:Lcom/google/android/gms/internal/ads/zzqk;

    return-object v0

    :cond_3
    throw v0

    :cond_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZD;->DW:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
