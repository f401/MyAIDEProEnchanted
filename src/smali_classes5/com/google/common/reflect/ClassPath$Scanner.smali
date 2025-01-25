.class abstract Lcom/google/common/reflect/ClassPath$Scanner;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Scanner"
.end annotation


# instance fields
.field private final scannedUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$Scanner;->scannedUris:Ljava/util/Set;

    return-void
.end method

.method private static getClassLoaderUrls(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 463
    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_f

    .line 464
    check-cast p0, Ljava/net/URLClassLoader;

    invoke-virtual {p0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 469
    :goto_e
    return-object v0

    .line 466
    :cond_f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 467
    invoke-static {}, Lcom/google/common/reflect/ClassPath$Scanner;->parseJavaClassPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_e

    .line 469
    :cond_1e
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_e
.end method

.method static getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 447
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_11

    .line 449
    invoke-static {v0}, Lcom/google/common/reflect/ClassPath$Scanner;->getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 451
    :cond_11
    invoke-static {p0}, Lcom/google/common/reflect/ClassPath$Scanner;->getClassLoaderUrls(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 452
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 453
    invoke-static {v0}, Lcom/google/common/reflect/ClassPath;->toFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 455
    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 459
    :cond_3f
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static getClassPathEntry(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method static getClassPathFromManifest(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;
    .registers 8
    .param p1  # Ljava/util/jar/Manifest;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/jar/Manifest;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 419
    if-nez p1, :cond_7

    .line 420
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 440
    :goto_6
    return-object v0

    .line 422
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_65

    .line 426
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$200()Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    :try_start_33
    invoke-static {p0, v0}, Lcom/google/common/reflect/ClassPath$Scanner;->getClassPathEntry(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_33 .. :try_end_36} :catch_4b

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 436
    invoke-static {v0}, Lcom/google/common/reflect/ClassPath;->toFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_27

    .line 430
    :catch_4b
    move-exception v3

    .line 432
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Class-Path entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_27

    .line 440
    :cond_65
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_6
.end method

.method static parseJavaClassPath()Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 478
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 479
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v1}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    :try_start_28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_38} :catch_39
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_38} :catch_4f

    goto :goto_1c

    .line 483
    :catch_39
    move-exception v1

    .line 484
    :try_start_3a
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "file"

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_4e
    .catch Ljava/net/MalformedURLException; {:try_start_3a .. :try_end_4e} :catch_4f

    goto :goto_1c

    .line 486
    :catch_4f
    move-exception v1

    .line 487
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malformed classpath entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 490
    :cond_6b
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private scanFrom(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_15

    move-result v0

    if-nez v0, :cond_7

    .line 386
    :goto_6
    return-void

    .line 380
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 382
    invoke-virtual {p0, p2, p1}, Lcom/google/common/reflect/ClassPath$Scanner;->scanDirectory(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_6

    .line 384
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/ClassPath$Scanner;->scanJar(Ljava/io/File;Ljava/lang/ClassLoader;)V

    goto :goto_6

    .line 376
    :catch_15
    move-exception v0

    .line 377
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private scanJar(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_31

    .line 395
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/reflect/ClassPath$Scanner;->getClassPathFromManifest(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 398
    invoke-virtual {p0, v0, p2}, Lcom/google/common/reflect/ClassPath$Scanner;->scan(Ljava/io/File;Ljava/lang/ClassLoader;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 402
    :catchall_21
    move-exception v0

    .line 403
    :try_start_22
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f

    .line 406
    :goto_25
    throw v0

    .line 400
    :cond_26
    :try_start_26
    invoke-virtual {p0, p2, v1}, Lcom/google/common/reflect/ClassPath$Scanner;->scanJarFile(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    .line 403
    :try_start_29
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 406
    :goto_2c
    return-void

    .line 404
    :catch_2d
    move-exception v0

    goto :goto_2c

    :catch_2f
    move-exception v1

    goto :goto_25

    .line 392
    :catch_31
    move-exception v0

    goto :goto_2c
.end method


# virtual methods
.method final scan(Ljava/io/File;Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$Scanner;->scannedUris:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/ClassPath$Scanner;->scanFrom(Ljava/io/File;Ljava/lang/ClassLoader;)V

    .line 363
    :cond_f
    return-void
.end method

.method public final scan(Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-static {p1}, Lcom/google/common/reflect/ClassPath$Scanner;->getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/reflect/ClassPath$Scanner;->scan(Ljava/io/File;Ljava/lang/ClassLoader;)V

    goto :goto_c

    .line 356
    :cond_28
    return-void
.end method

.method protected abstract scanDirectory(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract scanJarFile(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
