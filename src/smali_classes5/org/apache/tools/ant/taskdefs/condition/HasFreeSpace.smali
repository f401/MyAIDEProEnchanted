.class public Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;
.super Ljava/lang/Object;
.source "HasFreeSpace.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private needed:Ljava/lang/String;

.field private partition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->partition:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->needed:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 69
    return-void

    .line 67
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Please set the needed attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Please set the partition attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->validate()V

    .line 48
    :try_start_3
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->partition:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lorg/apache/tools/ant/util/ReflectWrapper;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/ReflectWrapper;-><init>(Ljava/lang/Object;)V

    .line 52
    const-string v0, "getFreeSpace"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/ReflectWrapper;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 53
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->needed:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/tools/ant/util/StringUtils;->parseHumanSizes(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e

    .line 55
    :cond_31
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "HasFreeSpace condition not supported on Java5 or less."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_39

    .line 57
    :catch_39
    move-exception v0

    .line 58
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNeeded()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->needed:Ljava/lang/String;

    return-object v0
.end method

.method public getPartition()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->partition:Ljava/lang/String;

    return-object v0
.end method

.method public setNeeded(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->needed:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPartition(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasFreeSpace;->partition:Ljava/lang/String;

    .line 85
    return-void
.end method
