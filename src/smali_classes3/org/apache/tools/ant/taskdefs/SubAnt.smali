.class public Lorg/apache/tools/ant/taskdefs/SubAnt;
.super Lorg/apache/tools/ant/Task;
.source "SubAnt.java"


# instance fields
.field private ant:Lorg/apache/tools/ant/taskdefs/Ant;

.field private antfile:Ljava/lang/String;

.field private buildpath:Lorg/apache/tools/ant/types/Path;

.field private failOnError:Z

.field private genericantfile:Ljava/io/File;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private output:Ljava/lang/String;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Ant$Reference;",
            ">;"
        }
    .end annotation
.end field

.field private subTarget:Ljava/lang/String;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 66
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;

    .line 69
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    .line 70
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    .line 71
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    return-void
.end method

.method private static copyProperty(Lorg/apache/tools/ant/taskdefs/Property;Lorg/apache/tools/ant/taskdefs/Property;)V
    .registers 3

    .line 607
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setName(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setValue(Ljava/lang/String;)V

    .line 612
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setFile(Ljava/io/File;)V

    .line 615
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getResource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setResource(Ljava/lang/String;)V

    .line 618
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefix(Ljava/lang/String;)V

    .line 621
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 624
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 625
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setEnvironment(Ljava/lang/String;)V

    .line 627
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 628
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 630
    :cond_6
    return-void
.end method

.method private createAntTask(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Ant;
    .registers 5

    .line 570
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Ant;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 571
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    .line 572
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setTarget(Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setOutput(Ljava/lang/String;)V

    .line 581
    :cond_1
    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setDir(Ljava/io/File;)V

    .line 587
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritAll(Z)V

    .line 589
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 591
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 593
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritRefs(Z)V

    .line 595
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 597
    return-object v0

    .line 584
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setUseNativeBasedir(Z)V

    goto :goto_0
.end method

.method private execute(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez v1, :cond_5

    .line 293
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 325
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/SubAnt;->createAntTask(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Ant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setAntfile(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 306
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->execute()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_1
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure for target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 323
    :catchall_1
    move-exception v0

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 324
    throw v0

    .line 316
    :cond_3
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure for target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 309
    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    :cond_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getBuildpath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 546
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method private isHardError(Ljava/lang/Throwable;)Z
    .registers 3

    .line 329
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 332
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$createAntTask$0(Lorg/apache/tools/ant/taskdefs/Ant;Lorg/apache/tools/ant/taskdefs/Property;)V
    .registers 3

    .line 589
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->createProperty()Lorg/apache/tools/ant/taskdefs/Property;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->copyProperty(Lorg/apache/tools/ant/taskdefs/Property;Lorg/apache/tools/ant/taskdefs/Property;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 509
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 510
    return-void
.end method

.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .registers 4

    .line 387
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void

    .line 388
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "target name must not be empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDirset(Lorg/apache/tools/ant/types/DirSet;)V
    .registers 2

    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 473
    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 2

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 500
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 487
    return-void
.end method

.method public addProperty(Lorg/apache/tools/ant/taskdefs/Property;)V
    .registers 3

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .registers 3

    .line 449
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public createBuildpath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 527
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createBuildpathElement()Lorg/apache/tools/ant/types/Path$PathElement;
    .registers 2

    .line 537
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 13

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b

    .line 193
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v9

    .line 194
    array-length v0, v9

    .line 195
    if-ge v0, v1, :cond_1

    .line 196
    const-string v0, "No sub-builds to iterate on"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 274
    :cond_0
    return-void

    .line 205
    :cond_1
    array-length v10, v9

    move-object v1, v2

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_a

    aget-object v0, v9, v7

    .line 212
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_f

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 216
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entering directory: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 218
    :goto_1
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 225
    :goto_2
    :try_start_3
    invoke-direct {p0, v5, v3}, Lorg/apache/tools/ant/taskdefs/SubAnt;->execute(Ljava/io/File;Ljava/io/File;)V

    .line 226
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leaving directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v2

    move-object v4, v0

    :goto_3
    move-object v0, v3

    move-object v6, v4

    .line 246
    :goto_4
    if-eqz v0, :cond_d

    .line 247
    instance-of v3, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v3, :cond_9

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed with message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {p0, v3, v8}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 252
    if-nez v1, :cond_8

    .line 253
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 265
    :goto_5
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaving directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v11}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 246
    :cond_2
    :goto_6
    add-int/lit8 v3, v7, 0x1

    move-object v1, v0

    move v7, v3

    goto/16 :goto_0

    .line 222
    :cond_3
    :try_start_4
    new-instance v5, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v2

    goto/16 :goto_2

    .line 237
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    move-object v6, v2

    .line 238
    :goto_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 239
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaving directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 242
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    move-object v0, v3

    move-object v5, v4

    .line 244
    goto/16 :goto_4

    .line 229
    :catch_0
    move-exception v3

    move-object v5, v2

    move-object v0, v2

    .line 230
    :goto_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 231
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaving directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 234
    :cond_6
    throw v3

    :cond_7
    move-object v4, v0

    .line 236
    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    .line 252
    goto/16 :goto_5

    .line 256
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed with message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p0, v3, v8}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 259
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 260
    if-nez v1, :cond_c

    .line 261
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_5

    .line 271
    :cond_a
    if-eqz v1, :cond_0

    .line 272
    throw v1

    .line 190
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No buildpath specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :catch_1
    move-exception v3

    move-object v5, v4

    move-object v0, v2

    goto :goto_8

    :catch_2
    move-exception v3

    move-object v5, v4

    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_8

    .line 237
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v2

    goto/16 :goto_7

    :catchall_2
    move-exception v3

    move-object v6, v0

    goto/16 :goto_7

    :catchall_3
    move-exception v3

    move-object v4, v5

    move-object v6, v0

    goto/16 :goto_7

    :cond_c
    move-object v0, v1

    goto/16 :goto_5

    :cond_d
    move-object v0, v1

    goto/16 :goto_6

    :cond_e
    move-object v3, v2

    move-object v4, v0

    goto/16 :goto_3

    :cond_f
    move-object v0, v2

    goto/16 :goto_1

    :cond_10
    move-object v3, v2

    move-object v0, v2

    move-object v5, v4

    goto/16 :goto_2
.end method

.method protected getDefaultBuildFile()Ljava/lang/String;
    .registers 2

    .line 93
    const-string v0, "build.xml"

    return-object v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorFlush(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorOutput(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFlush(Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleFlush(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Ant;->handleInput([BII)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    goto :goto_0
.end method

.method public handleOutput(Ljava/lang/String;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleOutput(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAntfile(Ljava/lang/String;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setBuildpath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 518
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 519
    return-void
.end method

.method public setBuildpathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 558
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->createBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 559
    return-void
.end method

.method public setFailonerror(Z)V
    .registers 2

    .line 367
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    .line 368
    return-void
.end method

.method public setGenericAntfile(Ljava/io/File;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;

    .line 359
    return-void
.end method

.method public setInheritall(Z)V
    .registers 2

    .line 419
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    .line 420
    return-void
.end method

.method public setInheritrefs(Z)V
    .registers 2

    .line 429
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    .line 430
    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 399
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    .line 400
    return-void
.end method
