.class public Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Compression"
.end annotation


# instance fields
.field private level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

.field private final patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .registers 3

    .line 1383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFiles()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .registers 3

    .line 1418
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1419
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    return-object v0
.end method

.method public getLevel()Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;
    .registers 2

    .line 1399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-object v0
.end method

.method public setFiles(Ljava/lang/String;)V
    .registers 9

    .line 1433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1434
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 1435
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v5, v6, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1437
    :cond_20
    return-void
.end method

.method public setLevel(Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;)V
    .registers 2

    .line 1408
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    .line 1409
    return-void
.end method

.method public toCommandLineOption()Ljava/lang/String;
    .registers 5

    .line 1459
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;->toCommandLineOption()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1463
    const-string v0, ":filter="

    .line 1464
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    .line 1465
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->toOptionValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v0, ","

    move-object v1, v0

    .line 1467
    goto :goto_1c

    .line 1470
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 4

    .line 1446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    if-eqz v0, :cond_c

    .line 1450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1451
    return-void

    .line 1447
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1448
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Compression level must be specified."

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
