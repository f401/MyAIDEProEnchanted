.class public final Lcom/google/android/gms/internal/ads/zzbdx;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/Bn;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

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

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdx;->j6:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/16 v2, 0x9

    const-string v0, "SphericalVideoProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdx;->j6:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Mr:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Mr:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdx;->j6:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zn;->j6(Lcom/google/android/gms/internal/ads/Bn;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    return-void
.end method

.method private static DW([FF)V
    .registers 9

    const/4 v6, 0x0

    float-to-double v0, p1

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/4 v2, 0x2

    aput v6, p0, v2

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/4 v2, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v2

    const/4 v0, 0x5

    aput v6, p0, v0

    const/4 v0, 0x6

    aput v6, p0, v0

    const/4 v0, 0x7

    aput v6, p0, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-void
.end method

.method private final Hw()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return v0
.end method

.method private static j6(ILjava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    const-string v2, "createShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string v2, "shaderSource"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string v2, "compileShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v3, "getShaderiv"

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget v2, v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SphericalVideoRenderer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SphericalVideoRenderer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string v1, "deleteShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "SphericalVideoRenderer"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static j6([FF)V
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v6, p0, v0

    const/4 v0, 0x2

    aput v6, p0, v0

    const/4 v0, 0x3

    aput v6, p0, v0

    float-to-double v0, p1

    const/4 v2, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/4 v2, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/4 v2, 0x6

    aput v6, p0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, p0, v2

    const/16 v2, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v2

    return-void
.end method

.method private static j6([F[F[F)V
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p1, v4

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v4

    aget v0, p1, v4

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v5

    aget v0, p1, v4

    aget v1, p2, v6

    mul-float/2addr v0, v1

    aget v1, p1, v5

    const/4 v2, 0x5

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v6

    aget v0, p1, v7

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v7

    aget v0, p1, v7

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    const/4 v0, 0x5

    aget v1, p1, v7

    aget v2, p2, v6

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    aget v3, p2, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x7

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    aget v3, p2, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final FH()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final j6()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(FF)V
    .registers 10

    const v6, 0x3fc90fdb

    const v5, -0x4036f025

    const v4, 0x3fdf66f3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    if-le v1, v3, :cond_2

    mul-float v0, p1, v4

    int-to-float v2, v1

    div-float v2, v0, v2

    mul-float v0, p2, v4

    int-to-float v1, v1

    :goto_0
    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    :cond_1
    return-void

    :cond_2
    mul-float v0, p1, v4

    int-to-float v1, v3

    div-float v2, v0, v1

    mul-float v0, p2, v4

    int-to-float v1, v3

    goto :goto_0
.end method

.method public final j6(II)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .registers 14

    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const-string v0, "SphericalVideoProcessor started with no output texture."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_5

    :cond_1
    move v1, v8

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->ct:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    const v2, 0x8b31

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    :cond_2
    :goto_3
    move v0, v8

    :cond_3
    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "useProgram"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    const/16 v7, 0x1406

    const/16 v9, 0xc

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Mr:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "vertexAttribPointer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "enableVertexAttribArray"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    new-array v0, v4, [I

    invoke-static {v4, v0, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v2, "genTextures"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget v2, v0, v8

    const v0, 0x8d65

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "bindTextures"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const v0, 0x8d65

    const/16 v3, 0x2800

    const/16 v5, 0x2601

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "texParameteri"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const v0, 0x8d65

    const/16 v3, 0x2801

    const/16 v5, 0x2601

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "texParameteri"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const v0, 0x8d65

    const/16 v3, 0x2802

    const v5, 0x812f

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "texParameteri"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    const v0, 0x8d65

    const/16 v3, 0x2803

    const v5, 0x812f

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "texParameteri"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v3, "uVMat"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->aM:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->aM:I

    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v4, v8, v3, v8}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    if-eqz v0, :cond_b

    move v0, v4

    :goto_5
    if-eqz v1, :cond_4

    if-nez v0, :cond_c

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "EGL initialization failed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :cond_5
    new-array v1, v12, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    aget v0, v5, v8

    if-lez v0, :cond_6

    aget-object v0, v3, v8

    :goto_7
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    invoke-interface {v1, v2, v0, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->QX:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2, v0, v3, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->er:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v0, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto/16 :goto_1

    :cond_6
    move-object v0, v11

    goto :goto_7

    :cond_7
    const-string v0, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    goto/16 :goto_2

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/ads/p;->Fd:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_8
    const v3, 0x8b30

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const-string v5, "createProgram"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v2, "linkProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    new-array v2, v4, [I

    const v3, 0x8b82

    invoke-static {v0, v3, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v3, "getProgramiv"

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    aget v2, v2, v8

    if-eq v2, v4, :cond_a

    const-string v2, "SphericalVideoRenderer"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SphericalVideoRenderer"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v0, "deleteProgram"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v0, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    goto :goto_8

    :cond_a
    invoke-static {v0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string v2, "validateProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    move v0, v8

    goto/16 :goto_5

    :cond_c
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->U2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->j6()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    :goto_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    if-nez v0, :cond_13

    :goto_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    goto/16 :goto_0

    :cond_d
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zn;->j6([F)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    const/4 v1, 0x3

    new-array v1, v1, [F
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    aput v2, v1, v8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v12

    const/4 v2, 0x3

    :try_start_3
    new-array v2, v2, [F
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    aget v3, v0, v8

    aget v5, v1, v8

    mul-float/2addr v3, v5

    aget v5, v0, v4

    aget v7, v1, v4

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    aget v5, v0, v12

    aget v7, v1, v12

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    aput v3, v2, v8

    aget v3, v0, v6

    aget v5, v1, v8

    mul-float/2addr v3, v5

    const/4 v5, 0x4

    aget v5, v0, v5

    aget v7, v1, v4

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    const/4 v5, 0x5

    aget v5, v0, v5

    aget v7, v1, v12

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    aput v3, v2, v4

    const/4 v3, 0x6

    aget v3, v0, v3

    aget v5, v1, v8

    mul-float/2addr v3, v5

    const/4 v5, 0x7

    aget v5, v0, v5

    aget v7, v1, v4

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    const/16 v5, 0x8

    aget v0, v0, v5

    aget v1, v1, v12

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    aput v0, v2, v12

    const/4 v0, 0x1

    :try_start_4
    aget v0, v2, v0

    float-to-double v0, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->tp:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;->DW([FF)V

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    const v1, 0x3fc90fdb

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Hw:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->v5:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->we:F

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->VH:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Zo:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([F[F[F)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->aM:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->u7:[F

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->lg:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->rN:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->yS:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "viewport"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v1, "uFOVx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->XL:I

    const-string v2, "uFOVy"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    if-le v2, v3, :cond_12

    const v2, 0x3f5f66f3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    int-to-float v0, v0

    const v2, 0x3f5f66f3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_f
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->BT:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gW:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->j3:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->a8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_10
    monitor-exit v1

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_11
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->FH:[F

    const v1, -0x4036f025

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;->j6([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->gn:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->EQ:F

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;->DW([FF)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_b

    :catch_2
    move-exception v0

    :try_start_9
    const-string v1, "SphericalVideoProcessor died."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    goto/16 :goto_0

    :cond_12
    :try_start_a
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J8:I

    int-to-float v2, v2

    const v3, 0x3f5f66f3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbdx;->J0:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x3f5f66f3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->DW:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzbdx;->Ws:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->Hw()Z

    goto/16 :goto_0

    :cond_14
    new-instance v0, Ljava/lang/String;

    const-string v1, "EGL initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
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

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
