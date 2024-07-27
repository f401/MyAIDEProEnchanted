.class public abstract Lorg/apache/tools/ant/taskdefs/Unpack;
.super Lorg/apache/tools/ant/Task;
.source "Unpack.java"


# instance fields
.field protected dest:Ljava/io/File;

.field protected source:Ljava/io/File;

.field protected srcResource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private createDestFile(Ljava/lang/String;)V
    .registers 8

    .line 148
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->source:Ljava/io/File;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getLastNamePart(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 155
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x0

    sub-int/2addr v1, v3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 160
    :goto_1
    return-void

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    goto :goto_1
.end method

.method private getLastNamePart(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/String;
    .registers 4

    .line 202
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 203
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 204
    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->srcResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->source:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->source:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getDefaultExtension()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->createDestFile(Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void

    .line 135
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest is required when using a non-filesystem source"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 130
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No Src specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 113
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 118
    return-void

    .line 114
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported as archives"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 168
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 170
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->validate()V

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->extract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 174
    throw v0
.end method

.method protected abstract extract()V
.end method

.method protected abstract getDefaultExtension()Ljava/lang/String;
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->dest:Ljava/io/File;

    .line 126
    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    const-string v0, "DEPRECATED - The setDest(String) method has been deprecated. Use setDest(File) instead."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->log(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->setDest(Ljava/io/File;)V

    .line 74
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 81
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 82
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    const-string v0, "DEPRECATED - The setSrc(String) method has been deprecated. Use setSrc(File) instead."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Unpack;->setSrc(Ljava/io/File;)V

    .line 58
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->source:Ljava/io/File;

    .line 105
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Unpack;->srcResource:Lorg/apache/tools/ant/types/Resource;

    .line 106
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;->supportsNonFileResources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The source %s is not a FileSystem Only FileSystem resources are supported."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the archive %s can\'t be a directory"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 90
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the archive %s doesn\'t exist"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected supportsNonFileResources()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method
