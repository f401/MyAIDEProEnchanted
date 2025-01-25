.class public Lsun/misc/URLClassPath;
.super Ljava/lang/Object;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/URLClassPath$FileLoader;,
        Lsun/misc/URLClassPath$JarLoader;,
        Lsun/misc/URLClassPath$Loader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final JAVA_VERSION:Ljava/lang/String;

.field static final USER_AGENT_JAVA_VERSION:Ljava/lang/String; = "UA-Java-Version"


# instance fields
.field private jarHandler:Ljava/net/URLStreamHandler;

.field lmap:Ljava/util/HashMap;

.field loaders:Ljava/util/ArrayList;

.field private path:Ljava/util/ArrayList;

.field urls:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-string v0, "1.6"

    sput-object v0, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    .line 80
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .registers 3

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    .line 119
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V
    .registers 6

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    .line 108
    const/4 v0, 0x0

    :goto_20
    array-length v1, p1

    if-ge v0, v1, :cond_2d

    .line 109
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 111
    :cond_2d
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V

    .line 112
    if-eqz p2, :cond_3a

    .line 113
    const-string v0, "jar"

    invoke-interface {p2, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    .line 115
    :cond_3a
    return-void
.end method

.method static synthetic access$000(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;
    .registers 2

    .line 69
    iget-object v0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 69
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    return v0
.end method

.method static check(Ljava/net/URL;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    .line 413
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_14

    .line 415
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v2

    .line 417
    if-eqz v2, :cond_14

    .line 419
    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_14} :catch_15

    .line 441
    :cond_14
    :goto_14
    return-void

    .line 420
    :catch_15
    move-exception v3

    .line 423
    instance-of v4, v2, Ljava/io/FilePermission;

    if-eqz v4, :cond_2e

    .line 424
    invoke-virtual {v2}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string v5, "read"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2e

    .line 425
    invoke-virtual {v2}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_14

    .line 426
    :cond_2e
    instance-of v4, v2, Ljava/net/SocketPermission;

    if-eqz v4, :cond_54

    .line 428
    invoke-virtual {v2}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v2

    const-string v4, "connect"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_54

    .line 429
    instance-of v2, v0, Ljava/net/JarURLConnection;

    if-eqz v2, :cond_48

    .line 431
    check-cast v0, Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object p0

    .line 433
    :cond_48
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 433
    invoke-virtual {v1, v0, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_14

    .line 436
    :cond_54
    throw v3
.end method

.method private getLoader(I)Lsun/misc/URLClassPath$Loader;
    .registers 5

    monitor-enter p0

    .line 289
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_49

    .line 292
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_43

    .line 293
    :try_start_e
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_53

    move-result v0

    if-eqz v0, :cond_1a

    .line 294
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_46

    monitor-exit p0

    const/4 v0, 0x0

    .line 323
    :goto_19
    return-object v0

    .line 296
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 298
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_53

    .line 302
    :try_start_23
    iget-object v1, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_43

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :try_start_2b
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lsun/misc/URLClassPath$Loader;->getClassPath()[Ljava/net/URL;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_38

    .line 313
    invoke-direct {p0, v2}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_55
    .catchall {:try_start_2b .. :try_end_38} :catchall_43

    .line 318
    :cond_38
    :try_start_38
    iget-object v2, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    goto :goto_1

    .line 288
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :catchall_46
    move-exception v0

    :goto_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_53

    :try_start_48
    throw v0

    .line 323
    :cond_49
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_43

    monitor-exit p0

    goto :goto_19

    .line 298
    :catchall_53
    move-exception v0

    goto :goto_47

    .line 315
    :catch_55
    move-exception v0

    goto :goto_1
.end method

.method private getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    :try_start_0
    new-instance v0, Lsun/misc/URLClassPath$3;

    invoke-direct {v0, p0, p1}, Lsun/misc/URLClassPath$3;-><init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V

    .line 332
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 331
    return-object v0

    .line 346
    :catch_c
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public static pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .registers 8

    const/4 v1, 0x0

    .line 369
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v5, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/net/URL;

    move v0, v1

    .line 372
    :goto_f
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 373
    new-instance v4, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    :try_start_1e
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_30

    .line 380
    :goto_27
    :try_start_27
    invoke-static {v2}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_3d

    .line 382
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 376
    :catch_30
    move-exception v2

    move-object v2, v4

    goto :goto_27

    .line 384
    :cond_33
    array-length v2, v3

    if-eq v2, v0, :cond_3f

    .line 385
    new-array v2, v0, [Ljava/net/URL;

    .line 386
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 387
    :goto_3c
    return-object v0

    .line 381
    :catch_3d
    move-exception v2

    goto :goto_2d

    :cond_3f
    move-object v0, v3

    goto :goto_3c
.end method

.method private push([Ljava/net/URL;)V
    .registers 6

    .line 355
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1

    .line 356
    :try_start_3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 357
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 359
    :cond_12
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public addURL(Ljava/net/URL;)V
    .registers 5

    .line 126
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1

    .line 127
    :try_start_3
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    monitor-exit v1

    .line 133
    :goto_c
    return-void

    .line 130
    :cond_d
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v1

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public checkURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 3

    .line 399
    :try_start_0
    invoke-static {p1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 402
    :goto_3
    return-object p1

    .line 400
    :catch_4
    move-exception v0

    .line 401
    const/4 p1, 0x0

    goto :goto_3
.end method

.method public findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5

    .line 155
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 156
    invoke-virtual {v1, p1, p2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_f

    move-object v0, v1

    .line 161
    :goto_e
    return-object v0

    .line 155
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4

    .line 196
    new-instance v0, Lsun/misc/URLClassPath$1;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$1;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 6

    .line 173
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 174
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URLClassPath.getResource(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 179
    invoke-virtual {v1, p1, p2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_2e

    move-object v0, v1

    .line 184
    :goto_2d
    return-object v0

    .line 178
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 184
    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4

    .line 243
    new-instance v0, Lsun/misc/URLClassPath$2;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$2;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getURLs()[Ljava/net/URL;
    .registers 4

    .line 139
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1

    .line 140
    :try_start_3
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    monitor-exit v1

    return-object v0

    .line 141
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
