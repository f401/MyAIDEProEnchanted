.class public Lorg/codehaus/groovy/tools/RootLoader;
.super Ljava/net/URLClassLoader;


# instance fields
.field private j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private j6(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addURL(Ljava/net/URL;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    if-eqz v0, :cond_9

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/codehaus/groovy/tools/RootLoader;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_28

    if-eqz v0, :cond_15

    monitor-exit p0

    return-object v0

    :cond_15
    :try_start_15
    invoke-direct {p0, p1}, Lorg/codehaus/groovy/tools/RootLoader;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_19} :catch_1a
    .catchall {:try_start_15 .. :try_end_19} :catchall_28

    goto :goto_1b

    :catch_1a
    move-exception v1

    :goto_1b
    if-nez v0, :cond_21

    :try_start_1d
    invoke-super {p0, p1, p2}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    :cond_21
    if-eqz p2, :cond_26

    invoke-virtual {p0, v0}, Ljava/net/URLClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
