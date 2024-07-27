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
        "Ljava/util/concurrent/Callable",
        "<",
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 9

    const/4 v1, 0x0

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

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/Mo;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->DY:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static DW(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final DW()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kg;)Lcom/google/android/gms/ads/internal/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    return-object v0
.end method

.method private final j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v0, "is_transparent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/V;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v8, v1, v4, v5}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->FH:Lcom/google/android/gms/internal/ads/zzazs;

    new-instance v1, Lcom/google/android/gms/internal/ads/Rg;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Rg;-><init>(Lcom/google/android/gms/internal/ads/Kg;ZDZLjava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzazs;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cl;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    goto :goto_1
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
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

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Exception occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "InterruptedException occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;
    .registers 11

    new-instance v0, Lcom/google/android/gms/internal/ads/Ug;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)V

    return-object v0
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/kk;
    .registers 16

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/C;->s0()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ads"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dh;->DW(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    sget-wide v4, Lcom/google/android/gms/internal/ads/Kg;->j6:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "json"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ads"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_7

    const-string v2, "enable_omid"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    move v14, v2

    :goto_2
    if-nez v14, :cond_8

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v2

    move-object v11, v2

    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v7, :cond_b

    :cond_2
    :goto_4
    move-object v4, v13

    :goto_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    if-nez v7, :cond_15

    :cond_3
    :goto_6
    move-object v3, v13

    :goto_7
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/aa;

    if-eqz v2, :cond_4

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/ads/aa;

    move-object v2, v0

    new-instance v4, Lcom/google/android/gms/internal/ads/Pg;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/internal/ads/Pg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/aa;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    const-string v5, "/nativeAdCustomClick"

    invoke-interface {v2, v5, v4}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_4
    invoke-direct {p0, v3, v14}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/Mo;)V

    :goto_8
    return-object v2

    :cond_5
    move-object v2, v13

    goto :goto_0

    :cond_6
    move-object v7, v13

    goto :goto_1

    :cond_7
    move v14, v12

    goto :goto_2

    :cond_8
    const-string v2, "omid_settings"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_9
    const-string v3, "omid_html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/Lg;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/internal/ads/Lg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_b
    const-string v2, "template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "instream"

    const-string v3, "type"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzacp;->DW:Z

    move v4, v2

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    move v3, v2

    :goto_a
    if-eqz v6, :cond_e

    new-instance v2, Lcom/google/android/gms/internal/ads/Jg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Jg;-><init>()V

    move-object v4, v2

    goto/16 :goto_5

    :cond_c
    move v4, v12

    goto :goto_9

    :cond_d
    move v3, v12

    goto :goto_a

    :cond_e
    const-string v2, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/ads/eh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    invoke-direct {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/eh;-><init>(ZZZ)V

    move-object v4, v2

    goto/16 :goto_5

    :cond_f
    const-string v2, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/google/android/gms/internal/ads/fh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    invoke-direct {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/fh;-><init>(ZZZ)V

    move-object v4, v2

    goto/16 :goto_5

    :cond_10
    const-string v2, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/ads/Ng;

    invoke-direct {v6, p0, v3, v2}, Lcom/google/android/gms/internal/ads/Ng;-><init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v8, Lcom/google/android/gms/internal/ads/Kg;->j6:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v2}, Lcom/google/android/gms/internal/ads/Rm;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/gh;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/gh;-><init>(Z)V

    move-object v4, v2

    goto/16 :goto_5

    :cond_11
    const-string v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "No handler for custom template: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_4

    :catch_0
    move-exception v2

    :goto_c
    const-string v3, "Malformed native JSON response."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    if-nez v2, :cond_12

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_12
    invoke-direct {p0, v13, v12}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v2

    goto/16 :goto_8

    :cond_13
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "No handler for custom template: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :catch_1
    move-exception v2

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    goto/16 :goto_4

    :catch_2
    move-exception v2

    goto :goto_c

    :cond_15
    const-string v2, "tracking_urls_and_actions"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v2, "impression_tracking_urls"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_16

    move-object v2, v13

    :goto_e
    if-nez v2, :cond_17

    move-object v2, v13

    :goto_f
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    const-string v2, "active_view"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->J0:Lorg/json/JSONObject;

    const-string v2, "debug_signals"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    const-string v2, "omid_settings"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    invoke-interface {v4, p0, v7}, Lcom/google/android/gms/internal/ads/Tg;->j6(Lcom/google/android/gms/internal/ads/Kg;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ka;

    move-result-object v8

    if-nez v8, :cond_18

    const-string v2, "Failed to retrieve ad assets."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_3
    move-exception v2

    goto :goto_c

    :cond_16
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    move v2, v12

    :goto_10
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_19

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_17
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_f

    :cond_18
    new-instance v2, Lcom/google/android/gms/internal/ads/ma;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->Zo:Lcom/google/android/gms/internal/ads/dh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/ma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/dh;Lcom/google/android/gms/internal/ads/ix;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/ka;->j6(Lcom/google/android/gms/internal/ads/ia;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v8

    goto/16 :goto_7

    :catch_4
    move-exception v2

    const-string v3, "Error occured while doing native ads initialization."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_5
    move-exception v2

    const-string v3, "Timeout when loading native ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_19
    move-object v2, v3

    goto :goto_e
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/kk;
    .registers 50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v42, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/kk;

    const/4 v4, 0x0

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    move-object/from16 v0, v42

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Kg;->we:Ljava/util/List;

    move-object/from16 v0, v42

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    move-object/from16 v0, v42

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v21, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Kg;->J0:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v34, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Kg;->J8:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v41, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Kg;->Ws:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v0

    move/from16 v42, p2

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method static synthetic j6(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Kg;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final j6(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->VH:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Kg;->tp:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kg;->EQ:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/C;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lb;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, "native-omid"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/a;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move v4, v3

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Qm;->FH(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Qm;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/Mg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/Mg;-><init>(Lcom/google/android/gms/internal/ads/Qm;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/Mo;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Hm;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v6, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/Wg;

    const/4 v2, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Wg;-><init>(Lcom/google/android/gms/internal/ads/Ug;ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/P;",
            ">;"
        }
    .end annotation

    const-string v1, "attribution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "text_size"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "text_color"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const-string v1, "bg_color"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Kg;->DW(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string v1, "animation_ms"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "presentation_ms"

    const/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzacp;->v5:I

    :goto_1
    const-string v1, "allow_pub_rendering"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "images"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "images"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    :goto_2
    new-instance v15, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Hm;

    new-instance v6, Lcom/google/android/gms/internal/ads/Sg;

    invoke-direct {v6, v4, v3, v15, v2}, Lcom/google/android/gms/internal/ads/Sg;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/ads/Rm;Ljava/util/List;)V

    sget-object v16, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    move-object/from16 v0, v16

    invoke-interface {v1, v6, v0}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "image"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/Qg;

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v14

    move-object v5, v13

    move v6, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/Qg;-><init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vast_xml"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Required field \'vast_xml\' is missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kg;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kg;->v5:Lcom/google/android/gms/internal/ads/ix;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kg;->u7:Lcom/google/android/gms/internal/ads/D;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kg;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Kg;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)Lcom/google/android/gms/internal/ads/Ug;

    move-result-object v2

    const-string v0, "instream"

    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/gms/internal/ads/Vg;

    invoke-direct {v5, v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/Vg;-><init>(Lcom/google/android/gms/internal/ads/Ug;ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Hm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4, v4}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    if-eqz p5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    move v3, v4

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-direct {p0, v1, v4, p4}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public final j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method

.method public final j6(IZ)V
    .registers 3

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kg;->j6(I)V

    :cond_0
    return-void
.end method
