.class public Lorg/apache/tools/ant/taskdefs/Classloader;
.super Lorg/apache/tools/ant/Task;
.source "Classloader.java"


# static fields
.field public static final SYSTEM_LOADER_REF:Ljava/lang/String; = "ant.coreLoader"


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private name:Ljava/lang/String;

.field private parentFirst:Z

.field private parentName:Ljava/lang/String;

.field private reset:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 71
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 148
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    :try_start_0
    const-string v0, "only"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "build.sysclasspath"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const-string v0, "ant.coreLoader"

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 162
    const-string v5, "ant.coreLoader"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    :cond_0
    const-string v0, "Changing the system loader is disabled by build.sysclasspath=only"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v4, v0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    if-eqz v5, :cond_4

    move-object v0, v2

    .line 178
    :cond_4
    if-eqz v0, :cond_5

    instance-of v5, v0, Lorg/apache/tools/ant/AntClassLoader;

    if-nez v5, :cond_5

    .line 179
    const-string v0, "Referenced object is not an AntClassLoader"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_5
    :try_start_2
    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    .line 186
    if-eqz v0, :cond_9

    .line 188
    :goto_1
    if-nez v0, :cond_a

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    instance-of v5, v0, Ljava/lang/ClassLoader;

    if-nez v5, :cond_6

    move-object v0, v2

    .line 198
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 202
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting parent loader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 210
    check-cast v0, Ljava/lang/ClassLoader;

    .line 211
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 210
    invoke-static {v0, v2, v5, v6}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 218
    const-string v2, "org.apache.tools.ant.taskdefs.optional"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/Project;->setCoreLoader(Ljava/lang/ClassLoader;)V

    move-object v2, v0

    .line 223
    :goto_3
    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 225
    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding to class loader "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/AntClassLoader;->addPathElement(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 224
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v3, v1

    .line 186
    goto/16 :goto_1

    :cond_a
    move-object v2, v0

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Path;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 128
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setParentFirst(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 109
    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setReset(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    .line 91
    return-void
.end method

.method public setReverse(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 101
    return-void
.end method
