.class public abstract Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "AbstractClasspathResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;
    }
.end annotation


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private loader:Lorg/apache/tools/ant/types/Reference;

.field private parentFirst:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->parentFirst:Z

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->checkChildrenAllowed()V

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_12

    .line 65
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 67
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    monitor-exit p0

    .line 253
    :goto_8
    return-void

    .line 245
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 246
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/Resource;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_20

    .line 253
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 248
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1b

    .line 249
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 251
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->setChecked(Z)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 241
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getClassLoader()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;
    .registers 5

    const/4 v1, 0x0

    .line 205
    const/4 v0, 0x0

    .line 206
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    if-eqz v2, :cond_c

    .line 207
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 210
    :cond_c
    if-nez v0, :cond_42

    .line 211
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 212
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    const-string v2, "ignore"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 213
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->parentFirst:Z

    if-eqz v2, :cond_48

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 221
    :goto_2a
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    if-nez v2, :cond_2f

    const/4 v1, 0x1

    .line 225
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    if-eqz v2, :cond_42

    if-eqz v0, :cond_42

    .line 226
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_42
    new-instance v2, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;-><init>(Ljava/lang/ClassLoader;Z)V

    return-object v2

    .line 216
    :cond_48
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    .line 216
    invoke-static {v2, v3, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    goto :goto_2a

    .line 223
    :cond_59
    const-class v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2f
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 90
    :goto_e
    return-object v0

    .line 89
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->dieOnCircularReference()V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_e
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 177
    :goto_e
    return-object v0

    .line 174
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->dieOnCircularReference()V

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getClassLoader()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->needsCleanup()Z

    move-result v0

    if-nez v0, :cond_25

    .line 178
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->openInputStream(Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_e

    .line 179
    :cond_25
    new-instance v0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->openInputStream(Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;-><init>(Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;Ljava/io/InputStream;Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;)V

    goto :goto_e
.end method

.method public getLoader()Lorg/apache/tools/ant/types/Reference;
    .registers 2

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    .line 102
    :goto_e
    return-object v0

    .line 101
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->dieOnCircularReference()V

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    goto :goto_e
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
    .registers 2

    .line 257
    const-class v0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    return-object v0
.end method

.method public isExists()Z
    .registers 4

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->isExists()Z

    move-result v0

    .line 160
    :cond_f
    :goto_f
    return v0

    .line 156
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->dieOnCircularReference()V

    .line 157
    :try_start_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_23

    const/4 v0, 0x1

    .line 159
    :goto_1a
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_f

    :catch_20
    move-exception v0

    move v0, v1

    .line 160
    goto :goto_f

    :cond_23
    move v0, v1

    .line 158
    goto :goto_1a
.end method

.method protected abstract openInputStream(Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 49
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->checkAttributesAllowed()V

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_e

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 55
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->setChecked(Z)V

    .line 56
    return-void

    .line 53
    :cond_e
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_9
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->checkAttributesAllowed()V

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 79
    return-void
.end method

.method public setLoaderRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 2

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->checkAttributesAllowed()V

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    .line 120
    return-void
.end method

.method public setParentFirst(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->parentFirst:Z

    .line 132
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->loader:Lorg/apache/tools/ant/types/Reference;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_c

    .line 143
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 144
    return-void

    .line 141
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method
