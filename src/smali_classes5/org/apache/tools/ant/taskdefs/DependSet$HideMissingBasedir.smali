.class final Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;
.super Ljava/lang/Object;
.source "DependSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/DependSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HideMissingBasedir"
.end annotation


# instance fields
.field private fs:Lorg/apache/tools/ant/types/FileSet;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/FileSet;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method private basedirExists()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->basedirExists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/apache/tools/ant/types/resources/Resources;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->basedirExists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->size()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
