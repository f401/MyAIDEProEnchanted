.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ModifiedSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildListener;
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;,
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;,
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;
    }
.end annotation


# static fields
.field private static final ALGORITHM_PREFIX:Ljava/lang/String; = "algorithm."

.field private static final CACHE_PREFIX:Ljava/lang/String; = "cache."

.field private static final COMPARATOR_PREFIX:Ljava/lang/String; = "comparator."


# instance fields
.field private algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

.field private algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

.field private algorithmClass:Ljava/lang/String;

.field private cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

.field private cacheClass:Ljava/lang/String;

.field private cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorClass:Ljava/lang/String;

.field private configParameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private delayUpdate:Z

.field private isConfigured:Z

.field private modified:I

.field private myClassLoader:Ljava/lang/ClassLoader;

.field private selectDirectories:Z

.field private selectResourcesWithoutInputStream:Z

.field private specialParameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private update:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 158
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    .line 164
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    .line 170
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    .line 176
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    .line 179
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    .line 185
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    .line 188
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    .line 195
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    .line 198
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    .line 201
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    .line 204
    iput v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    .line 207
    iput-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    .line 226
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    .line 229
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 237
    return-void
.end method

.method private isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 494
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->validate()V

    .line 495
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 499
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    .line 516
    :cond_10
    :goto_10
    return v0

    .line 503
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;->getValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 506
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    invoke-interface {v3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    .line 509
    :goto_2e
    iget-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    if-eqz v3, :cond_10

    if-eqz v0, :cond_10

    .line 510
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getModified()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setModified(I)V

    .line 512
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result v1

    if-nez v1, :cond_10

    .line 513
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    goto :goto_10

    .line 506
    :cond_50
    const/4 v0, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public addClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 4

    .line 629
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 632
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 633
    return-void

    .line 630
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<classpath> can be set only once."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 672
    new-instance v0, Lorg/apache/tools/ant/types/Parameter;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Parameter;-><init>()V

    .line 673
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Parameter;->setName(Ljava/lang/String;)V

    .line 674
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Parameter;->setValue(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .registers 3

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 795
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    .line 797
    :cond_9
    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 831
    return-void
.end method

.method public configure()V
    .registers 8

    .line 280
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    if-eqz v0, :cond_5

    .line 385
    :goto_4
    return-void

    .line 283
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    .line 288
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_53

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cache.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 302
    :goto_20
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;-><init>(Ljava/io/File;)V

    .line 303
    new-instance v2, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;-><init>()V

    .line 304
    new-instance v3, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;-><init>()V

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Parameter;

    .line 310
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_5f

    .line 312
    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 299
    :cond_53
    new-instance v0, Ljava/io/File;

    const-string v1, "cache.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setDelayUpdate(Z)V

    goto :goto_20

    .line 314
    :cond_5f
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->useParameter(Lorg/apache/tools/ant/types/Parameter;)V

    goto :goto_35

    .line 317
    :cond_63
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    if-eqz v0, :cond_100

    .line 322
    const-string v2, "hashvalue"

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 323
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/HashvalueAlgorithm;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/HashvalueAlgorithm;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    .line 343
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    if-eqz v0, :cond_116

    .line 345
    const-string v1, "propertyfile"

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 346
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    .line 357
    :cond_96
    :goto_96
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    if-eqz v0, :cond_142

    .line 359
    const-string v1, "equal"

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    .line 383
    :cond_ad
    :goto_ad
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_4

    .line 324
    :cond_be
    const-string v0, "digest"

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 325
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_7f

    .line 326
    :cond_d4
    const-string v0, "checksum"

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 327
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_7f

    .line 328
    :cond_ea
    const-string v0, "lastmodified"

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 329
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/LastModifiedAlgorithm;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/LastModifiedAlgorithm;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_7f

    .line 331
    :cond_100
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithmClass:Ljava/lang/String;

    if-eqz v0, :cond_112

    .line 333
    const-string v2, "is not an Algorithm."

    const-class v4, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-virtual {p0, v0, v2, v4}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto/16 :goto_7f

    .line 339
    :cond_112
    iput-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto/16 :goto_7f

    .line 348
    :cond_116
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheClass:Ljava/lang/String;

    if-eqz v0, :cond_128

    .line 350
    const-string v1, "is not a Cache."

    const-class v2, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    goto/16 :goto_96

    .line 353
    :cond_128
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    goto/16 :goto_96

    .line 361
    :cond_12c
    const-string v0, "rule"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 365
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "RuleBasedCollator not yet supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_142
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparatorClass:Ljava/lang/String;

    if-eqz v0, :cond_154

    .line 372
    const-string v1, "is not a Comparator."

    const-class v2, Ljava/util/Comparator;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 374
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    goto/16 :goto_ad

    .line 377
    :cond_154
    iput-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    goto/16 :goto_ad
.end method

.method public getAlgorithm()Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;
    .registers 2

    .line 905
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    return-object v0
.end method

.method public getCache()Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;
    .registers 2

    .line 874
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 641
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_12

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_15

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 647
    :goto_10
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    .line 649
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    return-object v0

    .line 647
    :cond_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    goto :goto_10
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getDelayUpdate()Z
    .registers 2

    .line 611
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    return v0
.end method

.method public getModified()I
    .registers 2

    .line 593
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    return v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .line 481
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 9

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 439
    check-cast p1, Lorg/apache/tools/ant/types/resources/FileResource;

    .line 440
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 441
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v2

    .line 443
    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 464
    :goto_18
    return v0

    .line 448
    :cond_19
    :try_start_19
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "modified-"

    const-string v3, ".tmp"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 450
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 451
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)V

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 453
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_19 .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_47} :catch_78

    goto :goto_18

    .line 457
    :catch_48
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The resource \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not provide an InputStream, so it is not checked. According to \'selres\' attribute value it is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    if-eqz v0, :cond_7f

    const-string v0, ""

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "selected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->log(Ljava/lang/String;I)V

    .line 464
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    goto :goto_18

    .line 465
    :catch_78
    move-exception v0

    .line 466
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 462
    :cond_7f
    const-string v0, " not"

    goto :goto_65
.end method

.method protected loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 402
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_21

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 410
    :goto_c
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 415
    return-object v0

    .line 407
    :cond_21
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    .line 413
    :cond_26
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specified class (%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_37} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_44

    .line 416
    :catch_37
    move-exception v0

    .line 417
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specified class (%s) not found."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 418
    :catch_44
    move-exception v0

    .line 419
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 862
    return-void
.end method

.method protected saveCache()V
    .registers 2

    .line 524
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getModified()I

    move-result v0

    if-lez v0, :cond_f

    .line 525
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->save()V

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setModified(I)V

    .line 528
    :cond_f
    return-void
.end method

.method public setAlgorithm(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;)V
    .registers 2

    .line 913
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    .line 914
    return-void
.end method

.method public setAlgorithmClass(Ljava/lang/String;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithmClass:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setCache(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;)V
    .registers 2

    .line 882
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    .line 883
    return-void
.end method

.method public setCacheClass(Ljava/lang/String;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheClass:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    .line 663
    return-void
.end method

.method public setComparator(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;)V
    .registers 2

    .line 944
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    .line 945
    return-void
.end method

.method public setComparatorClass(Ljava/lang/String;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparatorClass:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setDelayUpdate(Z)V
    .registers 2

    .line 620
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    .line 621
    return-void
.end method

.method public setModified(I)V
    .registers 2

    .line 602
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    .line 603
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 3

    .line 697
    if-eqz p1, :cond_7

    .line 698
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 700
    :cond_7
    return-void
.end method

.method public setSeldirs(Z)V
    .registers 2

    .line 575
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    .line 576
    return-void
.end method

.method public setSelres(Z)V
    .registers 2

    .line 584
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    .line 585
    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    .line 566
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    .line 567
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    .line 806
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 807
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    .line 809
    :cond_9
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 841
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    .line 818
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    .line 821
    :cond_9
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 852
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 780
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    .line 781
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    .line 780
    const-string v5, "{modifiedselector update=%s seldirs=%s cache=%s algorithm=%s comparator=%s}"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 760
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 761
    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v1

    .line 764
    :try_start_12
    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_12 .. :try_end_15} :catch_1c

    .line 768
    :goto_15
    return-void

    .line 760
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    goto :goto_a

    .line 765
    :catch_1c
    move-exception v0

    goto :goto_15
.end method

.method public useParameter(Lorg/apache/tools/ant/types/Parameter;)V
    .registers 5

    .line 717
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 719
    const-string v2, "cache"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 720
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;-><init>()V

    .line 721
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;->setValue(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setCache(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;)V

    .line 749
    :goto_1b
    return-void

    .line 723
    :cond_1c
    const-string v2, "algorithm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 724
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;-><init>()V

    .line 725
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->setValue(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setAlgorithm(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;)V

    goto :goto_1b

    .line 727
    :cond_30
    const-string v2, "comparator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 728
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;-><init>()V

    .line 729
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->setValue(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setComparator(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;)V

    goto :goto_1b

    .line 731
    :cond_44
    const-string v2, "update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 732
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setUpdate(Z)V

    goto :goto_1b

    .line 733
    :cond_56
    const-string v2, "delayupdate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 734
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setDelayUpdate(Z)V

    goto :goto_1b

    .line 735
    :cond_68
    const-string v2, "seldirs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 736
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setSeldirs(Z)V

    goto :goto_1b

    .line 737
    :cond_7a
    const-string v2, "cache."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 738
    const-string v2, "cache."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 740
    :cond_92
    const-string v2, "algorithm."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 741
    const-string v2, "algorithm."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 743
    :cond_ab
    const-string v2, "comparator."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 744
    const-string v2, "comparator."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 747
    :cond_c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto/16 :goto_1b
.end method

.method public verifySettings()V
    .registers 3

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configure()V

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    if-nez v0, :cond_d

    .line 248
    const-string v0, "Cache must be set."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    .line 256
    :cond_c
    :goto_c
    return-void

    .line 249
    :cond_d
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    if-nez v1, :cond_17

    .line 250
    const-string v0, "Algorithm must be set."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_c

    .line 251
    :cond_17
    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    .line 252
    const-string v0, "Cache must be proper configured."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_c

    .line 253
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 254
    const-string v0, "Algorithm must be proper configured."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_c
.end method
