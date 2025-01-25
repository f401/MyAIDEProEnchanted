.class public abstract Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;
.super Lorg/apache/tools/ant/Task;
.source "MSVSS.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;,
        Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;
    }
.end annotation


# instance fields
.field private autoResponse:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private dateFormat:Ljava/text/DateFormat;

.field private failOnError:Z

.field private fromDate:Ljava/lang/String;

.field private fromLabel:Ljava/lang/String;

.field private getLocalCopy:Z

.field private label:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private numDays:I

.field private outputFileName:Ljava/lang/String;

.field private quiet:Z

.field private recursive:Z

.field private serverPath:Ljava/lang/String;

.field private ssDir:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

.field private toDate:Ljava/lang/String;

.field private toLabel:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private vssLogin:Ljava/lang/String;

.field private vssPath:Ljava/lang/String;

.field private writable:Z

.field private writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 53
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    .line 87
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    .line 89
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    .line 91
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    .line 93
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    .line 95
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    .line 97
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    .line 99
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    .line 101
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    return-void
.end method

.method private calcDate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 735
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 736
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 737
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 738
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatCommandLine(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 750
    if-lez v0, :cond_36

    .line 751
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 752
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 754
    add-int/lit8 v0, v0, 0x1

    :goto_2c
    if-ge v0, v2, :cond_36

    .line 755
    const/16 v3, 0x2a

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 758
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFailOnError()Z
    .registers 3

    .line 642
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getWritableFiles()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getShortLabel()Ljava/lang/String;
    .registers 4

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_2b

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label is longer than 31 characters, truncated to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 441
    :goto_2a
    return-object v0

    .line 438
    :cond_2b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    goto :goto_2a
.end method

.method private run(Lorg/apache/tools/ant/types/Commandline;)I
    .registers 8

    .line 695
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 701
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 702
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object v0

    .line 703
    if-nez v0, :cond_19

    .line 704
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 706
    :cond_19
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 707
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    array-length v0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSDIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 710
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 713
    :cond_3d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 714
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 715
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 718
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_5f

    move-result v0

    return v0

    .line 719
    :catch_5f
    move-exception v0

    .line 720
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method


# virtual methods
.method abstract buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->buildCmdLine()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 184
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getFailOnError()Z

    move-result v2

    if-nez v2, :cond_15

    .line 189
    :cond_14
    return-void

    .line 185
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->formatCommandLine(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " With a return code of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getAutoresponse()Ljava/lang/String;
    .registers 3

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 519
    const-string v0, "-I-"

    .line 526
    :goto_6
    return-object v0

    .line 521
    :cond_7
    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 522
    const-string v0, "-I-Y"

    goto :goto_6

    .line 523
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 524
    const-string v0, "-I-N"

    goto :goto_6

    .line 526
    :cond_1f
    const-string v0, "-I-"

    goto :goto_6
.end method

.method protected getComment()Ljava/lang/String;
    .registers 3

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, "-C-"

    goto :goto_17
.end method

.method public getFileTimeStamp()Ljava/lang/String;
    .registers 3

    .line 656
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    if-nez v0, :cond_7

    .line 657
    const-string v0, ""

    .line 663
    :goto_6
    return-object v0

    .line 658
    :cond_7
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    const-string v0, "-GTM"

    goto :goto_6

    .line 660
    :cond_16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 661
    const-string v0, "-GTU"

    goto :goto_6

    .line 663
    :cond_27
    const-string v0, "-GTC"

    goto :goto_6
.end method

.method protected getGetLocalCopy()Ljava/lang/String;
    .registers 2

    .line 634
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    if-nez v0, :cond_7

    const-string v0, "-G-"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getLabel()Ljava/lang/String;
    .registers 3

    .line 419
    const-string v0, ""

    .line 420
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getShortLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_21
    return-object v0
.end method

.method protected getLocalpath()Ljava/lang/String;
    .registers 5

    .line 487
    const-string v0, ""

    .line 488
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 490
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_41

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_22
    const/4 v0, 0x1

    .line 493
    :goto_23
    if-eqz v0, :cond_57

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    .line 500
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-GL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_54
    return-object v0

    .line 492
    :cond_55
    const/4 v0, 0x0

    goto :goto_23

    .line 494
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " creation was not successful for an unknown reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getLogin()Ljava/lang/String;
    .registers 3

    .line 536
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method protected getOutput()Ljava/lang/String;
    .registers 3

    .line 544
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method protected getQuiet()Ljava/lang/String;
    .registers 2

    .line 394
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    if-eqz v0, :cond_7

    const-string v0, "-O-"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getRecursive()Ljava/lang/String;
    .registers 2

    .line 402
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    if-eqz v0, :cond_7

    const-string v0, "-R"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getSSCommand()Ljava/lang/String;
    .registers 3

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 375
    const-string v0, "ss"

    .line 377
    :goto_6
    return-object v0

    :cond_7
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 378
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected getStyle()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    const-string v0, ""

    goto :goto_4
.end method

.method protected getUser()Ljava/lang/String;
    .registers 3

    .line 552
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 3

    .line 478
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method protected getVersionDate()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/high16 v2, -0x80000000

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    if-nez v1, :cond_11

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-ne v1, v2, :cond_11

    .line 603
    const-string v0, ""

    .line 624
    :goto_10
    return-object v0

    .line 605
    :cond_11
    if-eqz v0, :cond_35

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Vd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 607
    :cond_35
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-eq v1, v2, :cond_7f

    .line 609
    :try_start_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Vd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    .line 610
    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->calcDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/text/ParseException; {:try_start_3d .. :try_end_5f} :catch_61

    move-result-object v0

    goto :goto_10

    .line 611
    :catch_61
    move-exception v0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 615
    :cond_7f
    if-eqz v0, :cond_c8

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    if-eq v1, v2, :cond_c8

    .line 617
    :try_start_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Vd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->calcDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_85 .. :try_end_a7} :catch_aa

    move-result-object v0

    goto/16 :goto_10

    .line 619
    :catch_aa
    move-exception v0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 624
    :cond_c8
    if-eqz v0, :cond_df

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-V~d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    :goto_d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Vd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    goto :goto_d6
.end method

.method protected getVersionDateLabel()Ljava/lang/String;
    .registers 4

    .line 457
    const-string v0, ""

    .line 458
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_19
    :goto_19
    return-object v0

    .line 460
    :cond_1a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-Vd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 465
    :cond_32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getShortLabel()Ljava/lang/String;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-VL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method protected getVersionLabel()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x1f

    const/16 v4, 0x1e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 562
    const-string v0, ""

    .line 590
    :goto_10
    return-object v0

    .line 565
    :cond_11
    if-eqz v0, :cond_7f

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3b

    .line 567
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FromLabel is longer than 31 characters, truncated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 571
    :cond_3b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_61

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToLabel is longer than 31 characters, truncated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 576
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-VL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 577
    :cond_7f
    if-eqz v0, :cond_ba

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_a5

    .line 579
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FromLabel is longer than 31 characters, truncated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 583
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-V~L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 585
    :cond_ba
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_e0

    .line 586
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToLabel is longer than 31 characters, truncated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->log(Ljava/lang/String;I)V

    .line 590
    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-VL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method

.method protected getVsspath()Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getWritable()Ljava/lang/String;
    .registers 2

    .line 410
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    if-eqz v0, :cond_7

    const-string v0, "-W"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getWritableFiles()Ljava/lang/String;
    .registers 3

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    if-nez v0, :cond_7

    .line 674
    const-string v0, ""

    .line 683
    :goto_6
    return-object v0

    .line 675
    :cond_7
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "replace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 676
    const-string v0, "-GWR"

    goto :goto_6

    .line 677
    :cond_16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    .line 681
    const-string v0, "-GWS"

    goto :goto_6

    .line 683
    :cond_2a
    const-string v0, ""

    goto :goto_6
.end method

.method public final setFailOnError(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    .line 170
    return-void
.end method

.method protected setInternalAutoResponse(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->autoResponse:Ljava/lang/String;

    .line 207
    return-void
.end method

.method protected setInternalComment(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->comment:Ljava/lang/String;

    .line 199
    return-void
.end method

.method protected setInternalDate(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->date:Ljava/lang/String;

    .line 215
    return-void
.end method

.method protected setInternalDateFormat(Ljava/text/DateFormat;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->dateFormat:Ljava/text/DateFormat;

    .line 223
    return-void
.end method

.method protected setInternalFailOnError(Z)V
    .registers 2

    .line 230
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->failOnError:Z

    .line 231
    return-void
.end method

.method protected setInternalFileTimeStamp(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->timestamp:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;

    .line 351
    return-void
.end method

.method protected setInternalFromDate(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromDate:Ljava/lang/String;

    .line 239
    return-void
.end method

.method protected setInternalFromLabel(Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->fromLabel:Ljava/lang/String;

    .line 247
    return-void
.end method

.method protected setInternalGetLocalCopy(Z)V
    .registers 2

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->getLocalCopy:Z

    .line 367
    return-void
.end method

.method protected setInternalLabel(Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->label:Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected setInternalLocalPath(Ljava/lang/String;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->localPath:Ljava/lang/String;

    .line 263
    return-void
.end method

.method protected setInternalNumDays(I)V
    .registers 2

    .line 270
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->numDays:I

    .line 271
    return-void
.end method

.method protected setInternalOutputFilename(Ljava/lang/String;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->outputFileName:Ljava/lang/String;

    .line 279
    return-void
.end method

.method protected setInternalQuiet(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->quiet:Z

    .line 287
    return-void
.end method

.method protected setInternalRecursive(Z)V
    .registers 2

    .line 294
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->recursive:Z

    .line 295
    return-void
.end method

.method protected setInternalStyle(Ljava/lang/String;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->style:Ljava/lang/String;

    .line 303
    return-void
.end method

.method protected setInternalToDate(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toDate:Ljava/lang/String;

    .line 311
    return-void
.end method

.method protected setInternalToLabel(Ljava/lang/String;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->toLabel:Ljava/lang/String;

    .line 319
    return-void
.end method

.method protected setInternalUser(Ljava/lang/String;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->user:Ljava/lang/String;

    .line 327
    return-void
.end method

.method protected setInternalVersion(Ljava/lang/String;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->version:Ljava/lang/String;

    .line 335
    return-void
.end method

.method protected setInternalWritable(Z)V
    .registers 2

    .line 342
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writable:Z

    .line 343
    return-void
.end method

.method protected setInternalWritableFiles(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->writableFiles:Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;

    .line 359
    return-void
.end method

.method public final setLogin(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssLogin:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public final setServerpath(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->serverPath:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public final setSsdir(Ljava/lang/String;)V
    .registers 3

    .line 117
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->ssDir:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public final setVsspath(Ljava/lang/String;)V
    .registers 4

    .line 142
    const-string v0, "vss://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_d
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    .line 154
    :goto_17
    return-void

    .line 152
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->vssPath:Ljava/lang/String;

    goto :goto_17
.end method
