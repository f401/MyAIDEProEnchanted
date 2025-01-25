.class Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "MultiRootFileSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;)V
    .registers 4

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    .line 206
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 207
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->setDir(Ljava/io/File;)V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$1;)V
    .registers 5

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;-><init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;)V

    return-void
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

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v0, v2, :cond_3a

    .line 219
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_f
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v3, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v2, v3, :cond_28

    .line 222
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    .line 223
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 224
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 226
    :cond_28
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v1

    .line 220
    :cond_3a
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public size()I
    .registers 5

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v0, v2, :cond_1a

    .line 236
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    .line 238
    :goto_e
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v3, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v2, v3, :cond_19

    .line 239
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_19
    return v0

    .line 237
    :cond_1a
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v0

    goto :goto_e
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
