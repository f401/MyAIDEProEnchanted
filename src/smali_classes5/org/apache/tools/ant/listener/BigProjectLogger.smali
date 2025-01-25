.class public Lorg/apache/tools/ant/listener/BigProjectLogger;
.super Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;
.source "BigProjectLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;


# static fields
.field public static final FOOTER:Ljava/lang/String; = "======================================================================"

.field public static final HEADER:Ljava/lang/String; = "======================================================================"


# instance fields
.field private final subBuildLock:Ljava/lang/Object;

.field private volatile subBuildStartedRaised:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildLock:Ljava/lang/Object;

    return-void
.end method

.method private maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 172
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    if-nez v0, :cond_12

    .line 173
    iget-object v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    if-nez v0, :cond_11

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStartedRaised:Z

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 178
    :cond_11
    monitor-exit v1

    .line 180
    :cond_12
    return-void

    .line 178
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 100
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 101
    return-void
.end method

.method protected extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x22

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractProjectName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-nez v0, :cond_b

    .line 138
    const-string v0, ""

    .line 142
    :goto_a
    return-object v0

    .line 140
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected getBuildFailedMessage()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->getBuildFailedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBuildSuccessfulMessage()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->getBuildSuccessfulMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooter()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, "======================================================================"

    return-object v0
.end method

.method protected getHeader()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "======================================================================"

    return-object v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 110
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V

    .line 111
    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 9

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v0, "failing "

    .line 149
    :goto_c
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getFooter()Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string v4, "%n%s%nExiting %sproject %s%n%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->out:Ljava/io/PrintStream;

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    .line 147
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/listener/BigProjectLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 152
    return-void

    .line 147
    :cond_33
    const-string v0, ""

    goto :goto_c
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 9

    .line 120
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 121
    if-nez v0, :cond_33

    const-string v0, "With no base directory"

    .line 123
    :goto_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->extractNameOrDefault(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/listener/BigProjectLogger;->getFooter()Ljava/lang/String;

    move-result-object v3

    .line 123
    const-string v4, "%n%s%nEntering project %s%n%s%n%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/listener/BigProjectLogger;->out:Ljava/io/PrintStream;

    .line 126
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    .line 123
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/listener/BigProjectLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 127
    return-void

    .line 122
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->targetStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 80
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/listener/BigProjectLogger;->maybeRaiseSubBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 89
    invoke-super {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->taskStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 90
    return-void
.end method
