.class public final Lcom/google/android/gms/internal/ads/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/os/ConditionVariable;

.field private volatile FH:Z

.field private volatile Hw:Z

.field private VH:Lorg/json/JSONObject;

.field private Zo:Landroid/content/Context;

.field private final j6:Ljava/lang/Object;

.field private v5:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m;->j6:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m;->DW:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/m;->VH:Lorg/json/JSONObject;

    return-void
.end method

.method private final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->Zo:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/n;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/n;-><init>(Lcom/google/android/gms/internal/ads/m;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ql;->j6(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m;->VH:Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/m;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/e<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->DW:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    if-eqz v1, :cond_13

    monitor-exit v0

    goto :goto_1e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    if-nez v1, :cond_32

    goto :goto_59

    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_5f

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->DW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->VH:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->VH:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/e;->j6(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->Zo:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/o;-><init>(Lcom/google/android/gms/internal/ads/m;Lcom/google/android/gms/internal/ads/e;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ql;->j6(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method final synthetic j6()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/m;->Zo:Landroid/content/Context;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_66

    const/4 v1, 0x0

    :try_start_24
    invoke-static {p1}, Lcom/google/android/gms/common/f;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_5d

    if-nez v3, :cond_33

    goto :goto_34

    :cond_33
    move-object p1, v3

    :goto_34
    if-nez p1, :cond_3f

    :try_start_36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/m;->DW:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_66

    return-void

    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->FH()Lcom/google/android/gms/internal/ads/l;

    const-string v3, "google_ads_flags"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m;->v5:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_4f

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_4f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/m;->DW()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/m;->FH:Z
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_5d

    :try_start_54
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/m;->DW:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/m;->Hw:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m;->DW:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw p1

    :catchall_66
    move-exception p1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "flag_configuration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/m;->DW()V

    :cond_b
    return-void
.end method
