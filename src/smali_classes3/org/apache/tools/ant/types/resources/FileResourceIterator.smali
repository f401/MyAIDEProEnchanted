.class public Lorg/apache/tools/ant/types/resources/FileResourceIterator;
.super Ljava/lang/Object;
.source "FileResourceIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private basedir:Ljava/io/File;

.field private files:[Ljava/lang/String;

.field private pos:I

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->project:Lorg/apache/tools/ant/Project;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 74
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->basedir:Ljava/io/File;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 99
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public addFiles([Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v0, v1

    .line 108
    :goto_0
    array-length v3, p1

    add-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 109
    if-lez v0, :cond_0

    .line 110
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_0
    iput-object v3, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    .line 113
    array-length v2, p1

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void

    .line 107
    :cond_1
    array-length v0, v2

    goto :goto_0
.end method

.method public hasNext()Z
    .registers 3

    .line 122
    iget v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->nextResource()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    return-object v0
.end method

.method public nextResource()Lorg/apache/tools/ant/types/resources/FileResource;
    .registers 5

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->basedir:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    new-instance v3, Lorg/apache/tools/ant/types/resources/FileResource;

    aget-object v1, v1, v2

    invoke-direct {v3, v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 152
    return-object v3

    .line 148
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
