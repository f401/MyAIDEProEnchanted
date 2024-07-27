.class Lsun/misc/URLClassPath$JarLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JarLoader"
.end annotation


# instance fields
.field private csu:Ljava/net/URL;

.field private handler:Ljava/net/URLStreamHandler;

.field private index:Lsun/misc/JarIndex;

.field private jar:Ljava/util/jar/JarFile;

.field private lmap:Ljava/util/HashMap;

.field private metaIndex:Lsun/misc/MetaIndex;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "!/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 565
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    .line 566
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    .line 567
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    .line 569
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_2

    .line 574
    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-static {v1}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 583
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 591
    :cond_2
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    goto :goto_0
.end method

.method static synthetic access$1000(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic access$400(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$500(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static synthetic access$502(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 2

    .line 549
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object p1
.end method

.method static synthetic access$600(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0
.end method

.method static synthetic access$702(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;
    .registers 2

    .line 549
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object p1
.end method

.method static synthetic access$800(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    return-object v0
.end method

.method static synthetic access$900(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .registers 2

    .line 549
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    return-object v0
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v0, :cond_0

    .line 608
    :try_start_0
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v0, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 661
    :goto_0
    return-object v0

    .line 655
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_1
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 660
    const-string v1, "UA-Java-Version"

    sget-object v2, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    check-cast v0, Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    goto :goto_0
.end method

.method private isOptimizable(Ljava/net/URL;)Z
    .registers 4

    .line 602
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 941
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [Ljava/net/URL;

    .line 943
    const/4 v0, 0x0

    .line 944
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 946
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 947
    add-int/lit8 v0, v0, 0x1

    .line 948
    goto :goto_0

    .line 949
    :cond_0
    return-object v2
.end method

.method private parseExtensionsDependencies()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->checkExtensionsDependencies(Ljava/util/jar/JarFile;)Z

    .line 932
    return-void
.end method


# virtual methods
.method checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .registers 8

    const/4 v0, 0x0

    .line 685
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 686
    if-eqz p2, :cond_0

    .line 687
    invoke-static {v1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2

    .line 696
    :cond_0
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    :goto_0
    return-object v0

    .line 689
    :catch_0
    move-exception v1

    goto :goto_0

    .line 692
    :catch_1
    move-exception v1

    goto :goto_0

    .line 694
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 4

    .line 746
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getClassPath()[Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-object v0

    .line 906
    :cond_1
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v1, :cond_0

    .line 910
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 911
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    .line 912
    invoke-static {}, Lsun/misc/SharedSecrets;->javaUtilJarAccess()Lsun/misc/JavaUtilJarAccess;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-interface {v1, v2}, Lsun/misc/JavaUtilJarAccess;->jarFileHasClassPathAttribute(Ljava/util/jar/JarFile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 914
    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 916
    if-eqz v1, :cond_0

    .line 917
    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 918
    if-eqz v1, :cond_0

    .line 919
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v0, v1}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method getIndex()Lsun/misc/JarIndex;
    .registers 3

    .line 669
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0
.end method

.method getJarFile()Ljava/util/jar/JarFile;
    .registers 2

    .line 598
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 5

    const/4 v0, 0x0

    .line 757
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v1, :cond_1

    .line 758
    invoke-virtual {v1, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-object v0

    .line 764
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v1, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_2

    .line 770
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_2
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-eqz v1, :cond_0

    .line 775
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 776
    invoke-virtual {p0, p1, p2, v0}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0
.end method

.method getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .registers 15

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 791
    .line 793
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    invoke-virtual {v0, p1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 894
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 802
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 803
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    move v2, v1

    .line 805
    :goto_1
    if-ge v2, v5, :cond_a

    .line 806
    aget-object v0, v4, v2

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 811
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {v6, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$JarLoader;

    if-nez v0, :cond_3

    .line 816
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$3;

    invoke-direct {v0, p0, v6}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    .line 817
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$JarLoader;

    .line 829
    invoke-virtual {v0}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v7

    .line 830
    if-eqz v7, :cond_2

    .line 831
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 832
    iget-object v9, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    move-object v1, v3

    :goto_2
    :try_start_1
    invoke-virtual {v7, v9, v1}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    .line 830
    :cond_2
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4

    .line 812
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 850
    if-nez v1, :cond_6

    .line 852
    :try_start_2
    invoke-direct {v0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 855
    iget-object v6, v0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v6, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 857
    if-eqz v6, :cond_5

    .line 858
    invoke-virtual {v0, p1, p2, v6}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v8, v8, 0x1

    :try_start_3
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    goto :goto_2

    .line 865
    :cond_5
    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 876
    :cond_6
    if-nez v1, :cond_7

    if-eq v0, p0, :cond_7

    .line 877
    invoke-virtual {v0}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v1

    if-nez v1, :cond_9

    .line 840
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    :cond_8
    new-instance v0, Lsun/misc/InvalidJarIndexException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0

    .line 883
    :cond_9
    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    .line 890
    :cond_a
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    invoke-virtual {v0, p1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    move-object v0, v3

    .line 894
    goto/16 :goto_0

    .line 839
    :catch_1
    move-exception v0

    goto :goto_3

    .line 841
    :catch_2
    move-exception v0

    goto :goto_3

    .line 839
    :catch_3
    move-exception v0

    goto :goto_3

    .line 841
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method validIndex(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 721
    .line 723
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 724
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 729
    :cond_0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 730
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 732
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 733
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 734
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
