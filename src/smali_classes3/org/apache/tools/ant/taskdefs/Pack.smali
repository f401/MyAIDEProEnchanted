.class public abstract Lorg/apache/tools/ant/taskdefs/Pack;
.super Lorg/apache/tools/ant/Task;
.source "Pack.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field protected source:Ljava/io/File;

.field private src:Lorg/apache/tools/ant/types/Resource;

.field protected zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getSrcResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute or nested resource is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "zipfile attribute must not represent a directory!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "zipfile attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private zipFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 157
    const/16 v0, 0x2000

    new-array v2, v0, [B

    move v0, v1

    .line 160
    :cond_0
    invoke-virtual {p2, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 161
    array-length v0, v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 162
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 163
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 94
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 104
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Pack;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 105
    return-void

    .line 100
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s cannot handle multiple resources at once. (%d resources were selected.)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No resource selected, %s needs exactly one resource."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->validate()V

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->getSrcResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing to do: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t exist."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Pack;->log(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Pack;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->pack()V

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nothing to do: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is up to date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Pack;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSrcResource()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Pack;->src:Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method protected abstract pack()V
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Pack;->setZipfile(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 69
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Pack;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 70
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 77
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Pack;->source:Ljava/io/File;

    .line 86
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Pack;->src:Lorg/apache/tools/ant/types/Resource;

    .line 87
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Pack;->supportsNonFileResources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only FileSystem resources are supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the source can\'t be a directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZipfile(Ljava/io/File;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile:Ljava/io/File;

    .line 54
    return-void
.end method

.method protected supportsNonFileResources()Z
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected zipFile(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/Pack;->zipResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/OutputStream;)V

    .line 174
    return-void
.end method

.method protected zipResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 185
    :try_start_0
    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/Pack;->zipFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 187
    :cond_0
    return-void

    .line 184
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    throw v1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
