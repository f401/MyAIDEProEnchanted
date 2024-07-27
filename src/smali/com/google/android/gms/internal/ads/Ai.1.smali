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

    sget-object v1, Lcom/google/android/gms/internal/ads/Ai;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Ai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Ai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ck;->j6(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Ai;->DW:Lcom/google/android/gms/internal/ads/Ai;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final synthetic j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Ii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ii;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/zzasi;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 22

    const-string v2, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->br:Lcom/google/android/gms/internal/ads/e;

    new-instance v9, Lcom/google/android/gms/internal/ads/D;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "load_ad"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-direct {v9, v2, v3, v4}, Lcom/google/android/gms/internal/ads/D;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->gW:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/ads/D;->j6(J)Lcom/google/android/gms/internal/ads/A;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cts"

    aput-object v5, v3, v4

    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->gn:Lcom/google/android/gms/internal/ads/kg;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/kg;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->K3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v4, v5, v2, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v5

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->Qk:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->FH:Lcom/google/android/gms/internal/ads/fk;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/fk;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object v6, v2

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->FH:Lcom/google/android/gms/internal/ads/fk;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/fk;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->u7:Lcom/google/android/gms/internal/ads/jk;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->gn:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/jk;->j6(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->QX()Lcom/google/android/gms/internal/ads/Li;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Li;->j6(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v13

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v4, "_ad"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzasi;->SI:Z

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->Zo:Lcom/google/android/gms/internal/ads/je;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->Zo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/je;->j6(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object v3, v2

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->h2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v10, v11, v2, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v14

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->Cz:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->u7:Lcom/google/android/gms/internal/ads/jk;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/jk;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->pN:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v10, v11, v2, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object v4, v2

    :goto_2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->Ws:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    move-object v10, v2

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "Device is offline."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    move-object v11, v2

    :goto_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v3, "_ad"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v2

    :goto_5
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_4

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->Hw:Lcom/google/android/gms/internal/ads/d;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->lg:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/d;->j6(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->K3:Lcom/google/android/gms/internal/ads/e;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-static {v5, v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const/4 v5, 0x0

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/Ji;

    if-nez v8, :cond_7

    const-string v2, "Error fetching device info. This is not recoverable."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_5

    :cond_7
    new-instance v13, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/yi;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/google/android/gms/internal/ads/yi;->u7:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object v8, v13, Lcom/google/android/gms/internal/ads/yi;->tp:Lcom/google/android/gms/internal/ads/Ji;

    iput-object v3, v13, Lcom/google/android/gms/internal/ads/yi;->Hw:Landroid/location/Location;

    iput-object v2, v13, Lcom/google/android/gms/internal/ads/yi;->DW:Landroid/os/Bundle;

    iput-object v5, v13, Lcom/google/android/gms/internal/ads/yi;->VH:Ljava/lang/String;

    iput-object v4, v13, Lcom/google/android/gms/internal/ads/yi;->gn:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v15, :cond_8

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_8
    iput-object v15, v13, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    iput-object v10, v13, Lcom/google/android/gms/internal/ads/yi;->j6:Landroid/os/Bundle;

    iput-object v6, v13, Lcom/google/android/gms/internal/ads/yi;->v5:Ljava/lang/String;

    iput-object v7, v13, Lcom/google/android/gms/internal/ads/yi;->Zo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->DW:Lcom/google/android/gms/internal/ads/MF;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/MF;->j6(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v13, Lcom/google/android/gms/internal/ads/yi;->EQ:Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zi;->tp:Z

    iput-boolean v2, v13, Lcom/google/android/gms/internal/ads/yi;->we:Z

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yi;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_a

    :try_start_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "arc"

    aput-object v5, v3, v4

    invoke-virtual {v9, v12, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->EQ:Lcom/google/android/gms/internal/ads/Ei;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ei;->Zo()Lcom/google/android/gms/internal/ads/Ud;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Ud;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Bi;->j6:Lcom/google/android/gms/internal/ads/qm;

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v2, v4, v5, v3, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->v5:Lcom/google/android/gms/internal/ads/Qi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Qi;->j6()Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    :cond_b
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/Ii;

    if-nez v8, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->j6()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->j6()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/D;->Hw()Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->Zo()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->DW()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/Ai;->j6(Lcom/google/android/gms/internal/ads/zzasi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ii;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v2

    :cond_e
    if-nez v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    :cond_f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "tts"

    aput-object v5, v3, v4

    invoke-virtual {v9, v12, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/D;->DW()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->yS:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ii;->gn()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->aj:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    :catch_0
    move-exception v3

    goto/16 :goto_6

    :cond_11
    move-object v4, v3

    goto/16 :goto_2

    :cond_12
    move-object v6, v3

    goto/16 :goto_0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzasi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ii;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 22

    if-eqz p7, :cond_7

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v2

    move-object v7, v2

    :goto_0
    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/ads/Gi;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/internal/ads/Gi;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "AdRequestServiceImpl: Sending request: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v10

    const/4 v2, 0x0

    move v4, v2

    move-object v5, v3

    :cond_0
    :goto_2
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ri;->j6()V

    :cond_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, p1, p2, v6, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->v5()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "x-afma-drt-v2-cookie"

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasi;->KD:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Sending webview cookie in ad request header."

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const-string v6, "Cookie"

    invoke-virtual {v3, v6, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p6, :cond_a

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/Ii;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v6}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    :goto_3
    new-instance v6, Lcom/google/android/gms/internal/ads/cm;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/cm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    const/16 v12, 0xc8

    if-lt v2, v12, :cond_b

    const/16 v12, 0x12c

    if-ge v2, v12, :cond_b

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v12

    :try_start_7
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;)V

    invoke-static {v5, v9, v12, v2}, Lcom/google/android/gms/internal/ads/Ai;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v8, v5, v9, v12}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p7, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ufe"

    aput-object v5, v2, v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_5
    move-object/from16 v0, p6

    invoke-virtual {v8, v10, v11, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(JLcom/google/android/gms/internal/ads/Ii;)Lcom/google/android/gms/internal/ads/zzasm;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_6

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ri;->DW()V

    :cond_6
    :goto_4
    return-object v2

    :cond_7
    const/4 v2, 0x0

    move-object v7, v2

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/String;

    const-string v3, "AdRequestServiceImpl: Sending request: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v4, v6

    :goto_6
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_9

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ri;->DW()V

    :cond_9
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v2

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :catchall_3
    move-exception v2

    const/4 v4, 0x0

    :goto_7
    :try_start_b
    invoke-static {v4}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw v2

    :cond_b
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v9, v6, v2}, Lcom/google/android/gms/internal/ads/Ai;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_e

    const/16 v5, 0x190

    if-ge v2, v5, :cond_e

    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v2, "No location header to follow redirect."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_6

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_4

    :cond_c
    :try_start_d
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->MX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v4, v2, :cond_d

    const-string v2, "Too many redirects."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_6

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_4

    :cond_d
    :try_start_f
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_2

    :cond_e
    :try_start_11
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Received error HTTP response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_6

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ri;->DW()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_4

    :cond_f
    new-instance v2, Ljava/lang/String;

    const-string v3, "Error while connecting to ad server: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_4
    move-exception v2

    goto/16 :goto_7
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_5

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

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "      "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v1, v0, 0x3e8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_3
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V
    .registers 4

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ai;->FH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ai;->Hw:Lcom/google/android/gms/internal/ads/zi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ai;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/Ai;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/zzasi;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V
    .registers 9

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ai;->FH:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Ci;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ci;-><init>(Lcom/google/android/gms/internal/ads/Ai;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ll;->j6()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/Di;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Di;-><init>(Lcom/google/android/gms/internal/ads/Ai;Ljava/util/concurrent/Future;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V
    .registers 4

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
