.class public Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;
.super Ljava/lang/Object;
.source "AntResolver.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;


# instance fields
.field private antfile:Ljava/io/File;

.field private destfile:Ljava/io/File;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate()V
    .registers 3

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->antfile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->destfile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify destination file"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify Buildfile"

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
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->validate()V

    .line 74
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Ant;-><init>()V

    .line 75
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Ant;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritAll(Z)V

    .line 77
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->antfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setAntfile(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->antfile:Ljava/io/File;

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->target:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setTarget(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->execute()V

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->destfile:Ljava/io/File;

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAntfile(Ljava/io/File;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->antfile:Ljava/io/File;

    .line 44
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->destfile:Ljava/io/File;

    .line 52
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->target:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->antfile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;->destfile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
