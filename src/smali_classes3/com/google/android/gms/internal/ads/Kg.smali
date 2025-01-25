.class public final Lcom/google/android/gms/internal/ads/Kg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/kk;",
        ">;"
    }
.end annotation


# static fields
.field private static j6:J = 0xaL


# instance fields
.field private final DW:Landroid/content/Context;

.field private EQ:I

.field private final FH:Lcom/google/android/gms/internal/ads/zzazs;

.field private final Hw:Lcom/google/android/gms/ads/internal/C;

.field private J0:Lorg/json/JSONObject;

.field private J8:Ljava/lang/String;

.field private final VH:Ljava/lang/Object;

.field private Ws:Ljava/lang/String;

.field private final Zo:Lcom/google/android/gms/internal/ads/dh;

.field private final gn:Lcom/google/android/gms/internal/ads/lk;

.field private tp:Z

.field private final u7:Lcom/google/android/gms/internal/ads/D;

.field private final v5:Lcom/google/android/gms/internal/ads/ix;

.field private we:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Kg;->FH:Lcom/google/android/gms/internal/ads/zzazs;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/C;->J1()Lcom/google/android/gms/internal/ads/dh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/Mo;"
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->DY:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Mo;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1b} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_1b} :catch_20
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_21

    :catch_1e
    move-exception p0

    goto :goto_21

    :catch_20
    move-exception p0

    :goto_21
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :catch_25
    move-exception p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_1f
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TV;>;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Hm;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private final DW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kg;)Lcom/google/android/gms/ads/internal/C;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    return-object p0
.end method

.method private final j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    if-eqz p2, :cond_9

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    const-string v1, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "is_transparent"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1

    :cond_2c
    if-eqz p3, :cond_3c

    new-instance p1, Lcom/google/android/gms/internal/ads/V;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2, v4, v5}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1

    :cond_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kg;->FH:Lcom/google/android/gms/internal/ads/zzazs;

    new-instance p3, Lcom/google/android/gms/internal/ads/Rg;

    move-object v1, p3

    move-object v2, p0

    move v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Rg;-><init>(Lcom/google/android/gms/internal/ads/Kg;ZDZLjava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzazs;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cl;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/Mo;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->qI:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Mo;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_19} :catch_1e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    goto :goto_1f

    :catch_1c
    move-exception p0

    goto :goto_1f

    :catch_1e
    move-exception p0

    :goto_1f
    const-string v0, "Exception occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_25
    move-exception p0

    const-string v0, "InterruptedException occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;
    .registers 12

    new-instance v6, Lcom/google/android/gms/internal/ads/Ug;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)V

    return-object v6
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/kk;
    .registers 16

    const-string v0, "custom_template_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/C;->s0()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v3

    if-nez v3, :cond_6e

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5
    :try_end_2a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_2a} :catch_20b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_2a} :catch_209
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_2a} :catch_207
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2a} :catch_205
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_2a} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_1fa

    const-string v6, "ads"

    if-eqz v5, :cond_42

    :try_start_2e
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_3a

    :cond_39
    move-object v4, v2

    :goto_3a
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_46

    :cond_42
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_46
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/dh;->DW(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    sget-wide v4, Lcom/google/android/gms/internal/ads/Kg;->j6:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "success"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string v4, "json"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object v9, v3

    goto :goto_6f

    :cond_6e
    move-object v9, v2

    :goto_6f
    if-eqz v9, :cond_78

    const-string v3, "enable_omid"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_77
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2e .. :try_end_77} :catch_20b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_77} :catch_209
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_77} :catch_207
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_77} :catch_205
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_77} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_77} :catch_1fa

    goto :goto_79

    :cond_78
    const/4 v3, 0x0

    :goto_79
    const-string v4, "omid_settings"

    if-nez v3, :cond_83

    :goto_7d
    :try_start_7d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v5

    :goto_81
    move-object v13, v5

    goto :goto_a7

    :cond_83
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_8a

    goto :goto_7d

    :cond_8a
    const-string v6, "omid_html"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_97

    goto :goto_7d

    :cond_97
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/Lg;

    invoke-direct {v7, p0, v5}, Lcom/google/android/gms/internal/ads/Lg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v5

    goto :goto_81

    :goto_a7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v5

    if-nez v5, :cond_160

    if-nez v9, :cond_b1

    goto/16 :goto_160

    :cond_b1
    const-string v5, "template_id"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "instream"

    const-string v7, "type"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v7, :cond_d4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzacp;->DW:Z

    goto :goto_d5

    :cond_d4
    const/4 v7, 0x0

    :goto_d5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v8, :cond_e6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    goto :goto_e7

    :cond_e6
    const/4 v8, 0x0

    :goto_e7
    if-eqz v6, :cond_f0

    new-instance v0, Lcom/google/android/gms/internal/ads/Jg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jg;-><init>()V

    goto/16 :goto_161

    :cond_f0
    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    new-instance v0, Lcom/google/android/gms/internal/ads/eh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    invoke-direct {v0, v7, v8, v5}, Lcom/google/android/gms/internal/ads/eh;-><init>(ZZZ)V

    goto :goto_161

    :cond_102
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    new-instance v0, Lcom/google/android/gms/internal/ads/fh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    invoke-direct {v0, v7, v8, v5}, Lcom/google/android/gms/internal/ads/fh;-><init>(ZZZ)V

    goto :goto_161

    :cond_114
    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v8, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v10, Lcom/google/android/gms/internal/ads/Ng;

    invoke-direct {v10, p0, v6, v5}, Lcom/google/android/gms/internal/ads/Ng;-><init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v10, Lcom/google/android/gms/internal/ads/Kg;->j6:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v5}, Lcom/google/android/gms/internal/ads/Rm;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13f

    new-instance v0, Lcom/google/android/gms/internal/ads/gh;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/gh;-><init>(Z)V

    goto :goto_161

    :cond_13f
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_14b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7d .. :try_end_14b} :catch_20b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7d .. :try_end_14b} :catch_209
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_14b} :catch_207
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_14b} :catch_205
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7d .. :try_end_14b} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_14b} :catch_1fa

    const-string v6, "No handler for custom template: "

    if-eqz v5, :cond_154

    :try_start_14f
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_159

    :cond_154
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_159
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    goto :goto_160

    :cond_15d
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_160
    :goto_160
    move-object v0, v2

    :goto_161
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v5

    if-nez v5, :cond_1d8

    if-eqz v0, :cond_1d8

    if-nez v9, :cond_16d

    goto/16 :goto_1d8

    :cond_16d
    const-string v5, "tracking_urls_and_actions"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "impression_tracking_urls"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_17d

    move-object v7, v2

    goto :goto_193

    :cond_17d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_184
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_193

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_184

    :cond_193
    :goto_193
    if-nez v7, :cond_197

    move-object v6, v2

    goto :goto_19b

    :cond_197
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_19b
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    const-string v6, "active_view"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->J0:Lorg/json/JSONObject;

    const-string v5, "debug_signals"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    invoke-interface {v0, p0, v9}, Lcom/google/android/gms/internal/ads/Tg;->j6(Lcom/google/android/gms/internal/ads/Kg;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ka;

    move-result-object v0

    if-nez v0, :cond_1bf

    const-string v0, "Failed to retrieve ad assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    goto :goto_1d8

    :cond_1bf
    new-instance v14, Lcom/google/android/gms/internal/ads/ma;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v4, v14

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/ma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/dh;Lcom/google/android/gms/internal/ads/ix;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    invoke-interface {v0, v14}, Lcom/google/android/gms/internal/ads/ka;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_1d9

    :cond_1d8
    :goto_1d8
    move-object v0, v2

    :goto_1d9
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/aa;

    if-eqz v4, :cond_1ec

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/aa;

    new-instance v5, Lcom/google/android/gms/internal/ads/Pg;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/ads/Pg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/aa;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    const-string v6, "/nativeAdCustomClick"

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_1ec
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_1f9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14f .. :try_end_1f9} :catch_20b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14f .. :try_end_1f9} :catch_209
    .catch Ljava/lang/InterruptedException; {:try_start_14f .. :try_end_1f9} :catch_207
    .catch Lorg/json/JSONException; {:try_start_14f .. :try_end_1f9} :catch_205
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14f .. :try_end_1f9} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_1f9} :catch_1fa

    return-object v0

    :catch_1fa
    move-exception v0

    const-string v3, "Error occured while doing native ads initialization."

    goto :goto_201

    :catch_1fe
    move-exception v0

    const-string v3, "Timeout when loading native ad."

    :goto_201
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20f

    :catch_205
    move-exception v0

    goto :goto_20c

    :catch_207
    move-exception v0

    goto :goto_20c

    :catch_209
    move-exception v0

    goto :goto_20c

    :catch_20b
    move-exception v0

    :goto_20c
    const-string v3, "Malformed native JSON response."

    goto :goto_201

    :goto_20f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    if-nez v0, :cond_216

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_216
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;
    .registers 53

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget v0, v1, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    const/4 v3, -0x2

    if-nez p1, :cond_f

    if-ne v0, v3, :cond_f

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_10

    :cond_f
    move v8, v0

    :goto_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_94

    if-eq v8, v3, :cond_17

    const/4 v0, 0x0

    move-object/from16 v32, v0

    goto :goto_19

    :cond_17
    move-object/from16 v32, p1

    :goto_19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v49, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v4, v49

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    iget v11, v3, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v23, v2

    move-object v2, v7

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v24, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v26, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-wide/from16 v28, v6

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v30, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Kg;->J0:Lorg/json/JSONObject;

    move-object/from16 v31, v6

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v36, v6

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v37, v6

    const/16 v38, 0x0

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v39, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    move-object/from16 v40, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v41, v6

    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v42, v6

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v43, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v45, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v46, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    move-object/from16 v47, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v48, v0

    move/from16 v44, p2

    move-object v7, v2

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v48}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v49

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0
.end method

.method static synthetic j6(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/C;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lb;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    :catch_10
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to call onCustomClick for asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->j6()Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    return-object v0
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 14

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, "native-omid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v8, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/a;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v9

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v10, p2, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Qm;->FH(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Qm;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/Mg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Mg;-><init>(Lcom/google/android/gms/internal/ads/Qm;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Hm;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_30

    :cond_d
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;

    move-result-object v5

    new-instance p3, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Wg;

    const/4 v6, 0x1

    move-object v4, v1

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Wg;-><init>(Lcom/google/android/gms/internal/ads/Ug;ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p3

    :cond_30
    :goto_30
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/P;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "attribution"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "text_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v0, "bg_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v0, :cond_4c

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4c

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->v5:I

    move v13, v0

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x1

    const/4 v13, 0x1

    :goto_4e
    const-string v0, "allow_pub_rendering"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v15, 0x0

    if-eqz v2, :cond_6e

    const-string v2, "images"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_77

    :cond_6e
    const-string v2, "image"

    invoke-virtual {v10, v1, v2, v15, v15}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_77
    new-instance v5, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/Hm;

    new-instance v15, Lcom/google/android/gms/internal/ads/Sg;

    invoke-direct {v15, v2, v1, v5, v0}, Lcom/google/android/gms/internal/ads/Sg;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/ads/Rm;Ljava/util/List;)V

    move-object/from16 p1, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v4, v15, v0}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p1

    goto :goto_89

    :cond_a4
    new-instance v15, Lcom/google/android/gms/internal/ads/Qg;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v8

    move-object v9, v5

    move v5, v7

    move v6, v12

    move v7, v11

    move v8, v13

    move-object v11, v9

    move v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/Qg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-static {v11, v15, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v1, "vast_xml"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string p1, "Required field \'vast_xml\' is missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "instream"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v1, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/Vg;

    invoke-direct {v3, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/Vg;-><init>(Lcom/google/android/gms/internal/ads/Ug;ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_7

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_b
    if-nez p1, :cond_12

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_34

    :cond_13
    if-eqz p5, :cond_1a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    goto :goto_1b

    :cond_1a
    const/4 p5, 0x1

    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p5, :cond_33

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_29

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_29
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    return-object p2

    :cond_34
    :goto_34
    invoke-virtual {p0, p3, p3}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    return-object p2
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "require"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_12

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method public final j6(IZ)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_5
    return-void
.end method
