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

    if-nez v0, :cond_2b

    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/m;->DW:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_c} :catch_65

    :try_start_c
    sget-object v1, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    if-nez v1, :cond_26

    sget-object v1, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->EQ:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/P;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/O;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p0
    :try_end_2b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_2a .. :try_end_2b} :catch_65

    :cond_2b
    :goto_2b
    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/zzk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)V

    :try_start_35
    sget-object v1, Lcom/google/android/gms/common/m;->j6:Lcom/google/android/gms/common/internal/O;

    sget-object v2, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/O;->j6(Lcom/google/android/gms/common/zzk;Labcd/ox;)Z

    move-result v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_45} :catch_56

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/google/android/gms/common/v;->DW()Lcom/google/android/gms/common/v;

    move-result-object p0

    return-object p0

    :cond_4c
    new-instance v0, Lcom/google/android/gms/common/n;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/gms/common/n;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/o;)V

    invoke-static {v0}, Lcom/google/android/gms/common/v;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/v;

    move-result-object p0

    return-object p0

    :catch_56
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    invoke-static {p1, p0}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;

    move-result-object p0

    return-object p0

    :catch_65
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_82

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_89

    :cond_82
    new-instance p1, Ljava/lang/String;

    const-string p2, "module init: "

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_89
    invoke-static {p1, p0}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;
    .registers 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/m;->DW(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method static final synthetic j6(ZLjava/lang/String;Lcom/google/android/gms/common/o;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_c

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/m;->DW(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/v;->DW:Z

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Landroid/content/Context;)V
    .registers 2

    const-class v0, Lcom/google/android/gms/common/m;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;

    if-nez v0, :cond_13

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/m;->FH:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    :cond_f
    :goto_f
    const-class p0, Lcom/google/android/gms/common/m;

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    const-string p0, "GoogleCertificates"

    const-string v0, "GoogleCertificates has been initialized already"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception p0

    const-class v0, Lcom/google/android/gms/common/m;

    monitor-exit v0

    goto :goto_21

    :goto_20
    throw p0

    :goto_21
    goto :goto_20
.end method
