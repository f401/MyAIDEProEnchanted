.class public Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;
.super Lorg/apache/tools/ant/taskdefs/Copy;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyCopy"
.end annotation


# instance fields
.field private nonOrphans:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 456
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;-><init>()V

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;)Ljava/util/Set;
    .registers 2

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getIncludeEmptyDirs()Z
    .registers 2

    .line 503
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->includeEmpty:Z

    return v0
.end method

.method public getToDir()Ljava/io/File;
    .registers 2

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->destDir:Ljava/io/File;

    return-object v0
.end method

.method protected scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_5
    const-string v1, "No mapper"

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->access$200(Ljava/lang/String;Z)V

    .line 485
    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 487
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Copy;->scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 483
    :cond_26
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    const-string v1, "No mapper"

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->access$200(Ljava/lang/String;Z)V

    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Copy;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->nonOrphans:Ljava/util/Set;

    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 475
    return-void

    .line 469
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected supportsNonFileResources()Z
    .registers 2

    .line 513
    const/4 v0, 0x1

    return v0
.end method
