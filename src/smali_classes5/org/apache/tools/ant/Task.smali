.class public abstract Lorg/apache/tools/ant/Task;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Task.java"


# instance fields
.field private invalid:Z

.field private replacement:Lorg/apache/tools/ant/UnknownElement;

.field protected target:Lorg/apache/tools/ant/Target;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected taskName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected taskType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method

.method private getReplacement()Lorg/apache/tools/ant/UnknownElement;
    .registers 3

    .line 404
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    if-nez v0, :cond_53

    .line 405
    new-instance v0, Lorg/apache/tools/ant/UnknownElement;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->taskType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 407
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->taskType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/Task;->replaceChildren(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/UnknownElement;)V

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->target:Lorg/apache/tools/ant/Target;

    iget-object v1, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, p0, v1}, Lorg/apache/tools/ant/Target;->replaceChild(Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/Task;)V

    .line 415
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->maybeConfigure()V

    .line 417
    :cond_53
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->replacement:Lorg/apache/tools/ant/UnknownElement;

    return-object v0
.end method

.method private replaceChildren(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/UnknownElement;)V
    .registers 7

    .line 428
    invoke-virtual {p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 429
    new-instance v2, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    .line 431
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 432
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 433
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 434
    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/Task;->replaceChildren(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_c

    .line 436
    :cond_35
    return-void
.end method


# virtual methods
.method public final bindToOwner(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 469
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 470
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 471
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setDescription(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 474
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getTaskType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public execute()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 156
    return-void
.end method

.method public getOwningTarget()Lorg/apache/tools/ant/Target;
    .registers 2

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->target:Lorg/apache/tools/ant/Target;

    return-object v0
.end method

.method public getRuntimeConfigurableWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    if-nez v0, :cond_f

    .line 167
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 169
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method protected getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;
    .registers 2

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    return-object v0
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .registers 2

    .line 270
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .registers 3

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected handleInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->defaultInput([BII)I

    move-result v0

    return v0
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .registers 3

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 223
    return-void
.end method

.method public init()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method protected final isInvalid()Z
    .registers 2

    .line 388
    iget-boolean v0, p0, Lorg/apache/tools/ant/Task;->invalid:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    .line 279
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 291
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_a

    .line 292
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 296
    :goto_9
    return-void

    .line 294
    :cond_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Task;Ljava/lang/String;I)V

    goto :goto_9
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5

    .line 324
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_a

    .line 325
    invoke-super {p0, p1, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 329
    :goto_9
    return-void

    .line 327
    :cond_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_9
.end method

.method public log(Ljava/lang/Throwable;I)V
    .registers 4

    .line 308
    if-eqz p1, :cond_9

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 311
    :cond_9
    return-void
.end method

.method final markInvalid()V
    .registers 2

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Task;->invalid:Z

    .line 377
    return-void
.end method

.method public maybeConfigure()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lorg/apache/tools/ant/Task;->invalid:Z

    if-eqz v0, :cond_8

    .line 201
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;->getReplacement()Lorg/apache/tools/ant/UnknownElement;

    .line 205
    :cond_7
    :goto_7
    return-void

    .line 202
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    goto :goto_7
.end method

.method public final perform()V
    .registers 5

    const/4 v1, 0x0

    .line 341
    iget-boolean v0, p0, Lorg/apache/tools/ant/Task;->invalid:Z

    if-eqz v0, :cond_11

    .line 342
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;->getReplacement()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->perform()V

    .line 367
    :goto_10
    return-void

    .line 346
    :cond_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->fireTaskStarted(Lorg/apache/tools/ant/Task;)V

    .line 349
    :try_start_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->maybeConfigure()V

    .line 350
    invoke-static {p0}, Lorg/apache/tools/ant/dispatch/DispatchUtils;->execute(Ljava/lang/Object;)V
    :try_end_1e
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_18 .. :try_end_1e} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_31
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_1e} :catch_26
    .catchall {:try_start_18 .. :try_end_1e} :catchall_28

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lorg/apache/tools/ant/Project;->fireTaskFinished(Lorg/apache/tools/ant/Task;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 362
    :catch_26
    move-exception v1

    .line 364
    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 366
    :catchall_28
    move-exception v0

    :goto_29
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lorg/apache/tools/ant/Project;->fireTaskFinished(Lorg/apache/tools/ant/Task;Ljava/lang/Throwable;)V

    .line 367
    throw v0

    .line 357
    :catch_31
    move-exception v1

    .line 359
    :try_start_32
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 360
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 361
    throw v0

    .line 351
    :catch_3f
    move-exception v2

    .line 352
    invoke-virtual {v2}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne v0, v3, :cond_4f

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_28

    .line 356
    :cond_4f
    :try_start_4f
    throw v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 366
    :catchall_50
    move-exception v0

    move-object v1, v2

    goto :goto_29
.end method

.method public reconfigure()V
    .registers 3

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->reconfigure(Lorg/apache/tools/ant/Project;)V

    .line 214
    :cond_b
    return-void
.end method

.method public setOwningTarget(Lorg/apache/tools/ant/Target;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/Task;->target:Lorg/apache/tools/ant/Target;

    .line 96
    return-void
.end method

.method public setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lorg/apache/tools/ant/Task;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 186
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/Task;->taskName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/Task;->taskType:Ljava/lang/String;

    .line 135
    return-void
.end method
