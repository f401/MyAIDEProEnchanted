.class public Lorg/apache/tools/ant/types/FileList;
.super Lorg/apache/tools/ant/types/DataType;
.source "FileList.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/FileList$FileName;
    }
.end annotation


# instance fields
.field private dir:Ljava/io/File;

.field private filenames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileList;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    .line 58
    iget-object v0, p1, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileList;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 60
    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FileList;
    .registers 2

    .line 214
    const-class v0, Lorg/apache/tools/ant/types/FileList;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileList;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileList;

    return-object v0
.end method

.method private getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;
    .registers 4

    .line 218
    const-class v0, Lorg/apache/tools/ant/types/FileList;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/FileList;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileList;

    return-object v0
.end method


# virtual methods
.method public addConfiguredFile(Lorg/apache/tools/ant/types/FileList$FileName;)V
    .registers 4

    .line 169
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList$FileName;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList$FileName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 170
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No name specified in nested file element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .registers 3

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileList;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileList;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    goto :goto_0
.end method

.method public getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 4

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileList;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileList;->getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No files specified for filelist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No directory specified for filelist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 210
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

    .line 183
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileList;->getRef()Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 187
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    move-object v0, v1

    .line 186
    goto :goto_0
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->checkAttributesAllowed()V

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    .line 88
    return-void
.end method

.method public setFiles(Ljava/lang/String;)V
    .registers 5

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->checkAttributesAllowed()V

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", \t\n\r\u000c"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    .line 197
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileList;->getRef()Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileList;->size()I

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
