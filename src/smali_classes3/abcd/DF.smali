.class Labcd/DF;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Labcd/GF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/DF;->j6:Ljava/util/Map;

    return-void
.end method

.method static j6(Ljava/util/Locale;Ljava/lang/Class;)Labcd/GF;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/GF;",
            ">(",
            "Ljava/util/Locale;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Labcd/DF;

    monitor-enter v0

    :try_start_3
    sget-object v0, Labcd/DF;->j6:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/GF;

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/GF;

    invoke-virtual {v0, p0}, Labcd/GF;->j6(Ljava/util/Locale;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_29} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_29} :catch_2f
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    :cond_29
    const-class p0, Labcd/DF;

    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception p0

    goto :goto_3d

    :catch_2f
    move-exception p0

    :try_start_30
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2d

    :goto_3d
    const-class p1, Labcd/DF;

    monitor-exit p1

    throw p0
.end method
