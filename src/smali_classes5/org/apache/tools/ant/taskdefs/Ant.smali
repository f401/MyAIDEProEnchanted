.class public Lorg/apache/tools/ant/taskdefs/Ant;
.super Lorg/apache/tools/ant/Task;
.source "Ant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;,
        Lorg/apache/tools/ant/taskdefs/Ant$Reference;,
        Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private antFile:Ljava/lang/String;

.field private dir:Ljava/io/File;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private newProject:Lorg/apache/tools/ant/Project;

.field private out:Ljava/io/PrintStream;

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

.field private targetAttributeSet:Z

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useNativeBasedir:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    .line 88
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    .line 118
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    .line 88
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    .line 118
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 133
    return-void
.end method

.method private addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;",
            ")V"
        }
    .end annotation

    .line 613
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 637
    return-void
.end method

.method private addReferences()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getReferences()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Ant$Reference;

    .line 516
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant$Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_54

    .line 521
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent project doesn\'t contain any reference \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    goto :goto_13

    .line 528
    :cond_46
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant$Reference;->getToRefid()Ljava/lang/String;

    move-result-object v0

    .line 530
    if-nez v0, :cond_50

    move-object v0, v1

    .line 533
    :cond_50
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Ant;->copyReference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 518
    :cond_54
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the refid attribute is required for reference elements"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_5c
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    if-eqz v0, :cond_8d

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getReferences()Ljava/util/Hashtable;

    move-result-object v1

    .line 540
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6e
    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 544
    invoke-direct {p0, v0, v0}, Lorg/apache/tools/ant/taskdefs/Ant;->copyReference(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Project;->inheritIDReferences(Lorg/apache/tools/ant/Project;)V

    goto :goto_6e

    .line 548
    :cond_8d
    return-void
.end method

.method private copyReference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    .line 560
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 561
    if-nez v0, :cond_28

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No object referenced by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Can\'t copy to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 600
    :goto_27
    return-void

    .line 568
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 571
    :try_start_2c
    const-string v1, "clone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_53

    .line 573
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding clone of reference "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_53} :catch_a1

    :cond_53
    move-object v1, v0

    .line 580
    :goto_54
    nop

    instance-of v0, v1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_67

    move-object v0, v1

    .line 581
    check-cast v0, Lorg/apache/tools/ant/ProjectComponent;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 597
    :cond_61
    :goto_61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p2, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    .line 584
    :cond_67
    :try_start_67
    const-string v0, "setProject"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/apache/tools/ant/Project;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_61

    .line 587
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_82} :catch_83
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_82} :catch_85

    goto :goto_61

    .line 589
    :catch_83
    move-exception v0

    goto :goto_61

    .line 592
    :catch_85
    move-exception v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting new project instance for reference with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 576
    :catch_a1
    move-exception v1

    move-object v1, v0

    goto :goto_54
.end method

.method private initializeProject()V
    .registers 4

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V

    .line 198
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBuildListeners()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 202
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-eqz v1, :cond_8b

    .line 203
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 208
    :goto_2b
    :try_start_2b
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 209
    new-instance v0, Lorg/apache/tools/ant/DefaultLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 210
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setMessageOutputLevel(I)V

    .line 211
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setOutputPrintStream(Ljava/io/PrintStream;)V

    .line 212
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setErrorPrintStream(Ljava/io/PrintStream;)V

    .line 213
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_55} :catch_96

    .line 219
    :cond_55
    :goto_55
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-eqz v0, :cond_ae

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    .line 225
    :goto_66
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    if-nez v0, :cond_b8

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->initProperties()V

    .line 235
    :goto_6f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PropertySet;

    .line 236
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    goto :goto_75

    .line 205
    :cond_8b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2b

    .line 214
    :catch_96
    move-exception v0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ant: Can\'t set output to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;)V

    goto :goto_55

    .line 222
    :cond_ae
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->copyUserProperties(Lorg/apache/tools/ant/Project;)V

    goto :goto_66

    .line 232
    :cond_b8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    goto :goto_6f

    .line 238
    :cond_c6
    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/lang/String;Lorg/apache/tools/ant/Target;)Z
    .registers 3

    .line 422
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Target;->dependsOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private overrideProperties()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 483
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 484
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_43

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Property;

    .line 486
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 487
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 488
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_37
    :goto_37
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 490
    :cond_3b
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 494
    :cond_43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda3;

    .line 495
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 497
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-eqz v0, :cond_69

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getInheritedProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    .line 503
    :goto_68
    return-void

    .line 501
    :cond_69
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->copyInheritedProperties(Lorg/apache/tools/ant/Project;)V

    goto :goto_68
.end method

.method private reinit()V
    .registers 1

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    .line 186
    return-void
.end method


# virtual methods
.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .registers 4

    .line 713
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    if-nez v0, :cond_1c

    .line 717
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 721
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    return-void

    .line 719
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "target name must not be empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "nested target is incompatible with the target attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .registers 3

    .line 704
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-void
.end method

.method public createProperty()Lorg/apache/tools/ant/taskdefs/Property;
    .registers 4

    .line 691
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Property;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;-><init>(ZLorg/apache/tools/ant/Project;)V

    .line 692
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getNewProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 693
    const-string v1, "property"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->setTaskName(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    return-object v0
.end method

.method public execute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 340
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 341
    new-instance v1, Lorg/apache/tools/ant/util/VectorSet;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>(Ljava/util/Collection;)V

    .line 343
    :try_start_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getNewProject()Lorg/apache/tools/ant/Project;

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    if-eqz v0, :cond_22

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 349
    :cond_22
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->initializeProject()V

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-eqz v0, :cond_ea

    .line 352
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-nez v5, :cond_41

    .line 353
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    .line 354
    if-eqz v3, :cond_41

    .line 356
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 357
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 356
    const-string v6, "basedir"

    invoke-virtual {v0, v6, v5}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_41
    :goto_41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->overrideProperties()V

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    if-nez v0, :cond_4e

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 370
    :cond_4e
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calling target(s) "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_d0

    move-result v0

    if-eqz v0, :cond_f6

    const-string v0, "[default]"

    :goto_70
    :try_start_70
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in build file "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    const-string v6, "ant.file"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v6, "ant.file"

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_10e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-eqz v0, :cond_10e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 383
    const-string v0, "antcall"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 384
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "antcall must not be used at the top level."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d0
    .catchall {:try_start_70 .. :try_end_d0} :catchall_d0

    .line 449
    :catchall_d0
    move-exception v0

    move-object v1, v0

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_da
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Property;

    .line 451
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_da

    .line 361
    :cond_ea
    :try_start_ea
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    goto/16 :goto_41

    .line 374
    :cond_f6
    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 387
    :cond_fc
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 389
    const-string v1, "%s task at the top level must not invoke its own build file."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_10e
    .catchall {:try_start_ea .. :try_end_10e} :catchall_d0

    .line 393
    :cond_10e
    :try_start_10e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-static {v0, v5}, Lorg/apache/tools/ant/ProjectHelper;->configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    :try_end_113
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_10e .. :try_end_113} :catch_260
    .catchall {:try_start_10e .. :try_end_113} :catchall_d0

    .line 397
    :try_start_113
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_124

    .line 402
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    const-string v5, "ant.file"

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    const-string v6, "ant.file"

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 408
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-eqz v0, :cond_179

    .line 410
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_211

    .line 418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v5

    .line 420
    invoke-virtual {v1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda4;

    invoke-direct {v7, v5}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda6;

    .line 421
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_1fc

    .line 429
    :cond_179
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->addReferences()V

    .line 431
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v8, :cond_19c

    .line 432
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_199
    .catchall {:try_start_113 .. :try_end_199} :catchall_d0

    move-result v0

    if-nez v0, :cond_1e4

    .line 435
    :cond_19c
    :try_start_19c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entering "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->fireSubBuildStarted()V

    .line 437
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->executeTargets(Ljava/util/Vector;)V
    :try_end_1c2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_19c .. :try_end_1c2} :catch_223
    .catchall {:try_start_19c .. :try_end_1c2} :catchall_27a

    .line 443
    :try_start_1c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exiting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->fireSubBuildFinished(Ljava/lang/Throwable;)V
    :try_end_1e4
    .catchall {:try_start_1c2 .. :try_end_1e4} :catchall_d0

    .line 449
    :cond_1e4
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_250

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Property;

    .line 451
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_1ec

    .line 423
    :cond_1fc
    :try_start_1fc
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 425
    const-string v5, "%s task calling a target that depends on its parent target \'%s\'."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-direct {v1, v5, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 413
    :cond_211
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 415
    const-string v1, "%s task calling its own parent target."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_223
    .catchall {:try_start_1fc .. :try_end_223} :catchall_d0

    .line 438
    :catch_223
    move-exception v0

    .line 439
    :try_start_224
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;
    :try_end_22b
    .catchall {:try_start_224 .. :try_end_22b} :catchall_27a

    move-result-object v1

    .line 441
    :try_start_22c
    throw v1
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22d

    .line 443
    :catchall_22d
    move-exception v0

    :goto_22e
    :try_start_22e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 444
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v5, v1}, Lorg/apache/tools/ant/Project;->fireSubBuildFinished(Ljava/lang/Throwable;)V

    .line 445
    throw v0
    :try_end_250
    .catchall {:try_start_22e .. :try_end_250} :catchall_d0

    .line 454
    :cond_250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_25b

    .line 455
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 457
    :cond_25b
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 458
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 459
    return-void

    .line 394
    :catch_260
    move-exception v0

    .line 395
    :try_start_261
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_26a
    .catchall {:try_start_261 .. :try_end_26a} :catchall_d0

    .line 454
    :cond_26a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v0, :cond_275

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_275

    .line 455
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 457
    :cond_275
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 458
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 459
    throw v1

    .line 443
    :catchall_27a
    move-exception v0

    move-object v1, v2

    goto :goto_22e
.end method

.method protected getDefaultBuildFile()Ljava/lang/String;
    .registers 2

    .line 472
    const-string v0, "build.xml"

    return-object v0
.end method

.method protected getNewProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 740
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-nez v0, :cond_7

    .line 741
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->reinit()V

    .line 743
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .registers 4

    .line 325
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_9

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    .line 330
    :goto_8
    return-void

    .line 328
    :cond_9
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_9

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    .line 313
    :goto_8
    return-void

    .line 311
    :cond_9
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public handleFlush(Ljava/lang/String;)V
    .registers 4

    .line 290
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_9

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    .line 295
    :goto_8
    return-void

    .line 293
    :cond_9
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public handleInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_9

    .line 275
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->demuxInput([BII)I

    move-result v0

    .line 277
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    goto :goto_8
.end method

.method public handleOutput(Ljava/lang/String;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_9

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    .line 255
    :goto_8
    return-void

    .line 253
    :cond_9
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public init()V
    .registers 2

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->createSubProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 171
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->setJavaVersionProperty()V

    .line 172
    return-void
.end method

.method public synthetic lambda$addAlmostAll$3$Ant(Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 614
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    const-string v1, "basedir"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 616
    const-string v1, "ant.file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 636
    :cond_14
    :goto_14
    return-void

    .line 620
    :cond_15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant$1;->$SwitchMap$org$apache$tools$ant$taskdefs$Ant$PropertyType:[I

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40

    goto :goto_14

    .line 624
    :pswitch_25  #0x1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 626
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 633
    :pswitch_33  #0x3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 630
    :pswitch_39  #0x2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 621
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_39  #00000002
        :pswitch_33  #00000003
    .end packed-switch
.end method

.method public synthetic lambda$initializeProject$0$Ant(Lorg/apache/tools/ant/BuildListener;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    return-void
.end method

.method public synthetic lambda$overrideProperties$2$Ant(Lorg/apache/tools/ant/taskdefs/Property;)V
    .registers 3

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public setAntfile(Ljava/lang/String;)V
    .registers 2

    .line 659
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 647
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 648
    return-void
.end method

.method public setInheritAll(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    .line 154
    return-void
.end method

.method public setInheritRefs(Z)V
    .registers 2

    .line 162
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    .line 163
    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .registers 2

    .line 682
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    .line 683
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 4

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 671
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    .line 673
    return-void

    .line 669
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "target attribute must not be empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseNativeBasedir(Z)V
    .registers 2

    .line 144
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    .line 145
    return-void
.end method
