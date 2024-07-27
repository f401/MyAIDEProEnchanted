.class public final Lcom/google/android/gms/internal/ads/zzqk;
.super Landroid/view/Surface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static DW:Z

.field private static j6:Z


# instance fields
.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/ads/ZD;

.field private v5:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ZD;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqk;->Hw:Lcom/google/android/gms/internal/ads/ZD;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqk;->FH:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ZD;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/YD;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/ZD;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static j6(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqk;
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ZD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ZD;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ZD;->j6(Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-enter v2

    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/ads/zzqk;->DW:Z

    if-nez v2, :cond_2

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/16 v3, 0x3055

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "EGL_EXT_protected_content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v3, "SM-G950"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v3, "SM-G955"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.vr.high_performance"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    :goto_1
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzqk;->j6:Z

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzqk;->DW:Z

    :cond_2
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzqk;->j6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-exit v1

    return v0

    :cond_3
    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-exit v1

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->Hw:Lcom/google/android/gms/internal/ads/ZD;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->v5:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->Hw:Lcom/google/android/gms/internal/ads/ZD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZD;->j6()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->v5:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
