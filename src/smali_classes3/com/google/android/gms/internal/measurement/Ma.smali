.class public final Lcom/google/android/gms/internal/measurement/Ma;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ya;


# static fields
.field static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/Ma;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Landroid/content/SharedPreferences;

.field private final FH:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final Hw:Ljava/lang/Object;

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/xa;",
            ">;"
        }
    .end annotation
.end field

.field private volatile v5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ma;->j6:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/Na;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Na;-><init>(Lcom/google/android/gms/internal/measurement/Ma;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ma;->FH:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/Ma;->Hw:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/Ma;->Zo:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ma;->DW:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Ma;
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sa;->j6()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "direct_boot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/sa;->j6(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    const-class v0, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-enter v0

    :try_start_1b
    sget-object v0, Lcom/google/android/gms/internal/measurement/Ma;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/Ma;

    if-nez v1, :cond_4f

    new-instance v1, Lcom/google/android/gms/internal/measurement/Ma;

    const-string v2, "direct_boot:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sa;->j6()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_3a
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_49

    :cond_45
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_49
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/Ma;-><init>(Landroid/content/SharedPreferences;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    const-class p0, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit p0

    return-object v1

    :catchall_53
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_53

    throw p0
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ma;->v5:Ljava/util/Map;

    if-nez v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Ma;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ma;->v5:Ljava/util/Map;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ma;->DW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ma;->v5:Ljava/util/Map;

    :cond_13
    monitor-exit v1

    goto :goto_18

    :catchall_15
    move-exception p1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    :goto_18
    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic j6(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Ma;->Hw:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Ma;->v5:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Fa;->FH()V

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    monitor-enter p0

    :try_start_b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Ma;->Zo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/xa;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/xa;->j6()V

    goto :goto_11

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p1

    :catchall_26
    move-exception p2

    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    goto :goto_2a

    :goto_29
    throw p2

    :goto_2a
    goto :goto_29
.end method
