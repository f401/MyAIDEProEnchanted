.class Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;
.super Ljava/lang/Object;
.source "Delete.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Delete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseDirs"
.end annotation


# instance fields
.field private basedir:Ljava/io/File;

.field private dirs:[Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->project:Lorg/apache/tools/ant/Project;

    .line 94
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->basedir:Ljava/io/File;

    .line 95
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->dirs:[Ljava/lang/String;

    .line 96
    invoke-static {}, Lorg/apache/tools/ant/filters/SortFilter$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 97
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

    .line 106
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

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->project:Lorg/apache/tools/ant/Project;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->basedir:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->dirs:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;->dirs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
