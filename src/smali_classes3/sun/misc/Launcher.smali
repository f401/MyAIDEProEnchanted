.class public Lsun/misc/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/Launcher$AppClassLoader;,
        Lsun/misc/Launcher$ExtClassLoader;,
        Lsun/misc/Launcher$Factory;
    }
.end annotation


# static fields
.field private static factory:Ljava/net/URLStreamHandlerFactory;

.field private static fileHandler:Ljava/net/URLStreamHandler;

.field private static launcher:Lsun/misc/Launcher;


# instance fields
.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lsun/misc/Launcher$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/misc/Launcher$Factory;-><init>(Lsun/misc/Launcher$1;)V

    sput-object v0, Lsun/misc/Launcher;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 60
    new-instance v0, Lsun/misc/Launcher;

    invoke-direct {v0}, Lsun/misc/Launcher;-><init>()V

    sput-object v0, Lsun/misc/Launcher;->launcher:Lsun/misc/Launcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    invoke-static {}, Lsun/misc/Launcher$ExtClassLoader;->getExtClassLoader()Lsun/misc/Launcher$ExtClassLoader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 76
    :try_start_1
    invoke-static {v0}, Lsun/misc/Launcher$AppClassLoader;->getAppClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Launcher;->loader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lsun/misc/Launcher;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    const-string v0, "java.security.manager"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_1

    .line 93
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 104
    :goto_0
    if-eqz v0, :cond_3

    .line 105
    invoke-static {v0}, Ljava/lang/System;->setSecurityManager(Ljava/lang/SecurityManager;)V

    .line 111
    :cond_1
    return-void

    .line 97
    :cond_2
    :try_start_2
    iget-object v0, p0, Lsun/misc/Launcher;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/SecurityManager;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 99
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 98
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create SecurityManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :catch_4
    move-exception v0

    .line 82
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Could not create application class loader"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catch_5
    move-exception v0

    .line 74
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Could not create extension class loader"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/net/URLStreamHandlerFactory;
    .registers 1

    .line 58
    sget-object v0, Lsun/misc/Launcher;->factory:Ljava/net/URLStreamHandlerFactory;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 58
    invoke-static {p0}, Lsun/misc/Launcher;->getClassPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([Ljava/io/File;)[Ljava/net/URL;
    .registers 2

    .line 58
    invoke-static {p0}, Lsun/misc/Launcher;->pathToURLs([Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getBootstrapClassPath()Lsun/misc/URLClassPath;
    .registers 3

    .line 348
    new-instance v0, Lsun/misc/Launcher$1;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lsun/misc/Launcher$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 374
    new-instance v1, Lsun/misc/URLClassPath;

    sget-object v2, Lsun/misc/Launcher;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-direct {v1, v0, v2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    return-object v1
.end method

.method private static getClassPath(Ljava/lang/String;)[Ljava/io/File;
    .registers 9

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 394
    if-eqz p0, :cond_4

    .line 395
    const/4 v0, 0x1

    move v1, v2

    .line 398
    :goto_0
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v7, :cond_0

    .line 399
    add-int/lit8 v0, v0, 0x1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    new-array v4, v0, [Ljava/io/File;

    move v1, v2

    move v3, v2

    .line 405
    :goto_1
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 406
    sub-int v6, v5, v1

    if-lez v6, :cond_1

    .line 407
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    .line 412
    :goto_2
    add-int/lit8 v1, v5, 0x1

    goto :goto_1

    .line 410
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v6, "."

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 415
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 416
    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v3

    move v1, v5

    .line 421
    :goto_3
    if-eq v1, v0, :cond_5

    .line 422
    new-array v0, v1, [Ljava/io/File;

    .line 423
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :goto_4
    return-object v0

    .line 418
    :cond_3
    add-int/lit8 v1, v3, 0x1

    new-instance v5, Ljava/io/File;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v3

    goto :goto_3

    .line 427
    :cond_4
    new-array v0, v2, [Ljava/io/File;

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_4
.end method

.method static getFileURL(Ljava/io/File;)Ljava/net/URL;
    .registers 2

    .line 440
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 444
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 445
    :catch_0
    move-exception v0

    .line 447
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 441
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLauncher()Lsun/misc/Launcher;
    .registers 1

    .line 63
    sget-object v0, Lsun/misc/Launcher;->launcher:Lsun/misc/Launcher;

    return-object v0
.end method

.method private static pathToURLs([Ljava/io/File;)[Ljava/net/URL;
    .registers 4

    .line 381
    array-length v0, p0

    new-array v1, v0, [Ljava/net/URL;

    .line 382
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 383
    aget-object v2, p0, v0

    invoke-static {v2}, Lsun/misc/Launcher;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    aput-object v2, v1, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 117
    iget-object v0, p0, Lsun/misc/Launcher;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method
