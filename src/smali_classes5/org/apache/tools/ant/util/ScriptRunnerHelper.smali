.class public Lorg/apache/tools/ant/util/ScriptRunnerHelper;
.super Ljava/lang/Object;
.source "ScriptRunnerHelper.java"


# instance fields
.field private compiled:Z

.field private cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

.field private encoding:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private manager:Ljava/lang/String;

.field private projectComponent:Lorg/apache/tools/ant/ProjectComponent;

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private scriptLoader:Ljava/lang/ClassLoader;

.field private setBeans:Z

.field private srcFile:Ljava/io/File;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    .line 35
    const-string v0, "auto"

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    .line 41
    iput-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;

    .line 42
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    return-void
.end method

.method private generateClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 227
    monitor-exit p0

    .line 234
    :goto_6
    return-object v0

    .line 229
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_17

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1f

    .line 231
    monitor-exit p0

    goto :goto_6

    .line 233
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1f

    .line 234
    monitor-exit p0

    goto :goto_6

    .line 225
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    .registers 3

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_e

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_11

    .line 242
    invoke-static {v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getDelegate(Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    .line 244
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    return-object v0

    .line 240
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access classpath without a project component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .registers 5

    .line 251
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;-><init>(Lorg/apache/tools/ant/Project;)V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->generateClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 263
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->text:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCompiled()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .registers 3

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setCompiled(Z)V

    .line 60
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 62
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setEncoding(Ljava/lang/String;)V

    .line 64
    :cond_10
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    if-eqz v1, :cond_17

    .line 65
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setSrc(Ljava/io/File;)V

    .line 67
    :cond_17
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->text:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 68
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addText(Ljava/lang/String;)V

    .line 70
    :cond_1e
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v1, :cond_25

    .line 71
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->loadResources(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 73
    :cond_25
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    if-eqz v1, :cond_2f

    .line 74
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->bindToComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 78
    :goto_2e
    return-object v0

    .line 76
    :cond_2f
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->bindToComponentMinimum(Lorg/apache/tools/ant/ProjectComponent;)V

    goto :goto_2e
.end method

.method public getSrc()Ljava/io/File;
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;

    .line 223
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 97
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspathref(Lorg/apache/tools/ant/types/Reference;)V

    .line 107
    return-void
.end method

.method public setCompiled(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    .line 193
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    .line 50
    return-void
.end method

.method public setSetBeans(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    .line 215
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    .line 116
    return-void
.end method
