.class public Lorg/apache/tools/ant/taskdefs/WhichResource;
.super Lorg/apache/tools/ant/Task;
.source "WhichResource.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private property:Ljava/lang/String;

.field private resource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private validate()V
    .registers 4

    const/4 v1, 0x1

    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classname:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_1
    if-eqz v0, :cond_4

    .line 111
    if-gt v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->property:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 117
    return-void

    .line 115
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No property defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of classname or resource can be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of classname or resource must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x4

    .line 125
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->validate()V

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_4

    .line 127
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using user supplied classpath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 137
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classname:Ljava/lang/String;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 150
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/WhichResource;->log(Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->property:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    .line 162
    :cond_3
    return-void

    .line 131
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 132
    const-string v1, "only"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using system classpath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 147
    :cond_5
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "One of class or resource is required"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_1
    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public setClass(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classname:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WhichResource;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 94
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->property:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WhichResource;->resource:Ljava/lang/String;

    .line 171
    return-void
.end method
