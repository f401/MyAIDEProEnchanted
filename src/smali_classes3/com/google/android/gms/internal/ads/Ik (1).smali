.class public final Lcom/google/android/gms/internal/ads/Ik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Hk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Z

.field private EQ:Ljava/lang/String;

.field private final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Lcom/google/android/gms/internal/ads/Hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Hm<",
            "*>;"
        }
    .end annotation
.end field

.field private J0:Ljava/lang/String;

.field private J8:J

.field private Mr:Lorg/json/JSONObject;

.field private QX:J

.field private U2:Z

.field private VH:Landroid/content/SharedPreferences$Editor;

.field private Ws:J

.field private XL:I

.field private Zo:Landroid/content/SharedPreferences;

.field private a8:Z

.field private aM:I

.field private gn:Z

.field private j3:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;

.field private tp:Ljava/lang/String;

.field private u7:Z

.field private v5:Lcom/google/android/gms/internal/ads/jF;

.field private we:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->FH:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->v5:Lcom/google/android/gms/internal/ads/jF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->gn:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    return-void
.end method

.method private final QX()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listener_registration_bundle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    const-string v2, "use_https"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_url_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_vertical_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "auto_collect_location"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_code"

    iget v3, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "never_pool_slots"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "app_settings_json"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_settings_last_update_ms"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "app_last_background_time_ms"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "request_in_session_count"

    iget v3, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "first_ad_req_time_ms"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "native_advanced_settings"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    if-eqz v2, :cond_7b

    const-string v3, "content_url_hashes"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    if-eqz v2, :cond_84

    const-string v3, "content_vertical_hashes"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    monitor-exit v1

    return-object v0

    :catchall_86
    move-exception v0

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_86

    throw v0
.end method

.method private final Ws()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->Hw:Lcom/google/android/gms/internal/ads/Hm;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->Hw:Lcom/google/android/gms/internal/ads/Hm;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_15} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_15} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_15} :catch_18
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    goto :goto_1b

    :catch_18
    move-exception v0

    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_21
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final j6(Landroid/os/Bundle;)V
    .registers 3

    sget-object p1, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    new-instance v0, Lcom/google/android/gms/internal/ads/Kk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Kk;-><init>(Lcom/google/android/gms/internal/ads/Ik;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/jF;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->DW:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ik;->v5()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ik;->FH()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object v1

    :cond_1a
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->yO:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d

    return-object v1

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_38

    monitor-exit v0

    return-object v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->v5:Lcom/google/android/gms/internal/ads/jF;

    if-nez v1, :cond_43

    new-instance v1, Lcom/google/android/gms/internal/ads/jF;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jF;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->v5:Lcom/google/android/gms/internal/ads/jF;

    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->v5:Lcom/google/android/gms/internal/ads/jF;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jF;->DW()V

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->v5:Lcom/google/android/gms/internal/ads/jF;

    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public final DW(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "version_code"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "version_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final DW(J)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    const-string v2, "first_ad_req_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "first_ad_req_time_ms"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_25

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final DW(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "auto_collect_location"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "auto_collect_location"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final EQ()Lorg/json/JSONObject;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final FH(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "content_url_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final FH()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final FH(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final Hw()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final Hw(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_30

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_30

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_21

    const-string v2, "content_url_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_url_hashes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_30
    :goto_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final Hw(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "content_vertical_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final J0()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final J8()J
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    monitor-exit v0

    return-wide v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final VH()Lcom/google/android/gms/internal/ads/ok;
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    new-instance v1, Lcom/google/android/gms/internal/ads/ok;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ok;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final Zo(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_25

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final Zo()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->gn:Z

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final gn()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final j6()V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1b

    const-string v2, "native_advanced_settings"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "native_advanced_settings"

    const-string v3, "{}"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public final j6(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "request_in_session_count"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_in_session_count"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final j6(J)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1e

    const-string v2, "app_last_background_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_last_background_time_ms"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method final synthetic j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/google/android/gms/common/util/o;->u7()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    if-nez p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->gn:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "use_https"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "content_url_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "content_url_hashes"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->tp:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "auto_collect_location"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->a8:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_hashes"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "version_code"

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ik;->aM:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_json"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Ws:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "request_in_session_count"

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ik;->XL:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string p2, "never_pool_slots"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->j3:Ljava/util/Set;
    :try_end_bf
    .catchall {:try_start_c .. :try_end_bf} :catchall_e0

    :try_start_bf
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ik;->Zo:Landroid/content/SharedPreferences;

    const-string v0, "native_advanced_settings"

    const-string v2, "{}"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_bf .. :try_end_d0} :catch_d1
    .catchall {:try_start_bf .. :try_end_d0} :catchall_e0

    goto :goto_d7

    :catch_d1
    move-exception p1

    :try_start_d2
    const-string p2, "Could not convert native advanced settings to json object"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->QX()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_e0
    move-exception p1

    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_d2 .. :try_end_e2} :catchall_e0

    throw p1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    new-instance p2, Lcom/google/android/gms/internal/ads/Jk;

    const-string p3, "admob"

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Jk;-><init>(Lcom/google/android/gms/internal/ads/Ik;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->Hw:Lcom/google/android/gms/internal/ads/Hm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->DW:Z

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Ik;->J8:J

    if-eqz p1, :cond_5c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_5c

    :cond_1b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->J0:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_32

    const-string v4, "app_settings_json"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    const-string v4, "app_settings_last_update_ms"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_32
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app_settings_json"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_settings_last_update_ms"

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->FH:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_4a

    :cond_5a
    monitor-exit v0

    return-void

    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_5e

    goto :goto_62

    :goto_61
    throw p1

    :goto_62
    goto :goto_61
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_45

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_27

    monitor-exit v0

    return-void

    :cond_27
    const-string v6, "template_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    const/4 v2, 0x1

    if-ne p3, v2, :cond_40

    const-string v2, "uses_media_view"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, p3, :cond_40

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_99

    return-void

    :cond_40
    move v2, v4

    goto :goto_45

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_45
    :goto_45
    :try_start_45
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_69} :catch_6a
    .catchall {:try_start_45 .. :try_end_69} :catchall_99

    goto :goto_70

    :catch_6a
    move-exception p1

    :try_start_6b
    const-string p2, "Could not update native advanced settings"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_84

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_84
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ik;->Mr:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_6b .. :try_end_9b} :catchall_99

    goto :goto_9d

    :goto_9c
    throw p1

    :goto_9d
    goto :goto_9c
.end method

.method public final j6(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ik;->u7:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1c

    const-string v2, "use_https"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->gn:Z

    if-nez v1, :cond_2d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "use_https"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final tp()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final u7()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->we:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final v5(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_30

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_30

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ik;->EQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_21

    const-string v2, "content_vertical_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ik;->VH:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_vertical_hashes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_30
    :goto_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final v5()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ik;->U2:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final we()J
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ik;->Ws()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ik;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ik;->QX:J

    monitor-exit v0

    return-wide v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method
