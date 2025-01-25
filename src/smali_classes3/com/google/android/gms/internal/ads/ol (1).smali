.class public final Lcom/google/android/gms/internal/ads/ol;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Z

.field private final j6:Ljava/lang/Object;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->FH:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ol;->Hw:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->v5:Ljava/lang/String;

    return-void
.end method

.method private final DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Dm:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->Hw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_25

    const-string p1, "Not linked for in app preview."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return p3

    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_29
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gct"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ol;->v5:Ljava/lang/String;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3c} :catch_47

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ol;->FH:Ljava/lang/String;

    monitor-exit p2

    const/4 p1, 0x1

    return p1

    :catchall_44
    move-exception p1

    monitor-exit p2
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw p1

    :catch_47
    move-exception p1

    const-string p2, "Fail to get in app preview response json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method private final FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "linkedDeviceId"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "adSlotPath"

    invoke-virtual {p2, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "afmaVersion"

    invoke-virtual {p2, p1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private final FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->re:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->Hw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_25

    const-string p1, "Not linked for debug signals."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return p3

    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_29
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "debug_mode"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_34} :catch_44

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3d
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ol;->Hw:Z

    monitor-exit p2

    return p1

    :catchall_41
    move-exception p1

    monitor-exit p2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw p1

    :catch_44
    move-exception p1

    const-string p2, "Fail to get debug mode response json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method private static Hw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzazs;->j6(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_1c
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->df:Lcom/google/android/gms/internal/ads/e;

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

    check-cast v0, Ljava/lang/String;
    :try_end_35
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1c .. :try_end_35} :catch_65
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_35} :catch_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_35} :catch_36

    return-object v0

    :catch_36
    move-exception p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Error retriving a response from: "

    if-eqz p2, :cond_48

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_48
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4d
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :catch_51
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Interrupted while retriving a response from: "

    if-eqz v1, :cond_5f

    goto :goto_72

    :cond_5f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7c

    :catch_65
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Timeout while retriving a response from: "

    if-eqz v1, :cond_77

    :goto_72
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :cond_77
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_82
    const/4 p0, 0x0

    return-object p0
.end method

.method private final j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "debug_signals_id.txt"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->j6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "debug_signals_id.txt"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ol;->DW:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 13

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_a

    const-string p1, "Can not create dialog without Activity Context"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/pl;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/pl;-><init>(Lcom/google/android/gms/internal/ads/ol;Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final v5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->oC:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->TE:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4, p2}, Lcom/google/android/gms/internal/ads/ol;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v0, "debugData"

    invoke-virtual {p4, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final DW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ol;->Hw:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final j6()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ol;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ol;->FH:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const-string p2, "In-app preview failed to load because of a system error. Please try again later."

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_d
    const-string v0, "2"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ol;->v5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const-string p2, "Creative is not pushed for this device."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const-string p2, "There was no creative pushed from DFP to the device."

    invoke-direct {p0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_23
    const-string v0, "1"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ol;->v5:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "The app is not linked for creative preview."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->v5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    const-string p2, "0"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ol;->v5:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    const-string p2, "Device is linked for in app preview."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const-string p2, "The device is successfully linked for creative preview."

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_4a
    return-void
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ol;->DW()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v0, :cond_15

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/ol;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string p2, "Device is linked for debug signals."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    const-string p4, "The device is successfully linked for troubleshooting."

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ol;->v5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
