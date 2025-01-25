.class public Lsun/misc/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static releaseLoader(Ljava/net/URLClassLoader;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 76
    if-eqz p1, :cond_a

    .line 77
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 80
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classLoader = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedSecrets.getJavaNetAccess()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaNetAccess()Lsun/misc/JavaNetAccess;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaNetAccess()Lsun/misc/JavaNetAccess;

    move-result-object v0

    .line 83
    invoke-interface {v0, p0}, Lsun/misc/JavaNetAccess;->getURLClassPath(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v3

    .line 84
    iget-object v4, v3, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 85
    iget-object v1, v3, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    .line 86
    iget-object v5, v3, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    .line 96
    monitor-enter v1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_a1

    .line 97
    :try_start_49
    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 98
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_b5

    .line 104
    :try_start_4d
    monitor-enter v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_a1

    .line 105
    :try_start_4e
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 106
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_b2

    .line 131
    :try_start_52
    monitor-enter v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_a1

    .line 132
    :try_start_53
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_57

    .line 139
    instance-of v1, v0, Lsun/misc/URLClassPath$JarLoader;

    if-eqz v1, :cond_57

    .line 140
    check-cast v0, Lsun/misc/URLClassPath$JarLoader;

    .line 141
    invoke-virtual {v0}, Lsun/misc/URLClassPath$JarLoader;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_9e

    move-result-object v1

    .line 143
    if-eqz v1, :cond_57

    .line 144
    :try_start_6f
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    .line 145
    if-eqz p1, :cond_57

    .line 146
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7b} :catch_7c
    .catchall {:try_start_6f .. :try_end_7b} :catchall_9e

    goto :goto_57

    .line 149
    :catch_7c
    move-exception v0

    .line 155
    if-nez v1, :cond_a8

    const-string v1, "filename not available"

    .line 156
    :goto_81
    :try_start_81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing JAR file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 159
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 168
    :catchall_9e
    move-exception v0

    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_81 .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    .line 169
    :catchall_a1
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_a8
    :try_start_a8
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_81

    .line 167
    :cond_ad
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 168
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_9e

    .line 171
    return-object v2

    .line 106
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v5
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_a1

    .line 98
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_a1
.end method

.method public static releaseLoader(Ljava/net/URLClassLoader;)V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/misc/ClassLoaderUtil;->releaseLoader(Ljava/net/URLClassLoader;Ljava/util/List;)Ljava/util/List;

    .line 54
    return-void
.end method
