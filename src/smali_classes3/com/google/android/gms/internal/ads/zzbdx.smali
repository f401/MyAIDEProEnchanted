.class public final Lcom/google/android/gms/internal/ads/zzbdx;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/Bn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:[F


# instance fields
.field private volatile BT:Z

.field private final DW:Lcom/google/android/gms/internal/ads/zn;

.field private EQ:F

.field private final FH:[F

.field private final Hw:[F

.field private J0:I

.field private J8:I

.field private Mr:Ljava/nio/FloatBuffer;

.field private QX:Landroid/graphics/SurfaceTexture;

.field private final U2:Ljava/util/concurrent/CountDownLatch;

.field private final VH:[F

.field private Ws:Landroid/graphics/SurfaceTexture;

.field private XL:I

.field private final Zo:[F

.field private final a8:Ljava/lang/Object;

.field private aM:I

.field private er:Ljavax/microedition/khronos/egl/EGLContext;

.field private volatile gW:Z

.field private final gn:[F

.field private j3:I

.field private lg:Ljavax/microedition/khronos/egl/EGL10;

.field private rN:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private tp:F

.field private final u7:[F

.field private final v5:[F

.field private we:F

.field private yS:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdx;->j6:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "SphericalVideoProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdx;->j6:[F

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Mr:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zn;->j6(Lcom/google/android/gms/internal/ads/Bn;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    return-void
.end method

.method private static DW([FF)V
    .registers 7

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/4 v2, 0x0

    aput p1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float p1, v2

    const/4 v2, 0x1

    aput p1, p0, v2

    const/4 p1, 0x2

    const/4 v2, 0x0

    aput v2, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v3, 0x3

    aput p1, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x4

    aput p1, p0, v0

    const/4 p1, 0x5

    aput v2, p0, p1

    const/4 p1, 0x6

    aput v2, p0, p1

    const/4 p1, 0x7

    aput v2, p0, p1

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000  # 1.0f

    aput v0, p0, p1

    return-void
.end method

.method private final Hw()Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v3, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v4, v3, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v3

    or-int/2addr v0, v2

    or-int v2, v3, v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v2, v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    or-int/2addr v2, v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_3f
    return v2
.end method

.method private static j6(ILjava/lang/String;)I
    .registers 5

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "createShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    if-eqz v0, :cond_5b

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "shaderSource"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "compileShader"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v1, "getShaderiv"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget p1, p1, v2

    if-nez p1, :cond_5b

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SphericalVideoRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "deleteShader"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5b
    return v0
.end method

.method private static j6(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "SphericalVideoRenderer"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private static j6([FF)V
    .registers 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    const/4 v0, 0x3

    aput v1, p0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    const/4 v0, 0x4

    aput p1, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float p1, v4

    const/4 v0, 0x5

    aput p1, p0, v0

    const/4 p1, 0x6

    aput v1, p0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x7

    aput p1, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/16 v0, 0x8

    aput p1, p0, v0

    return-void
.end method

.method private static j6([F[F[F)V
    .registers 21

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    mul-float v6, v3, v5

    add-float/2addr v1, v6

    const/4 v6, 0x2

    aget v7, p1, v6

    const/4 v8, 0x6

    aget v9, p2, v8

    mul-float v10, v7, v9

    add-float/2addr v1, v10

    aput v1, p0, v0

    aget v1, p1, v0

    aget v10, p2, v2

    mul-float v10, v10, v1

    const/4 v11, 0x4

    aget v12, p2, v11

    mul-float v3, v3, v12

    add-float/2addr v10, v3

    const/4 v3, 0x7

    aget v13, p2, v3

    mul-float v14, v7, v13

    add-float/2addr v10, v14

    aput v10, p0, v2

    aget v10, p2, v6

    mul-float v1, v1, v10

    aget v10, p1, v2

    const/4 v14, 0x5

    aget v15, p2, v14

    mul-float v10, v10, v15

    add-float/2addr v1, v10

    const/16 v10, 0x8

    aget v16, p2, v10

    mul-float v7, v7, v16

    add-float/2addr v1, v7

    aput v1, p0, v6

    aget v1, p1, v4

    aget v0, p2, v0

    mul-float v1, v1, v0

    aget v7, p1, v11

    mul-float v5, v5, v7

    add-float/2addr v1, v5

    aget v5, p1, v14

    mul-float v17, v5, v9

    add-float v1, v1, v17

    aput v1, p0, v4

    aget v1, p1, v4

    aget v2, p2, v2

    mul-float v17, v1, v2

    mul-float v7, v7, v12

    add-float v17, v17, v7

    mul-float v7, v5, v13

    add-float v17, v17, v7

    aput v17, p0, v11

    aget v6, p2, v6

    mul-float v1, v1, v6

    aget v7, p1, v11

    mul-float v7, v7, v15

    add-float/2addr v1, v7

    mul-float v5, v5, v16

    add-float/2addr v1, v5

    aput v1, p0, v14

    aget v1, p1, v8

    mul-float v1, v1, v0

    aget v0, p1, v3

    aget v4, p2, v4

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    aget v4, p1, v10

    mul-float v9, v9, v4

    add-float/2addr v1, v9

    aput v1, p0, v8

    aget v1, p1, v8

    mul-float v2, v2, v1

    aget v5, p2, v11

    mul-float v0, v0, v5

    add-float/2addr v2, v0

    mul-float v13, v13, v4

    add-float/2addr v2, v13

    aput v2, p0, v3

    mul-float v1, v1, v6

    aget v0, p1, v3

    aget v2, p2, v14

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    mul-float v4, v4, v16

    add-float/2addr v1, v4

    aput v1, p0, v10

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final FH()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final j6(FF)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    const v2, 0x3fdf66f3

    mul-float p1, p1, v2

    if-le v0, v1, :cond_d

    int-to-float v0, v0

    goto :goto_e

    :cond_d
    int-to-float v0, v1

    :goto_e
    div-float/2addr p1, v0

    mul-float p2, p2, v2

    div-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    const p2, -0x4036f025

    cmpg-float p1, p1, p2

    if-gez p1, :cond_25

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    :cond_25
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_30

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    :cond_30
    return-void
.end method

.method public final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final j6(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final run()V
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_11

    const-string v0, "SphericalVideoProcessor started with no output texture."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_11
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_2b

    goto/16 :goto_96

    :cond_2b
    new-array v2, v3, [I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v7, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_96

    :cond_36
    new-array v0, v5, [I

    new-array v2, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v9, 0xb

    new-array v9, v9, [I

    fill-array-data v9, :array_3c2

    const/4 v11, 0x1

    move-object v10, v2

    move-object v12, v0

    invoke-interface/range {v7 .. v12}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_55

    aget v0, v0, v6

    if-lez v0, :cond_55

    aget-object v0, v2, v6

    goto :goto_56

    :cond_55
    move-object v0, v4

    :goto_56
    if-nez v0, :cond_59

    goto :goto_96

    :cond_59
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v9, 0x3098

    const/16 v10, 0x3038

    filled-new-array {v9, v3, v10}, [I

    move-result-object v9

    invoke-interface {v2, v7, v0, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_96

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v7, :cond_74

    goto :goto_96

    :cond_74
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    invoke-interface {v2, v7, v0, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_96

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_87

    goto :goto_96

    :cond_87
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v7, v0, v0, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_96

    :cond_94
    const/4 v0, 0x1

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v0, 0x0

    :goto_97
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->ct:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b8

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_ba

    :cond_b8
    const-string v2, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    :goto_ba
    const v7, 0x8b31

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c5

    goto/16 :goto_13e

    :cond_c5
    sget-object v7, Lcom/google/android/gms/internal/ads/p;->Fd:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e6

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_e8

    :cond_e6
    const-string v7, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    :goto_e8
    const v8, 0x8b30

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f2

    goto :goto_13e

    :cond_f2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    const-string v9, "createProgram"

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    if-eqz v8, :cond_148

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v2, "linkProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    new-array v2, v5, [I

    const v7, 0x8b82

    invoke-static {v8, v7, v2, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v7, "getProgramiv"

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget v2, v2, v6

    if-eq v2, v5, :cond_140

    const-string v2, "SphericalVideoRenderer"

    const-string v7, "Could not link program: "

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SphericalVideoRenderer"

    invoke-static {v8}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v2, "deleteProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    :goto_13e
    const/4 v8, 0x0

    goto :goto_148

    :cond_140
    invoke-static {v8}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string v2, "validateProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    :cond_148
    :goto_148
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "useProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v7, "aPosition"

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0xc

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Mr:Ljava/nio/FloatBuffer;

    move v8, v2

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v7, "vertexAttribPointer"

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "enableVertexAttribArray"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    new-array v2, v5, [I

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v7, "genTextures"

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget v2, v2, v6

    const v7, 0x8d65

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v8, "bindTextures"

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/16 v8, 0x2800

    const/16 v9, 0x2601

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/16 v8, 0x2801

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/16 v8, 0x2802

    const v9, 0x812f

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/16 v8, 0x2803

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v7, "texParameteri"

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v8, "uVMat"

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->aM:I

    const/16 v8, 0x9

    new-array v8, v8, [F

    fill-array-data v8, :array_3dc

    invoke-static {v7, v5, v6, v8, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    if-eqz v7, :cond_1d1

    const/4 v7, 0x1

    goto :goto_1d2

    :cond_1d1
    const/4 v7, 0x0

    :goto_1d2
    if-eqz v0, :cond_386

    if-nez v7, :cond_1d8

    goto/16 :goto_386

    :cond_1d8
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->j6()V

    :try_start_1ec
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    :goto_1ee
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    if-nez v0, :cond_332

    :goto_1f2
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    if-lez v0, :cond_201

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    sub-int/2addr v0, v5

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    goto :goto_1f2

    :cond_201
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zn;->j6([F)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v7, 0x4

    const v8, 0x3fc90fdb

    if-eqz v0, :cond_27e

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_273

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    const/4 v9, 0x3

    new-array v10, v9, [F

    fill-array-data v10, :array_3f2

    new-array v11, v9, [F
    :try_end_222
    .catch Ljava/lang/IllegalStateException; {:try_start_1ec .. :try_end_222} :catch_270
    .catchall {:try_start_1ec .. :try_end_222} :catchall_26d

    aget v12, v0, v6

    aget v13, v10, v6

    mul-float v12, v12, v13

    aget v13, v0, v5

    aget v14, v10, v5

    mul-float v13, v13, v14

    add-float/2addr v12, v13

    aget v13, v0, v3

    aget v15, v10, v3

    mul-float v13, v13, v15

    add-float/2addr v12, v13

    aput v12, v11, v6

    aget v9, v0, v9

    aget v13, v10, v6

    mul-float v9, v9, v13

    aget v16, v0, v7

    mul-float v16, v16, v14

    add-float v9, v9, v16

    aget v14, v0, v2

    mul-float v14, v14, v15

    add-float/2addr v9, v14

    aput v9, v11, v5

    const/4 v14, 0x6

    aget v14, v0, v14

    mul-float v14, v14, v13

    const/4 v13, 0x7

    aget v13, v0, v13

    aget v10, v10, v5

    mul-float v13, v13, v10

    add-float/2addr v14, v13

    const/16 v10, 0x8

    aget v0, v0, v10

    mul-float v0, v0, v15

    add-float/2addr v14, v0

    aput v14, v11, v3

    float-to-double v9, v9

    float-to-double v11, v12

    :try_start_263
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v0, v9

    sub-float/2addr v0, v8

    neg-float v0, v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    goto :goto_273

    :catchall_26d
    move-exception v0

    goto/16 :goto_342

    :catch_270
    move-exception v0

    goto/16 :goto_360

    :cond_273
    :goto_273
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    add-float/2addr v9, v10

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->DW([FF)V

    goto :goto_28d

    :cond_27e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    const v9, -0x4036f025

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->DW([FF)V

    :goto_28d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->aM:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    invoke-static {v0, v5, v6, v8, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    invoke-static {v2, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    if-eqz v0, :cond_315

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    invoke-static {v6, v6, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "viewport"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v2, "uFOVx"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v7, "uFOVy"

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    const v9, 0x3f5f66f3

    if-le v7, v8, :cond_308

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    int-to-float v0, v0

    mul-float v0, v0, v9

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_313

    :cond_308
    int-to-float v7, v7

    mul-float v7, v7, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_313
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z
    :try_end_315
    .catch Ljava/lang/IllegalStateException; {:try_start_263 .. :try_end_315} :catch_270
    .catchall {:try_start_263 .. :try_end_315} :catchall_26d

    :cond_315
    :try_start_315
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v2
    :try_end_318
    .catch Ljava/lang/InterruptedException; {:try_start_315 .. :try_end_318} :catch_32f
    .catch Ljava/lang/IllegalStateException; {:try_start_315 .. :try_end_318} :catch_270
    .catchall {:try_start_315 .. :try_end_318} :catchall_26d

    :try_start_318
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    if-nez v0, :cond_329

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    if-nez v0, :cond_329

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    if-nez v0, :cond_329

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_329
    monitor-exit v2

    goto/16 :goto_1ee

    :catchall_32c
    move-exception v0

    monitor-exit v2
    :try_end_32e
    .catchall {:try_start_318 .. :try_end_32e} :catchall_32c

    :try_start_32e
    throw v0
    :try_end_32f
    .catch Ljava/lang/InterruptedException; {:try_start_32e .. :try_end_32f} :catch_32f
    .catch Ljava/lang/IllegalStateException; {:try_start_32e .. :try_end_32f} :catch_270
    .catchall {:try_start_32e .. :try_end_32f} :catchall_26d

    :catch_32f
    move-exception v0

    goto/16 :goto_1ee

    :cond_332
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    return-void

    :goto_342
    :try_start_342
    const-string v2, "SphericalVideoProcessor died."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    const-string v3, "SphericalVideoProcessor.run.2"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_350
    .catchall {:try_start_342 .. :try_end_350} :catchall_375

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    return-void

    :goto_360
    :try_start_360
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_365
    .catchall {:try_start_360 .. :try_end_365} :catchall_375

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    return-void

    :catchall_375
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    throw v0

    :cond_386
    :goto_386
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a1

    const-string v2, "EGL initialization failed: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a8

    :cond_3a1
    new-instance v0, Ljava/lang/String;

    const-string v2, "EGL initialization failed: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3a8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :array_3c2
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    :array_3dc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_3f2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
