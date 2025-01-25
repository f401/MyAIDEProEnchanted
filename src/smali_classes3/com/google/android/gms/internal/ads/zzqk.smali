.class public final Lcom/google/android/gms/internal/ads/zzqk;
.super Landroid/view/Surface;


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

    if-lt v0, v1, :cond_1f

    if-eqz p1, :cond_11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqk;->j6(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    new-instance p0, Lcom/google/android/gms/internal/ads/ZD;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ZD;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ZD;->j6(Z)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-enter v0

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzqk;->DW:Z

    if-nez v0, :cond_53

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-lt v0, v1, :cond_51

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v3, 0x3055

    invoke-static {v1, v3}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v3, "EGL_EXT_protected_content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x18

    if-ne v1, v3, :cond_4b

    sget-object v1, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v3, "SM-G950"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v3, "SM-G955"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 p0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p0, 0x0

    :goto_4c
    if-nez p0, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzqk;->j6:Z

    :cond_51
    sput-boolean v2, Lcom/google/android/gms/internal/ads/zzqk;->DW:Z

    :cond_53
    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzqk;->j6:Z
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_59

    const-class v0, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-exit v0

    return p0

    :catchall_59
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->Hw:Lcom/google/android/gms/internal/ads/ZD;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->v5:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->Hw:Lcom/google/android/gms/internal/ads/ZD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZD;->j6()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->v5:Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
