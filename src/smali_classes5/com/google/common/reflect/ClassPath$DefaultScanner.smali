.class final Lcom/google/common/reflect/ClassPath$DefaultScanner;
.super Lcom/google/common/reflect/ClassPath$Scanner;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultScanner"
.end annotation


# instance fields
.field private final resources:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 506
    invoke-direct {p0}, Lcom/google/common/reflect/ClassPath$Scanner;-><init>()V

    .line 507
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    return-void
.end method

.method private scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 553
    if-nez v1, :cond_1f

    .line 554
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 573
    :cond_1e
    return-void

    .line 558
    :cond_1f
    array-length v2, v1

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_1e

    aget-object v3, v1, v0

    .line 559
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 561
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 562
    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4, p4}, Lcom/google/common/reflect/ClassPath$DefaultScanner;->scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 564
    invoke-interface {p4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 567
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 569
    iget-object v4, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v4, p2}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53
.end method


# virtual methods
.method getResources()Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 511
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v2

    .line 512
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {v1, v0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_e

    .line 515
    :cond_2e
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method protected scanDirectory(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 533
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v1, ""

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/google/common/reflect/ClassPath$DefaultScanner;->scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 535
    return-void
.end method

.method protected scanJarFile(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
    .registers 7

    .line 520
    invoke-virtual {p2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 521
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 522
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 523
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 526
    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v2, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 528
    :cond_30
    return-void
.end method
