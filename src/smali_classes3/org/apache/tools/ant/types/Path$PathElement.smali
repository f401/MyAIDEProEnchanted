.class public Lorg/apache/tools/ant/types/Path$PathElement;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathElement"
.end annotation


# instance fields
.field private parts:[Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/types/Path$PathElement;->this$0:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParts()[Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path$PathElement;->parts:[Ljava/lang/String;

    return-object v0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Path$PathElement;->this$0:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/Path$PathElement;->parts:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public setLocation(Ljava/io/File;)V
    .registers 5

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/types/Path;->translateFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/types/Path$PathElement;->parts:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path$PathElement;->this$0:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/Path;->translatePath(Lorg/apache/tools/ant/Project;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Path$PathElement;->parts:[Ljava/lang/String;

    .line 107
    return-void
.end method

.method public size()I
    .registers 2

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path$PathElement;->parts:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
