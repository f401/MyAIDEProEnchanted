.class public Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;
.super Ljava/lang/Object;
.source "URLResolver.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;


# instance fields
.field private destdir:Ljava/io/File;

.field private destfile:Ljava/io/File;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDest()Ljava/io/File;
    .registers 4

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    .line 106
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    .line 96
    :cond_1
    const-string v0, "default.file"

    .line 104
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 98
    :cond_2
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    const/4 v2, -0x1

    if-ne v2, v0, :cond_3

    .line 100
    const/4 v0, 0x0

    .line 102
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private validate()V
    .registers 3

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-nez v0, :cond_3

    .line 124
    :cond_1
    return-void

    .line 117
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify destination file or directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must not specify both destination file or directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify URL"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->validate()V

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->getDest()Ljava/io/File;

    move-result-object v0

    .line 76
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Get;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Get;-><init>()V

    .line 77
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/taskdefs/Get;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 78
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Get;->setDest(Ljava/io/File;)V

    .line 79
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Get;->setSrc(Ljava/net/URL;)V

    .line 80
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get;->execute()V

    .line 82
    return-object v0
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    .line 60
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    .line 52
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
