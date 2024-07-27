.class public Lsun/misc/ExtensionDependency;
.super Ljava/lang/Object;
.source "ExtensionDependency.java"


# static fields
.field static final DEBUG:Z

.field private static providers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/io/File;
    .registers 1

    .line 70
    invoke-static {}, Lsun/misc/ExtensionDependency;->getExtDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 70
    invoke-static {p0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lsun/misc/ExtensionDependency;Ljava/lang/Throwable;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300([Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lsun/misc/ExtensionDependency;->getExtFiles([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static addExtensionInstallationProvider(Lsun/misc/ExtensionInstallationProvider;)V
    .registers 3

    const-class v0, Lsun/misc/ExtensionDependency;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    .line 88
    :cond_0
    sget-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-class v0, Lsun/misc/ExtensionDependency;

    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    const-class v1, Lsun/misc/ExtensionDependency;

    monitor-exit v1

    throw v0
.end method

.method private addNewExtensionsToClassLoader(Lsun/misc/Launcher$ExtClassLoader;)Ljava/lang/Boolean;
    .registers 11

    const/4 v2, 0x0

    .line 513
    :try_start_0
    invoke-direct {p0}, Lsun/misc/ExtensionDependency;->getInstalledExtensions()[Ljava/io/File;

    move-result-object v5

    move v4, v2

    .line 514
    :goto_0
    array-length v0, v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v0, :cond_3

    .line 515
    aget-object v0, v5, v4

    .line 516
    :try_start_1
    new-instance v1, Lsun/misc/ExtensionDependency$4;

    invoke-direct {v1, p0, v0}, Lsun/misc/ExtensionDependency$4;-><init>(Lsun/misc/ExtensionDependency;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 527
    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p1}, Lsun/misc/Launcher$ExtClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    move v1, v2

    move v3, v2

    .line 530
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " looking for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 533
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 535
    const/4 v1, 0x1

    .line 536
    const-string v7, "Found !"

    invoke-static {v7}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 530
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 539
    :cond_1
    if-nez v1, :cond_2

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not Found ! adding to the classloader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v0}, Lsun/misc/Launcher$ExtClassLoader;->addExtURL(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 546
    :catch_1
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2
.end method

.method private checkExtensionExists(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 391
    new-instance v0, Lsun/misc/ExtensionDependency$2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".jar"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".zip"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lsun/misc/ExtensionDependency$2;-><init>(Lsun/misc/ExtensionDependency;[Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 394
    return-object v0
.end method

.method public static checkExtensionsDependencies(Ljava/util/jar/JarFile;)Z
    .registers 2

    .line 110
    sget-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_0
    :try_start_0
    new-instance v0, Lsun/misc/ExtensionDependency;

    invoke-direct {v0}, Lsun/misc/ExtensionDependency;-><init>()V

    .line 118
    invoke-virtual {v0, p0}, Lsun/misc/ExtensionDependency;->checkExtensions(Ljava/util/jar/JarFile;)Z
    :try_end_0
    .catch Lsun/misc/ExtensionInstallationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lsun/misc/ExtensionInstallationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 1

    .line 562
    return-void
.end method

.method private debugException(Ljava/lang/Throwable;)V
    .registers 2

    .line 568
    return-void
.end method

.method private static getExtDirs()[Ljava/io/File;
    .registers 6

    .line 433
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ""

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtDirs count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 441
    new-array v3, v2, [Ljava/io/File;

    .line 442
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 443
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtDirs dirs["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtDirs dirs.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 451
    return-object v3
.end method

.method private static getExtFiles([Ljava/io/File;)[Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 463
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 464
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 465
    aget-object v2, p0, v0

    new-instance v4, Lsun/misc/JarFilter;

    invoke-direct {v4}, Lsun/misc/JarFilter;-><init>()V

    invoke-virtual {v2, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtFiles files.length "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    move v2, v1

    .line 468
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 469
    new-instance v5, Ljava/io/File;

    aget-object v6, p0, v0

    aget-object v7, v4, v2

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtFiles f["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 476
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtFiles ua.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method private getInstalledExtensions()[Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    new-instance v0, Lsun/misc/ExtensionDependency$3;

    invoke-direct {v0, p0}, Lsun/misc/ExtensionDependency$3;-><init>(Lsun/misc/ExtensionDependency;)V

    .line 488
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 487
    return-object v0
.end method

.method public static removeExtensionInstallationProvider(Lsun/misc/ExtensionInstallationProvider;)V
    .registers 3

    const-class v0, Lsun/misc/ExtensionDependency;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const-class v0, Lsun/misc/ExtensionDependency;

    monitor-exit v0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    const-class v1, Lsun/misc/ExtensionDependency;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected checkExtension(Ljava/lang/String;Ljava/util/jar/Attributes;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ExtensionInstallationException;
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1, p2}, Lsun/misc/ExtensionDependency;->checkExtensionAgainstInstalled(Ljava/lang/String;Ljava/util/jar/Attributes;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    monitor-exit p0

    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    :try_start_1
    const-string v0, "Extension not currently installed "

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 199
    new-instance v0, Lsun/misc/ExtensionInfo;

    invoke-direct {v0, p1, p2}, Lsun/misc/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/util/jar/Attributes;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/misc/ExtensionDependency;->installExtension(Lsun/misc/ExtensionInfo;Lsun/misc/ExtensionInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected checkExtensionAgainst(Ljava/lang/String;Ljava/util/jar/Attributes;Ljava/io/File;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lsun/misc/ExtensionInstallationException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking extension "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " against "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 287
    :try_start_0
    new-instance v0, Lsun/misc/ExtensionDependency$1;

    invoke-direct {v0, p0, p3}, Lsun/misc/ExtensionDependency$1;-><init>(Lsun/misc/ExtensionDependency;Ljava/io/File;)V

    .line 288
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    new-instance v2, Lsun/misc/ExtensionInfo;

    invoke-direct {v2, p1, p2}, Lsun/misc/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/util/jar/Attributes;)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Extension : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 308
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_2

    .line 314
    new-instance v3, Lsun/misc/ExtensionInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lsun/misc/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/util/jar/Attributes;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extension Installed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v2}, Lsun/misc/ExtensionInfo;->isCompatibleWith(Lsun/misc/ExtensionInfo;)I

    move-result v0

    .line 317
    if-eqz v0, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 328
    const-string v0, "Extensions require an upgrade or vendor switch"

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, v2, v3}, Lsun/misc/ExtensionDependency;->installExtension(Lsun/misc/ExtensionInfo;Lsun/misc/ExtensionInfo;)Z

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 323
    :cond_0
    const-string v0, "Extensions are incompatible"

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    move v0, v1

    .line 324
    goto :goto_0

    .line 319
    :cond_1
    const-string v0, "Extensions are compatible"

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 334
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0

    .line 301
    :cond_3
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method checkExtensionAgainstInstalled(Ljava/lang/String;Ljava/util/jar/Attributes;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ExtensionInstallationException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lsun/misc/ExtensionDependency;->checkExtensionExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1

    .line 222
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/misc/ExtensionDependency;->checkExtensionAgainst(Ljava/lang/String;Ljava/util/jar/Attributes;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-direct {p0, v0}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    invoke-direct {p0, v0}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lsun/misc/ExtensionDependency;->getInstalledExtensions()[Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    move v0, v1

    .line 244
    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_0

    .line 248
    :try_start_2
    aget-object v3, v4, v0

    invoke-virtual {p0, p1, p2, v3}, Lsun/misc/ExtensionDependency;->checkExtensionAgainst(Ljava/lang/String;Ljava/util/jar/Attributes;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 249
    goto :goto_0

    .line 252
    :catch_2
    move-exception v3

    .line 253
    invoke-direct {p0, v3}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    .line 255
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :catch_3
    move-exception v3

    .line 251
    invoke-direct {p0, v3}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 241
    :catch_4
    move-exception v0

    .line 242
    invoke-direct {p0, v0}, Lsun/misc/ExtensionDependency;->debugException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected checkExtensions(Ljava/util/jar/JarFile;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ExtensionInstallationException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 134
    :try_start_0
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    .line 149
    sget-object v3, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_4

    .line 151
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 153
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appears to depend on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 159
    invoke-virtual {v6}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v2, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The jar file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " appers to depend on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but does not define the "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attribute in its manifest "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p0, v3, v2}, Lsun/misc/ExtensionDependency;->checkExtension(Ljava/lang/String;Ljava/util/jar/Attributes;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed installing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    move v0, v1

    .line 169
    goto/16 :goto_1

    .line 174
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dependencies for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v0

    move v0, v1

    .line 136
    goto/16 :goto_0
.end method

.method protected installExtension(Lsun/misc/ExtensionInfo;Lsun/misc/ExtensionInfo;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ExtensionInstallationException;
        }
    .end annotation

    .line 354
    sget-object v1, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    monitor-enter v1

    .line 355
    :try_start_0
    sget-object v0, Lsun/misc/ExtensionDependency;->providers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ExtensionInstallationProvider;

    .line 361
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p1, p2}, Lsun/misc/ExtensionInstallationProvider;->installExtension(Lsun/misc/ExtensionInfo;Lsun/misc/ExtensionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installation successful"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lsun/misc/Launcher;->getLauncher()Lsun/misc/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Launcher;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Lsun/misc/Launcher$ExtClassLoader;

    .line 367
    invoke-direct {p0, v0}, Lsun/misc/ExtensionDependency;->addNewExtensionsToClassLoader(Lsun/misc/Launcher$ExtClassLoader;)Ljava/lang/Boolean;

    .line 368
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installation failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->debug(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
