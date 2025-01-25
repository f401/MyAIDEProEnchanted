.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibResolveTask.java"


# instance fields
.field private checkExtension:Z

.field private failOnError:Z

.field private propertyName:Ljava/lang/String;

.field private requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

.field private final resolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    .line 68
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    return-void
.end method

.method private checkExtension(Ljava/io/File;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 217
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    if-nez v1, :cond_34

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting property to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without verifying library satisfies extension"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 220
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->setLibraryProperty(Ljava/io/File;)V

    .line 236
    :goto_33
    return-void

    .line 222
    :cond_34
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to see if it satisfies extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 224
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    array-length v2, v1

    :goto_5a
    if-ge v0, v2, :cond_6d

    aget-object v3, v1, v0

    .line 226
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 227
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->setLibraryProperty(Ljava/io/File;)V

    goto :goto_33

    .line 225
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 231
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " skipped as it does not satisfy extension"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 234
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_90
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "File %s is not a file"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 212
    :cond_9c
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "File %s does not exist"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private missingExtension()V
    .registers 4

    .line 195
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    if-nez v0, :cond_f

    .line 199
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "Unable to resolve extension to a file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 200
    return-void

    .line 197
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to resolve extension to a file"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLibraryProperty(Ljava/io/File;)V
    .registers 5

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-eqz v0, :cond_9

    .line 261
    return-void

    .line 259
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Extension element must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property attribute must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConfiguredAnt(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-nez v0, :cond_b

    .line 139
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 140
    return-void

    .line 136
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not specify extension to resolve multiple times."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredLocation(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addConfiguredUrl(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public execute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 149
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->validate()V

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_4f

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property Already set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    if-nez v1, :cond_49

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 187
    :goto_48
    return-void

    .line 158
    :cond_49
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_4f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching for extension using Resolver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 168
    :try_start_79
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;->resolve(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/Project;)Ljava/io/File;
    :try_end_82
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_79 .. :try_end_82} :catch_ae

    move-result-object v1

    .line 171
    :try_start_83
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension(Ljava/io/File;)V
    :try_end_86
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_48

    .line 173
    :catch_87
    move-exception v3

    .line 174
    :try_start_88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned by resolver failed to satisfy extension due to: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v4, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_ad
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_88 .. :try_end_ad} :catch_ae

    goto :goto_55

    .line 178
    :catch_ae
    move-exception v1

    .line 179
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve extension to file using resolver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " due to: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v3, v0, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_55

    .line 186
    :cond_d0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->missingExtension()V

    goto/16 :goto_48
.end method

.method public setCheckExtension(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    .line 89
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    .line 98
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    .line 79
    return-void
.end method
