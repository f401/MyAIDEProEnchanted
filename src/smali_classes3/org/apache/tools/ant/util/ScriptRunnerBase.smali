.class public abstract Lorg/apache/tools/ant/util/ScriptRunnerBase;
.super Ljava/lang/Object;
.source "ScriptRunnerBase.java"


# instance fields
.field private final beans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private compiled:Z

.field private encoding:Ljava/lang/String;

.field private keepEngine:Z

.field private language:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private script:Ljava/lang/String;

.field private scriptLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    return-void
.end method

.method private readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7

    .line 242
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 242
    :catchall_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addBean(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/IntStream;->skip(J)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method

.method public addBeans(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 86
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public bindToComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 4

    .line 334
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    .line 335
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 336
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfTargets()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfReferences()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 339
    const-string v0, "project"

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    const-string v0, "self"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public bindToComponentMinimum(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 4

    .line 349
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    .line 350
    const-string v1, "project"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string v0, "self"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method protected checkLanguage()V
    .registers 3

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 360
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "script language must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearScript()V
    .registers 2

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public abstract evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract executeScript(Ljava/lang/String;)V
.end method

.method protected getBeans()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    return-object v0
.end method

.method public final getCompiled()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->compiled:Z

    return v0
.end method

.method public getKeepEngine()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getManagerName()Ljava/lang/String;
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 324
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-object v0
.end method

.method protected getScriptClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->scriptLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public synthetic lambda$addBeans$0$ScriptRunnerBase(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 78
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 6

    .line 257
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/StringResource;

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/PropertyResource;

    if-eqz v0, :cond_2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lorg/apache/tools/ant/types/resources/PropertyResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v1

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 268
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 271
    :catch_1
    move-exception v0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - it is not readable"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public loadResources(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 284
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;)V

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/ResourceCollection;->forEach(Ljava/util/function/Consumer;)V

    .line 285
    return-void
.end method

.method protected replaceContextLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->getScriptClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setScriptClassLoader(Ljava/lang/ClassLoader;)V

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->getScriptClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 376
    return-object v0
.end method

.method protected restoreContextLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 386
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 388
    return-void
.end method

.method public final setCompiled(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->compiled:Z

    .line 194
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->encoding:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setKeepEngine(Z)V
    .registers 2

    .line 176
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    .line 177
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    .line 317
    return-void
.end method

.method public setScriptClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->scriptLoader:Ljava/lang/ClassLoader;

    .line 161
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 6

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->encoding:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 228
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    :cond_0
    return-void

    .line 226
    :cond_1
    :try_start_3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public abstract supportsLanguage()Z
.end method
