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
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
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
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/oi;->Hw:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->v5:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->VH:Lcom/google/android/gms/internal/ads/rd;

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    sput-object v0, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ak;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oi;->EQ:Lcom/google/android/gms/internal/ads/Bh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oi;->we:Lcom/google/android/gms/internal/ads/Yh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oi;->QX:Lcom/google/android/gms/internal/ads/zzur;

    sget-object p3, Lcom/google/android/gms/internal/ads/oi;->v5:Ljava/lang/Object;

    monitor-enter p3

    :try_start_16
    sget-boolean p4, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    if-nez p4, :cond_5c

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-direct {p4}, Lcom/google/android/gms/ads/internal/gmsg/G;-><init>()V

    sput-object p4, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p4, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    sput-object p4, Lcom/google/android/gms/internal/ads/oi;->gn:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    new-instance p4, Lcom/google/android/gms/internal/ads/wi;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/wi;-><init>()V

    sput-object p4, Lcom/google/android/gms/internal/ads/oi;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance p4, Lcom/google/android/gms/internal/ads/rd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/Yh;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->DW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/vi;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vi;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/ui;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ui;-><init>()V

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/sl;Lcom/google/android/gms/internal/ads/sl;)V

    sput-object p4, Lcom/google/android/gms/internal/ads/oi;->VH:Lcom/google/android/gms/internal/ads/rd;

    sput-boolean v0, Lcom/google/android/gms/internal/ads/oi;->Zo:Z

    :cond_5c
    monitor-exit p3

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p3
    :try_end_60
    .catchall {:try_start_16 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oi;->Ws:Lcom/google/android/gms/internal/ads/Hd;

    return-object p0
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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oi;->EQ:Lcom/google/android/gms/internal/ads/Bh;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->Ws:Lcom/google/android/gms/internal/ads/Hd;

    return-object p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object p1

    :cond_14
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/ads/oi;->u7:Lcom/google/android/gms/ads/internal/gmsg/G;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/internal/gmsg/G;->j6(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/qi;

    invoke-direct {v7, p0, v1, v0}, Lcom/google/android/gms/internal/ads/qi;-><init>(Lcom/google/android/gms/internal/ads/oi;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/ads/oi;->Hw:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    sub-long/2addr v6, v3

    sub-long/2addr v0, v6

    const/4 v3, -0x1

    :try_start_39
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/util/concurrent/CancellationException; {:try_start_39 .. :try_end_41} :catch_78
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_41} :catch_76
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_39 .. :try_end_41} :catch_6e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_39 .. :try_end_41} :catch_67

    if-nez v0, :cond_49

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object p1

    :cond_49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_66

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    :cond_66
    return-object p1

    :catch_67
    move-exception p1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object p1

    :catch_6e
    move-exception p1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object p1

    :catch_76
    move-exception p1

    goto :goto_79

    :catch_78
    move-exception p1

    :goto_79
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->QX()Lcom/google/android/gms/internal/ads/Li;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Li;->j6(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Ji;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception v2

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/yi;-><init>()V

    iput-object p1, v4, Lcom/google/android/gms/internal/ads/yi;->u7:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/yi;->tp:Lcom/google/android/gms/internal/ads/Ji;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Fi;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yi;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_38

    return-object v1

    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3e} :catch_43
    .catch Lcom/google/android/gms/common/d; {:try_start_38 .. :try_end_3e} :catch_41
    .catch Lcom/google/android/gms/common/e; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_4c

    :catch_3f
    move-exception v2

    goto :goto_46

    :catch_41
    move-exception v2

    goto :goto_46

    :catch_43
    move-exception v2

    goto :goto_46

    :catch_45
    move-exception v2

    :goto_46
    const-string v3, "Cannot get advertising id info"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_4c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "request_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "request_param"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_78

    const-string p1, "adid"

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "lat"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    :try_start_78
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_80} :catch_81

    return-object p1

    :catch_81
    move-exception p1

    return-object v1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->J0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/ti;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ti;-><init>(Lcom/google/android/gms/internal/ads/oi;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final Hw()V
    .registers 16

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi;->we:Lcom/google/android/gms/internal/ads/Yh;

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/Yh;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v3

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_44

    const/4 v2, 0x3

    if-ne v1, v2, :cond_53

    :cond_44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi;->J8:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ak;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_53
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v7

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/oi;->QX:Lcom/google/android/gms/internal/ads/zzur;

    move-object v1, v0

    move-object v2, v10

    move-wide v9, v11

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzur;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/pi;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/pi;-><init>(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
