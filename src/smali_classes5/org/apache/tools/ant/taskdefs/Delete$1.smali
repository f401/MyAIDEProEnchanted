.class Lorg/apache/tools/ant/taskdefs/Delete$1;
.super Ljava/lang/Object;
.source "Delete.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/Delete;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/Delete;

.field final val$files:[Ljava/lang/String;

.field final val$fsDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Delete;[Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 686
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->this$0:Lorg/apache/tools/ant/taskdefs/Delete;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->val$files:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->val$fsDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 689
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

    .line 699
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->this$0:Lorg/apache/tools/ant/taskdefs/Delete;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->val$fsDir:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->val$files:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 694
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete$1;->val$files:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
