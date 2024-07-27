.class final Lcom/google/android/gms/common/m;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/Object;

.field private static FH:Landroid/content/Context;

.field private static volatile j6:Lcom/google/android/gms/common/internal/O;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/m;->DW:Ljava/lang/Object;

    return-void
.end method

.method private static DW(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;
    .registers 7

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/m;->DW:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->EQ:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/P;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/O;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/zzk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)V

    :try_start_2
    sget-object v1, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    sget-object v2, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/O;->j6(Lcom/google/android/gms/common/zzk;Labcd/ox;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/v;->DW()Lcom/google/android/gms/common/v;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "module init: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/n;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/gms/common/n;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/o;)V

    invoke-static {v0}, Lcom/google/android/gms/common/v;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/v;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "module call"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v2, "module init: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static j6(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;
    .registers 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/m;->DW(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method static final synthetic j6(ZLjava/lang/String;Lcom/google/android/gms/common/o;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/m;->DW(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/v;->DW:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/m;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/google/android/gms/common/m;

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    const-string v0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-class v0, Lcom/google/android/gms/common/m;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/common/m;

    monitor-exit v1

    throw v0
.end method
