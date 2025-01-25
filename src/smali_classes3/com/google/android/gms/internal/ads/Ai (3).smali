.class public final Lcom/google/android/gms/internal/ads/Ai;
.super Lcom/google/android/gms/internal/ads/di;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/internal/ads/Ai;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final FH:Landroid/content/Context;

.field private final Hw:Lcom/google/android/gms/internal/ads/zi;

.field private final v5:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ai;->j6:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/di;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ai;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ai;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ai;->Hw:Lcom/google/android/gms/internal/ads/zi;

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/Ai;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Ai;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Ai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;)Z

    :cond_28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ck;->j6(Landroid/content/Context;)V

    :cond_2b
    sget-object p0, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    monitor-exit v0

    return-object p0

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method static final synthetic j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Ii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ii;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/zzasi;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 23

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    const-string v0, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->br:Lcom/google/android/gms/internal/ads/e;

    new-instance v10, Lcom/google/android/gms/internal/ads/D;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const-string v5, "load_ad"

    invoke-direct {v10, v0, v5, v4}, Lcom/google/android/gms/internal/ads/D;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v4, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-le v0, v4, :cond_45

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzasi;->gW:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_45

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/D;->j6(J)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "cts"

    aput-object v5, v4, v12

    invoke-virtual {v10, v0, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v13

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zi;->gn:Lcom/google/android/gms/internal/ads/kg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/kg;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->K3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/p;->Qk:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_86

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zi;->FH:Lcom/google/android/gms/internal/ads/fk;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/fk;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v5

    :cond_86
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zi;->FH:Lcom/google/android/gms/internal/ads/fk;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/fk;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zi;->u7:Lcom/google/android/gms/internal/ads/jk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzasi;->gn:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v8, v14}, Lcom/google/android/gms/internal/ads/jk;->j6(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->QX()Lcom/google/android/gms/internal/ads/Li;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/Li;->j6(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v11, "_ad"

    if-eqz v15, :cond_b6

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b6

    const/4 v15, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v15, 0x0

    :goto_b7
    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzasi;->SI:Z

    if-eqz v12, :cond_c5

    if-nez v15, :cond_c5

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zi;->Zo:Lcom/google/android/gms/internal/ads/je;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzasi;->Zo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v12, v14}, Lcom/google/android/gms/internal/ads/je;->j6(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v14

    :cond_c5
    sget-object v12, Lcom/google/android/gms/internal/ads/p;->h2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v16, v5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v14, v4, v5, v12, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v12

    sget-object v5, Lcom/google/android/gms/internal/ads/p;->Cz:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_110

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zi;->u7:Lcom/google/android/gms/internal/ads/jk;

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/jk;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v5

    sget-object v12, Lcom/google/android/gms/internal/ads/p;->pN:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v14, v15, v12, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v12

    :cond_110
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v14, 0x4

    if-lt v5, v14, :cond_11b

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzasi;->Ws:Landroid/os/Bundle;

    if-eqz v15, :cond_11b

    move-object v5, v15

    goto :goto_11c

    :cond_11b
    const/4 v5, 0x0

    :goto_11c
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v14, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13a

    const-string v14, "connectivity"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    if-nez v14, :cond_13a

    const-string v14, "Device is offline."

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_13a
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v15, 0x7

    if-lt v14, v15, :cond_142

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    goto :goto_14a

    :cond_142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_14a
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v15, :cond_15b

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15b

    invoke-static {v2, v1, v11}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    return-object v0

    :cond_15b
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zi;->Hw:Lcom/google/android/gms/internal/ads/d;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzasi;->lg:Ljava/util/List;

    invoke-interface {v11, v15}, Lcom/google/android/gms/internal/ads/d;->j6(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    sget-object v15, Lcom/google/android/gms/internal/ads/p;->K3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v15, 0x0

    invoke-static {v0, v15, v13, v14, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-static {v12, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {v7, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v12, v16

    invoke-static {v12, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v13, 0x7

    check-cast v8, Lcom/google/android/gms/internal/ads/Ji;

    if-nez v8, :cond_1b5

    const-string v0, "Error fetching device info. This is not recoverable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0

    :cond_1b5
    new-instance v14, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/yi;-><init>()V

    iput-object v1, v14, Lcom/google/android/gms/internal/ads/yi;->u7:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object v8, v14, Lcom/google/android/gms/internal/ads/yi;->tp:Lcom/google/android/gms/internal/ads/Ji;

    iput-object v3, v14, Lcom/google/android/gms/internal/ads/yi;->Hw:Landroid/location/Location;

    iput-object v0, v14, Lcom/google/android/gms/internal/ads/yi;->DW:Landroid/os/Bundle;

    iput-object v7, v14, Lcom/google/android/gms/internal/ads/yi;->VH:Ljava/lang/String;

    iput-object v4, v14, Lcom/google/android/gms/internal/ads/yi;->gn:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v11, :cond_1cd

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1cd
    iput-object v11, v14, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    iput-object v5, v14, Lcom/google/android/gms/internal/ads/yi;->j6:Landroid/os/Bundle;

    iput-object v12, v14, Lcom/google/android/gms/internal/ads/yi;->v5:Ljava/lang/String;

    iput-object v6, v14, Lcom/google/android/gms/internal/ads/yi;->Zo:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zi;->DW:Lcom/google/android/gms/internal/ads/MF;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/MF;->j6(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v14, Lcom/google/android/gms/internal/ads/yi;->EQ:Lorg/json/JSONObject;

    iget-boolean v0, v9, Lcom/google/android/gms/internal/ads/zi;->tp:Z

    iput-boolean v0, v14, Lcom/google/android/gms/internal/ads/yi;->we:Z

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yi;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1ee

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0

    :cond_1ee
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    if-ge v0, v13, :cond_1fb

    :try_start_1f2
    const-string v0, "request_id"

    move-object/from16 v14, v18

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f9
    .catch Lorg/json/JSONException; {:try_start_1f2 .. :try_end_1f9} :catch_1fa

    goto :goto_1fb

    :catch_1fa
    move-exception v0

    :cond_1fb
    :goto_1fb
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "arc"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    move-object/from16 v11, v17

    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zi;->EQ:Lcom/google/android/gms/internal/ads/Ei;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ei;->Zo()Lcom/google/android/gms/internal/ads/Ud;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Ud;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/Bi;->j6:Lcom/google/android/gms/internal/ads/qm;

    move-object/from16 v4, p3

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    const-wide/16 v7, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8, v3, v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zi;->v5:Lcom/google/android/gms/internal/ads/Qi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Qi;->j6()Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    if-eqz v3, :cond_22f

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    :cond_22f
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ii;

    if-nez v0, :cond_23f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0

    :cond_23f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->j6()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_250

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->j6()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v1

    :cond_250
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/D;->Hw()Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_266

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v4

    goto :goto_267

    :cond_266
    move-object v4, v3

    :goto_267
    if-nez v4, :cond_288

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_288

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->DW()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v5, v12

    move-object v7, v0

    move-object v8, v10

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/Ai;->j6(Lcom/google/android/gms/internal/ads/zzasi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ii;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v4

    :cond_288
    if-nez v4, :cond_291

    new-instance v4, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_292

    :cond_291
    const/4 v1, 0x0

    :goto_292
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "tts"

    aput-object v3, v2, v1

    invoke-virtual {v10, v11, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/D;->DW()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzasm;->yS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ii;->gn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->aj:Ljava/lang/String;

    return-object v4
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzasi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ii;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    if-eqz v2, :cond_f

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v5

    goto :goto_10

    :cond_f
    const/4 v5, 0x0

    :goto_10
    :try_start_10
    new-instance v6, Lcom/google/android/gms/internal/ads/Gi;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->FH()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/google/android/gms/internal/ads/Gi;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_1d0

    const-string v9, "AdRequestServiceImpl: Sending request: "

    if-eqz v8, :cond_2a

    :try_start_25
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2f

    :cond_2a
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URL;

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_43
    if-eqz v3, :cond_4a

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/Ri;->j6()V

    :cond_4a
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_50} :catch_1d0

    :try_start_50
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v13

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v13, v14, v15, v10, v12}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->v5()Z

    move-result v13

    if-eqz v13, :cond_7f

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6f

    const-string v13, "x-afma-drt-cookie"

    move-object/from16 v4, p4

    invoke-virtual {v12, v13, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_6f
    move-object/from16 v4, p4

    :goto_71
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_81

    const-string v13, "x-afma-drt-v2-cookie"

    move-object/from16 v10, p5

    invoke-virtual {v12, v13, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_7f
    move-object/from16 v4, p4

    :cond_81
    move-object/from16 v10, p5

    :goto_83
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzasi;->KD:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_95

    const-string v16, "Sending webview cookie in ad request header."

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const-string v4, "Cookie"

    invoke-virtual {v12, v4, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    const/4 v4, 0x1

    if-eqz v1, :cond_c9

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->Hw()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c9

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->Hw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v4, v13

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_b1
    .catchall {:try_start_50 .. :try_end_b1} :catchall_1c4

    :try_start_b1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_c3

    :try_start_ba
    invoke-virtual {v4, v13}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c1

    :try_start_bd
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    goto :goto_ca

    :catchall_c1
    move-exception v0

    goto :goto_c5

    :catchall_c3
    move-exception v0

    const/4 v4, 0x0

    :goto_c5
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw v0

    :cond_c9
    const/4 v13, 0x0

    :goto_ca
    new-instance v4, Lcom/google/android/gms/internal/ads/cm;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-direct {v4, v10}, Lcom/google/android/gms/internal/ads/cm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v4, v12, v10}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    const/16 v0, 0xc8

    const/16 v14, 0x12c

    if-lt v10, v0, :cond_12c

    if-ge v10, v14, :cond_12c

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_eb
    .catchall {:try_start_bd .. :try_end_eb} :catchall_1c4

    :try_start_eb
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_f4
    .catchall {:try_start_eb .. :try_end_f4} :catchall_126

    :try_start_f4
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v11
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_123

    :try_start_fb
    invoke-static {v7}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;)V

    invoke-static {v0, v13, v11, v10}, Lcom/google/android/gms/internal/ads/Ai;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v6, v0, v13, v11}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v2, :cond_114

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "ufe"

    const/4 v7, 0x0

    aput-object v4, v0, v7

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_114
    invoke-virtual {v6, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Gi;->j6(JLcom/google/android/gms/internal/ads/Ii;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0
    :try_end_118
    .catchall {:try_start_fb .. :try_end_118} :catchall_1c4

    :try_start_118
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_122

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_122} :catch_1d0

    :cond_122
    return-object v0

    :catchall_123
    move-exception v0

    move-object v4, v7

    goto :goto_128

    :catchall_126
    move-exception v0

    const/4 v4, 0x0

    :goto_128
    :try_start_128
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw v0

    :cond_12c
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v13, v4, v10}, Lcom/google/android/gms/internal/ads/Ai;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v10, v14, :cond_19d

    const/16 v0, 0x190

    if-ge v10, v0, :cond_19d

    const-string v0, "Location"

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15c

    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_151
    .catchall {:try_start_128 .. :try_end_151} :catchall_1c4

    :try_start_151
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_15b

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_15b} :catch_1d0

    :cond_15b
    return-object v0

    :cond_15c
    :try_start_15c
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/2addr v11, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->MX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v11, v0, :cond_18b

    const-string v0, "Too many redirects."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_180
    .catchall {:try_start_15c .. :try_end_180} :catchall_1c4

    :try_start_180
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_18a

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_18a} :catch_1d0

    :cond_18a
    return-object v0

    :cond_18b
    :try_start_18b
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;)V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_1c4

    :try_start_18e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_198

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_198} :catch_1d0

    :cond_198
    move-object/from16 v0, p0

    const/4 v10, 0x0

    goto/16 :goto_43

    :cond_19d
    :try_start_19d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received error HTTP response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_1b9
    .catchall {:try_start_19d .. :try_end_1b9} :catchall_1c4

    :try_start_1b9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_1c3

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ri;->DW()V

    :cond_1c3
    return-object v0

    :catchall_1c4
    move-exception v0

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_1cf

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ri;->DW()V

    :cond_1cf
    throw v0
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1d0} :catch_1d0

    :catch_1d0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error while connecting to ad server: "

    if-eqz v1, :cond_1e6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1eb

    :cond_1e6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1eb
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_db

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    if-eqz p1, :cond_93

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "      "

    if-eqz v2, :cond_8a

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8f

    :cond_8a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_6d

    :cond_93
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    if-eqz p2, :cond_bb

    const/4 p0, 0x0

    :goto_9b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_c0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    move p0, v0

    goto :goto_9b

    :cond_bb
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_c0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "  Response Code:\n    "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_db
    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V
    .registers 3

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ai;->FH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ai;->Hw:Lcom/google/android/gms/internal/ads/zi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ai;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/Ai;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/zzasi;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ai;->FH:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Ci;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ci;-><init>(Lcom/google/android/gms/internal/ads/Ai;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Ll;->j6()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/Di;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Di;-><init>(Lcom/google/android/gms/internal/ads/Ai;Ljava/util/concurrent/Future;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V
    .registers 3

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
