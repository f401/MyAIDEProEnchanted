.class public final Lcom/google/android/gms/ads/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/content/Context;

.field private FH:J

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/e;->j6:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/e;->FH:J

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;ZLcom/google/android/gms/internal/ads/ok;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;ZLcom/google/android/gms/internal/ads/ok;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/e;->FH:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    const-string p1, "Not retrying to fetch app settings"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/e;->FH:J

    const/4 v0, 0x1

    if-nez p4, :cond_25

    goto :goto_54

    :cond_25
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/ok;->j6()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/ads/p;->ji:Lcom/google/android/gms/internal/ads/e;

    sub-long/2addr v3, v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x0

    cmp-long v6, v3, v1

    if-lez v6, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    if-nez v1, :cond_54

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/ok;->DW()Z

    move-result p4

    if-nez p4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :cond_54
    :goto_54
    if-nez v0, :cond_57

    return-void

    :cond_57
    if-nez p1, :cond_5f

    const-string p1, "Context not provided to fetch application settings"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_5f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_71

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_71

    const-string p1, "App settings could not be fetched. Required parameters missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_78

    goto :goto_79

    :cond_78
    move-object p4, p1

    :goto_79
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/e;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Mr()Lcom/google/android/gms/internal/ads/Vd;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/e;->DW:Landroid/content/Context;

    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/Vd;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/ce;

    move-result-object p2

    sget-object p4, Lcom/google/android/gms/internal/ads/_d;->DW:Lcom/google/android/gms/internal/ads/Yd;

    const-string v0, "google.afma.config.fetchAppSettings"

    invoke-virtual {p2, v0, p4, p4}, Lcom/google/android/gms/internal/ads/ce;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)Lcom/google/android/gms/internal/ads/Ud;

    move-result-object p2

    :try_start_8d
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string p6, "app_id"

    invoke-virtual {p4, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a9

    :cond_9e
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_a9

    const-string p5, "ad_unit_id"

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a9
    :goto_a9
    const-string p5, "is_init"

    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "pn"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/Ud;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/ads/internal/f;->j6:Lcom/google/android/gms/internal/ads/qm;

    sget-object p3, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p2

    if-eqz p7, :cond_ca

    sget-object p3, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p7, p3}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_ca
    const-string p1, "ConfigLoader.maybeFetchNewAppSettings"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_cf} :catch_d0

    return-void

    :catch_d0
    move-exception p1

    const-string p2, "Error requesting application settings"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
