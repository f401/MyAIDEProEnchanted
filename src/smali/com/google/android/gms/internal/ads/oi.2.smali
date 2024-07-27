.class public final Lcom/google/android/gms/internal/ads/oi;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final Hw:J

.field private static VH:Lcom/google/android/gms/internal/ads/rd;

.field private static Zo:Z

.field private static gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

.field private static tp:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static u7:Lcom/google/android/gms/ads/internal/gmsg/G;

.field private static final v5:Ljava/lang/Object;


# instance fields
.field private final EQ:Lcom/google/android/gms/internal/ads/Bh;

.field private final J0:Ljava/lang/Object;

.field private final J8:Landroid/content/Context;

.field private QX:Lcom/google/android/gms/internal/ads/zzur;

.field private Ws:Lcom/google/android/gms/internal/ads/Hd;

.field private final we:Lcom/google/android/gms/internal/ads/Yh;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/oi;->Hw:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->v5:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    sput-object v4, Lcom/google/android/gms/internal/ads/oi;->VH:Lcom/google/android/gms/internal/ads/rd;

    sput-object v4, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    sput-object v4, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    sput-object v4, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ak;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->J0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oi;->EQ:Lcom/google/android/gms/internal/ads/Bh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oi;->we:Lcom/google/android/gms/internal/ads/Yh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oi;->QX:Lcom/google/android/gms/internal/ads/zzur;

    sget-object v6, Lcom/google/android/gms/internal/ads/oi;->v5:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/gmsg/G;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    new-instance v0, Lcom/google/android/gms/internal/ads/wi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->we:Lcom/google/android/gms/internal/ads/Yh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->DW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/vi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/vi;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/ui;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/ui;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/sl;Lcom/google/android/gms/internal/ads/sl;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->VH:Lcom/google/android/gms/internal/ads/rd;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->Ws:Lcom/google/android/gms/internal/ads/Hd;

    return-object v0
.end method

.method protected static DW(Lcom/google/android/gms/internal/ads/gd;)V
    .registers 3

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method static synthetic VH()Lcom/google/android/gms/internal/ads/rd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/oi;->VH:Lcom/google/android/gms/internal/ads/rd;

    return-object v0
.end method

.method static synthetic Zo()Lcom/google/android/gms/ads/internal/gmsg/G;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Bh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->EQ:Lcom/google/android/gms/internal/ads/Bh;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->Ws:Lcom/google/android/gms/internal/ads/Hd;

    return-object p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 12

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/internal/gmsg/G;->j6(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/ads/qi;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/internal/ads/qi;-><init>(Lcom/google/android/gms/internal/ads/oi;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/ads/oi;->Hw:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v2, "sdk_less_server_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->QX()Lcom/google/android/gms/internal/ads/Li;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Li;->j6(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ji;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/yi;-><init>()V

    iput-object p1, v4, Lcom/google/android/gms/internal/ads/yi;->u7:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/yi;->tp:Lcom/google/android/gms/internal/ads/Ji;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yi;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/d; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/common/e; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "request_param"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v2, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    const-string v4, "Cannot get advertising id info"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/gd;)V
    .registers 3

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/ti;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ti;-><init>(Lcom/google/android/gms/internal/ads/oi;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Hw()V
    .registers 16

    const/4 v14, 0x0

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->we:Lcom/google/android/gms/internal/ads/Yh;

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ak;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v4

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v8

    new-instance v2, Lcom/google/android/gms/internal/ads/lk;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/oi;->QX:Lcom/google/android/gms/internal/ads/zzur;

    move-object v3, v0

    move-object v5, v14

    move-object v6, v14

    move-object v12, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzur;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/pi;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/pi;-><init>(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
