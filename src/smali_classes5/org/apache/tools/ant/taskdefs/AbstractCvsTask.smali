.class public abstract Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.super Lorg/apache/tools/ant/Task;
.source "AbstractCvsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMMAND:Ljava/lang/String; = "checkout"

.field public static final DEFAULT_COMPRESSION_LEVEL:I = 0x3

.field private static final MAXIMUM_COMRESSION_LEVEL:I = 0x9


# instance fields
.field private append:Z

.field private cmd:Lorg/apache/tools/ant/types/Commandline;

.field private command:Ljava/lang/String;

.field private commandlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Commandline;",
            ">;"
        }
    .end annotation
.end field

.field private compression:I

.field private cvsPackage:Ljava/lang/String;

.field private cvsRoot:Ljava/lang/String;

.field private cvsRsh:Ljava/lang/String;

.field private dest:Ljava/io/File;

.field private error:Ljava/io/File;

.field private errorStream:Ljava/io/OutputStream;

.field private executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

.field private failOnError:Z

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;"
        }
    .end annotation
.end field

.field private noexec:Z

.field private output:Ljava/io/File;

.field private outputStream:Ljava/io/OutputStream;

.field private passFile:Ljava/io/File;

.field private port:I

.field private quiet:Z

.field private reallyquiet:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    .line 93
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    .line 103
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    .line 108
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    .line 113
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    .line 118
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    .line 123
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    .line 149
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    return-void
.end method

.method private executeToString(Lorg/apache/tools/ant/taskdefs/Execute;)Ljava/lang/String;
    .registers 7

    .line 419
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCvsPassword(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_36

    .line 425
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 426
    const-string v2, ""

    const-string v3, "%n%nenvironment:%n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$executeToString$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 425
    const-string v0, "%n\t%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeCvsPassword(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7

    const/16 v4, 0x3a

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    const-string v0, "-d:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 445
    if-ltz v0, :cond_39

    .line 446
    const/16 v2, 0x40

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 447
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 448
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 449
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 450
    if-ltz v2, :cond_39

    if-le v3, v0, :cond_39

    if-ge v3, v2, :cond_39

    .line 451
    add-int/lit8 v0, v3, 0x1

    :goto_2d
    if-ge v0, v2, :cond_39

    .line 452
    add-int/lit8 v3, v0, 0x1

    const-string v4, "*"

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 456
    :cond_39
    return-object v1
.end method


# virtual methods
.method public addCommandArgument(Ljava/lang/String;)V
    .registers 3

    .line 606
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public addCommandArgument(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .registers 4

    .line 620
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 3

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V

    .line 783
    return-void
.end method

.method public addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V
    .registers 5

    .line 793
    if-nez p1, :cond_3

    .line 802
    :goto_2
    return-void

    .line 796
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->configureCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    .line 797
    if-eqz p2, :cond_f

    .line 798
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 800
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addModule(Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;)V
    .registers 3

    .line 831
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    return-void
.end method

.method protected configureCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 6

    const/4 v3, 0x1

    .line 741
    if-nez p1, :cond_4

    .line 767
    :cond_3
    :goto_3
    return-void

    .line 744
    :cond_4
    const-string v0, "cvs"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 746
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 748
    :cond_16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;

    .line 749
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1c

    .line 751
    :cond_34
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    if-lez v0, :cond_56

    const/16 v1, 0x9

    if-gt v0, v1, :cond_56

    .line 753
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 755
    :cond_56
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    if-nez v0, :cond_67

    .line 756
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-q"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 758
    :cond_67
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    if-eqz v0, :cond_74

    .line 759
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-Q"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 761
    :cond_74
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    if-eqz v0, :cond_81

    .line 762
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-n"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 764
    :cond_81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 765
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x1

    .line 390
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    const-string v0, "checkout"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 397
    :cond_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 398
    const/4 v0, 0x0

    .line 399
    if-eqz v1, :cond_63

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 401
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addConfiguredCommandline(Lorg/apache/tools/ant/types/Commandline;Z)V

    move-object v1, v0

    .line 406
    :goto_32
    :try_start_32
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_4f

    .line 408
    if-eqz v1, :cond_41

    .line 409
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    .line 411
    :cond_41
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 414
    return-void

    .line 408
    :catchall_4f
    move-exception v0

    if-eqz v1, :cond_55

    .line 409
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V

    .line 411
    :cond_55
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCommand(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 413
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 414
    throw v0

    :cond_63
    move-object v1, v0

    goto :goto_32
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .line 656
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getCvsRoot()Ljava/lang/String;
    .registers 2

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getCvsRsh()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    return-object v0
.end method

.method public getDest()Ljava/io/File;
    .registers 2

    .line 559
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    return-object v0
.end method

.method protected getErrorStream()Ljava/io/OutputStream;
    .registers 5

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    if-nez v0, :cond_28

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    if-eqz v0, :cond_36

    .line 243
    :try_start_8
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    invoke-static {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setErrorStream(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_2b

    .line 255
    :cond_28
    :goto_28
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    return-object v0

    .line 247
    :catch_2b
    move-exception v0

    .line 248
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 251
    :cond_36
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setErrorStream(Ljava/io/OutputStream;)V

    goto :goto_28
.end method

.method protected getExecuteStreamHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .registers 4

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    if-nez v0, :cond_14

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 175
    new-instance v1, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 174
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 178
    :cond_14
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    return-object v0
.end method

.method protected getModules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->modules:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .registers 5

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_28

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    if-eqz v0, :cond_36

    .line 204
    :try_start_8
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    invoke-static {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_2b

    .line 216
    :cond_28
    :goto_28
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    return-object v0

    .line 208
    :catch_2b
    move-exception v0

    .line 209
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 212
    :cond_36
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_28
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPassFile()Ljava/io/File;
    .registers 2

    .line 537
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 520
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 585
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->tag:Ljava/lang/String;

    return-object v0
.end method

.method protected removeCommandline(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 3

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->commandlines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 775
    return-void
.end method

.method protected runCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 271
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    .line 273
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    if-lez v1, :cond_37

    .line 274
    new-instance v1, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    .line 275
    const-string v2, "CVS_CLIENT_PORT"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 276
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 281
    new-instance v1, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    .line 282
    const-string v2, "CVS_PSERVER_PORT"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 283
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 291
    :cond_37
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    if-nez v1, :cond_6b

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "cygwin.user.home"

    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ".cvspass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 299
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setPassfile(Ljava/io/File;)V

    .line 303
    :cond_6b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    if-eqz v1, :cond_a9

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_12e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 305
    new-instance v1, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    .line 306
    const-string v2, "CVS_PASSFILE"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using cvs passfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 322
    :cond_a9
    :goto_a9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    if-eqz v1, :cond_c3

    .line 323
    new-instance v1, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    .line 324
    const-string v2, "CVS_RSH"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 333
    :cond_c3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getExecuteStreamHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 336
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    if-nez v2, :cond_e2

    .line 337
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    .line 340
    :cond_e2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ef

    .line 341
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 344
    :cond_ef
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 345
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 349
    :try_start_102
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeToString(Lorg/apache/tools/ant/taskdefs/Execute;)Ljava/lang/String;

    move-result-object v0

    .line 351
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    .line 355
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-eqz v2, :cond_12d

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_12a} :catch_18d
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_102 .. :try_end_12a} :catch_1d4
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_12a} :catch_1ab

    move-result v2

    if-nez v2, :cond_170

    .line 379
    :cond_12d
    :goto_12d
    return-void

    .line 311
    :cond_12e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_153

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cvs passfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ignored as it is not readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto/16 :goto_a9

    .line 316
    :cond_153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cvs passfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ignored as it is not a file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto/16 :goto_a9

    .line 356
    :cond_170
    :try_start_170
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    .line 358
    const-string v3, "cvs exited with error code %s%nCommand line was [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_18d} :catch_18d
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_170 .. :try_end_18d} :catch_1d4
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_18d} :catch_1ab

    .line 360
    :catch_18d
    move-exception v0

    .line 361
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_1fa

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto :goto_12d

    .line 374
    :catch_1ab
    move-exception v0

    .line 375
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_1ca

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto/16 :goto_12d

    .line 376
    :cond_1ca
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 365
    :catch_1d4
    move-exception v0

    .line 366
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    if-nez v1, :cond_1f9

    .line 369
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 370
    if-nez v1, :cond_204

    .line 373
    :goto_1df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->log(Ljava/lang/String;I)V

    goto/16 :goto_12d

    .line 367
    :cond_1f9
    throw v0

    .line 362
    :cond_1fa
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_204
    move-object v0, v1

    goto :goto_1df
.end method

.method public setAppend(Z)V
    .registers 2

    .line 707
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->append:Z

    .line 708
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .registers 2

    .line 645
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->command:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setCompression(Z)V
    .registers 3

    .line 820
    if-eqz p1, :cond_7

    .line 821
    const/4 v0, 0x3

    .line 820
    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->setCompressionLevel(I)V

    .line 822
    return-void

    .line 821
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setCompressionLevel(I)V
    .registers 2

    .line 810
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->compression:I

    .line 811
    return-void
.end method

.method public setCvsRoot(Ljava/lang/String;)V
    .registers 3

    .line 468
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 469
    const/4 p1, 0x0

    .line 472
    :cond_d
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRoot:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setCvsRsh(Ljava/lang/String;)V
    .registers 3

    .line 490
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 491
    const/4 p1, 0x0

    .line 494
    :cond_d
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsRsh:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 3

    .line 630
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 631
    const-string v0, "-D"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    .line 634
    :cond_14
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->dest:Ljava/io/File;

    .line 551
    return-void
.end method

.method public setError(Ljava/io/File;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->error:Ljava/io/File;

    .line 700
    return-void
.end method

.method protected setErrorStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->errorStream:Ljava/io/OutputStream;

    .line 226
    return-void
.end method

.method public setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->executeStreamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    .line 165
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 718
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->failOnError:Z

    .line 719
    return-void
.end method

.method public setNoexec(Z)V
    .registers 2

    .line 682
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->noexec:Z

    .line 683
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 2

    .line 690
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->output:Ljava/io/File;

    .line 691
    return-void
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->outputStream:Ljava/io/OutputStream;

    .line 188
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->cvsPackage:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public setPassfile(Ljava/io/File;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->passFile:Ljava/io/File;

    .line 530
    return-void
.end method

.method public setPort(I)V
    .registers 2

    .line 512
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->port:I

    .line 513
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 664
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->quiet:Z

    .line 665
    return-void
.end method

.method public setReallyquiet(Z)V
    .registers 2

    .line 673
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->reallyquiet:Z

    .line 674
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 4

    .line 594
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 595
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->tag:Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->addCommandArgument(Ljava/lang/String;)V

    .line 598
    :cond_22
    return-void
.end method
