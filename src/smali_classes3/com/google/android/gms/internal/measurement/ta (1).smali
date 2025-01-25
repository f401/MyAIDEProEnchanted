.class public final Lcom/google/android/gms/internal/measurement/ta;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ya;


# static fields
.field private static final DW:[Ljava/lang/String;

.field static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/ta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FH:Landroid/content/ContentResolver;

.field private final Hw:Landroid/net/Uri;

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/xa;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ta;->j6:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/ta;->DW:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->v5:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->VH:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ta;->FH:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ta;->Hw:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/internal/measurement/va;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/va;-><init>(Lcom/google/android/gms/internal/measurement/ta;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final Hw()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ua;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ua;-><init>(Lcom/google/android/gms/internal/measurement/ta;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/za;->j6(Lcom/google/android/gms/internal/measurement/Aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    const-string v0, "ConfigurationContentLoader"

    const-string v1, "PhenotypeFlag unable to load ContentProvider, using default values"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static j6(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/ta;
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/measurement/ta;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ta;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ta;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    if-nez v1, :cond_1a

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/measurement/ta;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/measurement/ta;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_19
    .catchall {:try_start_d .. :try_end_12} :catchall_1e

    :try_start_12
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    goto :goto_17

    :catch_16
    move-exception p0

    :goto_17
    move-object v1, v2

    goto :goto_1a

    :catch_19
    move-exception p0

    :cond_1a
    :goto_1a
    :try_start_1a
    const-class p0, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit p0

    return-object v1

    :catchall_1e
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_1e

    throw p0
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->v5:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ta;->Zo:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Fa;->FH()V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/xa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/xa;->j6()V

    goto :goto_11

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    goto :goto_2a

    :goto_29
    throw v1

    :goto_2a
    goto :goto_29
.end method

.method final synthetic FH()Ljava/util/Map;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->FH:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ta;->Hw:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ta;->DW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_14
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_22
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2c

    :try_start_26
    new-instance v2, Labcd/k;

    invoke-direct {v2, v1}, Labcd/k;-><init>(I)V

    goto :goto_33

    :cond_2c
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    :goto_33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_4b

    goto :goto_33

    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_4b
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :goto_50
    throw v1

    :goto_51
    goto :goto_50
.end method

.method public final synthetic j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ta;->j6()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final j6()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->Zo:Ljava/util/Map;

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ta;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->Zo:Ljava/util/Map;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ta;->Hw()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ta;->Zo:Ljava/util/Map;

    :cond_11
    monitor-exit v1

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :goto_16
    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
