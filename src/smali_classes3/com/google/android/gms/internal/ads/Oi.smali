.class public final Lcom/google/android/gms/internal/ads/Oi;
.super Lcom/google/android/gms/internal/ads/Qi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private FH:Landroid/content/SharedPreferences;

.field private final Hw:Lcom/google/android/gms/internal/ads/Ud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ud<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ud;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/Ud<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qi;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Oi;->j6:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Oi;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Oi;->Hw:Lcom/google/android/gms/internal/ads/Ud;

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/Hm;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oi;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Oi;->FH:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit v0

    goto :goto_15

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Oi;->DW:Landroid/content/Context;

    const-string v2, "google_ads_flags_meta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Oi;->FH:Landroid/content/SharedPreferences;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_a8

    goto :goto_7

    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oi;->FH:Landroid/content/SharedPreferences;

    const-string v1, "js_last_update"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->sv:Lcom/google/android/gms/internal/ads/e;

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gez v5, :cond_42

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    return-object v0

    :cond_42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_47
    const-string v1, "js"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbi;->DW()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->HT:Lcom/google/android/gms/internal/ads/e;

    const-string v2, "mf"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cl"

    const-string v2, "221522000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rc"

    const-string v2, "dev"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rollup"

    const-string v2, "HEAD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dynamite_version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Oi;->DW:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "container_version"

    const v2, 0xbdfcc1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_8b} :catch_9d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Oi;->Hw:Lcom/google/android/gms/internal/ads/Ud;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Ud;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Pi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Pi;-><init>(Lcom/google/android/gms/internal/ads/Oi;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0

    :catch_9d
    move-exception v0

    const-string v1, "Unable to populate SDK Core Constants parameters."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    return-object v0

    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    goto :goto_ac

    :goto_ab
    throw v1

    :goto_ac
    goto :goto_ab
.end method

.method final synthetic j6(Lorg/json/JSONObject;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oi;->DW:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;ILorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Oi;->FH:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method
