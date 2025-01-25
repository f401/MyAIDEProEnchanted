.class public Lorg/apache/tools/ant/types/XMLCatalog;
.super Lorg/apache/tools/ant/types/DataType;
.source "XMLCatalog.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Ljavax/xml/transform/URIResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;,
        Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;,
        Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;
    }
.end annotation


# static fields
.field public static final APACHE_RESOLVER:Ljava/lang/String; = "org.apache.tools.ant.types.resolver.ApacheCatalogResolver"

.field public static final CATALOG_RESOLVER:Ljava/lang/String; = "org.apache.xml.resolver.tools.CatalogResolver"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private catalogPath:Lorg/apache/tools/ant/types/Path;

.field private catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private elements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/ResourceLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->findMatchingEntry(Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->filesystemLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->classpathLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->urlLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/util/FileUtils;
    .registers 1

    .line 118
    sget-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method private classpathLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 6

    .line 698
    const/4 v1, 0x0

    .line 700
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 701
    if-eqz v0, :cond_4e

    .line 702
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    const-string v2, "ignore"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 706
    :goto_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2

    .line 711
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 714
    if-eqz v3, :cond_5e

    .line 715
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 716
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catalog entry matched a resource in the classpath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 723
    :goto_4d
    return-object v0

    .line 704
    :cond_4e
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v2, "last"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_d

    :cond_5e
    move-object v0, v1

    goto :goto_4d
.end method

.method private filesystemLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 624
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 626
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 635
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v0

    .line 646
    :goto_18
    :try_start_18
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_1d} :catch_9f

    move-object v0, v2

    .line 669
    :goto_1e
    if-eqz v0, :cond_11a

    const-string v2, "file"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 670
    sget-object v2, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_11a

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 673
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 676
    :try_start_5d
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6d} :catch_113

    .line 677
    :try_start_6d
    invoke-static {v2}, Lorg/apache/tools/ant/util/JAXPUtils;->getSystemId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catalog entry matched a readable file: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_8e} :catch_117

    .line 687
    :goto_8e
    return-object v0

    .line 638
    :cond_8f
    :try_start_8f
    sget-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_9c
    .catch Ljava/net/MalformedURLException; {:try_start_8f .. :try_end_9c} :catch_10a

    move-result-object v0

    goto/16 :goto_18

    .line 647
    :catch_9f
    move-exception v0

    .line 651
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri : \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' matches a readable file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 656
    :try_start_ca
    sget-object v2, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_cf
    .catch Ljava/net/MalformedURLException; {:try_start_ca .. :try_end_cf} :catch_d2

    move-result-object v0

    goto/16 :goto_1e

    .line 657
    :catch_d2
    move-exception v1

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find an URL for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not match a readable file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    move-object v0, v1

    goto/16 :goto_1e

    .line 639
    :catch_10a
    move-exception v0

    .line 640
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Project basedir cannot be converted to a URL"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :catch_113
    move-exception v0

    move-object v0, v1

    goto/16 :goto_8e

    :catch_117
    move-exception v1

    goto/16 :goto_8e

    :cond_11a
    move-object v0, v1

    goto/16 :goto_8e
.end method

.method private findMatchingEntry(Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;
    .registers 4

    .line 592
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/XMLCatalog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/XMLCatalog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceLocation;

    .line 592
    return-object v0
.end method

.method private getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;
    .registers 5

    const/4 v3, 0x1

    .line 497
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    if-nez v0, :cond_41

    .line 501
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/Path;->systemClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 504
    :try_start_f
    const-string v1, "org.apache.tools.ant.types.resolver.ApacheCatalogResolver"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 512
    const-string v1, "org.apache.xml.resolver.tools.CatalogResolver"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 523
    const-string v1, "org.apache.tools.ant.types.resolver.ApacheCatalogResolver"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 525
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 530
    new-instance v2, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;-><init>(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_44

    .line 545
    :cond_41
    :goto_41
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    return-object v0

    .line 531
    :catchall_44
    move-exception v0

    .line 536
    new-instance v1, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;-><init>(Lorg/apache/tools/ant/types/XMLCatalog;)V

    iput-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_62

    .line 539
    const-string v1, "Warning: XML resolver not found; external catalogs will be ignored"

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 542
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load Apache resolver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    goto :goto_41
.end method

.method private getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method private getElements()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/ResourceLocation;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    return-object v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/XMLCatalog;
    .registers 2

    .line 474
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_7

    .line 477
    :goto_6
    return-object p0

    :cond_7
    const-class v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/XMLCatalog;

    move-object p0, v0

    goto :goto_6
.end method

.method static synthetic lambda$findMatchingEntry$0(Ljava/lang/String;Lorg/apache/tools/ant/types/ResourceLocation;)Z
    .registers 3

    .line 593
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeFragment(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 608
    .line 609
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 610
    if-ltz v0, :cond_d

    .line 611
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 613
    :cond_d
    return-object p1
.end method

.method private setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 570
    if-nez v0, :cond_16

    .line 571
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 572
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 574
    :try_start_e
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_15} :catch_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_15} :catch_24

    move-result-object v0

    .line 579
    :cond_16
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 580
    invoke-virtual {p1, v0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 581
    return-void

    .line 575
    :catch_1d
    move-exception v0

    .line 576
    :goto_1e
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 575
    :catch_24
    move-exception v0

    goto :goto_1e
.end method

.method private urlLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .registers 6

    const/4 v1, 0x0

    .line 734
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 743
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v0

    move-object v2, v0

    .line 749
    :goto_10
    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_15} :catch_60

    move-object v3, v0

    .line 761
    :goto_16
    if-eqz v3, :cond_71

    .line 764
    :try_start_18
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_73

    .line 766
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 767
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 769
    :goto_27
    if-eqz v2, :cond_71

    .line 770
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_6c

    .line 771
    :try_start_2e
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catalog entry matched as a URL: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4f} :catch_6f

    .line 781
    :goto_4f
    return-object v0

    .line 746
    :cond_50
    :try_start_50
    sget-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_5d
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_5d} :catch_63

    move-result-object v0

    move-object v2, v0

    goto :goto_10

    .line 756
    :catch_60
    move-exception v0

    move-object v3, v1

    .line 757
    goto :goto_16

    .line 747
    :catch_63
    move-exception v0

    .line 748
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Project basedir cannot be converted to a URL"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :catch_6c
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    :catch_6f
    move-exception v1

    goto :goto_4f

    :cond_71
    move-object v0, v1

    goto :goto_4f

    :cond_73
    move-object v2, v1

    goto :goto_27
.end method


# virtual methods
.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .registers 4

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 332
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 335
    invoke-direct {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 339
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 342
    return-void

    .line 328
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 299
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 301
    return-void

    .line 296
    :cond_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addEntity(Lorg/apache/tools/ant/types/ResourceLocation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V

    .line 316
    return-void
.end method

.method public createCatalogPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_20

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_15

    .line 249
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    .line 251
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 246
    :cond_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_20

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_15

    .line 193
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 195
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 190
    :cond_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 454
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_27

    move-result v0

    if-eqz v0, :cond_9

    .line 455
    monitor-exit p0

    .line 468
    :goto_8
    return-void

    .line 457
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 458
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_27

    .line 468
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 460
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1b

    .line 461
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 463
    :cond_1b
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_22

    .line 464
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 466
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_27

    goto :goto_12

    .line 453
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCatalogPath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 279
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x4

    .line 409
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 410
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v0

    .line 448
    :goto_f
    return-object v0

    .line 413
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->dieOnCircularReference()V

    .line 415
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->removeFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolve: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with base: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 421
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    move-result-object v0

    invoke-interface {v0, v3, p2}, Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    .line 423
    if-nez v0, :cond_84

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching catalog entry found, parser will use: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 430
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 433
    if-nez p2, :cond_88

    .line 434
    :try_start_64
    sget-object v1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    .line 438
    :goto_72
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 439
    :goto_78
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V
    :try_end_84
    .catch Ljava/net/MalformedURLException; {:try_start_64 .. :try_end_84} :catch_8e

    .line 447
    :cond_84
    :goto_84
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V

    goto :goto_f

    .line 436
    :cond_88
    :try_start_88
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/net/MalformedURLException; {:try_start_88 .. :try_end_8d} :catch_8e

    goto :goto_72

    .line 440
    :catch_8e
    move-exception v1

    .line 443
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    goto :goto_84

    .line 438
    :cond_98
    :try_start_98
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/net/MalformedURLException; {:try_start_98 .. :try_end_9d} :catch_8e

    move-object v1, v2

    goto :goto_78
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    .line 377
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 378
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 394
    :cond_f
    :goto_f
    return-object v0

    .line 381
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->dieOnCircularReference()V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveEntity: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 386
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 389
    if-nez v0, :cond_f

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching catalog entry found, parser will use: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public setCatalogPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 270
    return-void

    .line 266
    :cond_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 208
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_15

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_11

    .line 212
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 216
    :goto_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 217
    return-void

    .line 214
    :cond_11
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_c

    .line 209
    :cond_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 228
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 233
    return-void

    .line 229
    :cond_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 361
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 362
    return-void

    .line 359
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method
