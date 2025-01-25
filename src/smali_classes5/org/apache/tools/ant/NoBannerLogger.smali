.class public Lorg/apache/tools/ant/NoBannerLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "NoBannerLogger.java"


# instance fields
.field protected targetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .registers 3

    .line 60
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 7

    .line 83
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v0

    iget v1, p0, Lorg/apache/tools/ant/NoBannerLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_1c

    .line 84
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 85
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 97
    :cond_1c
    :goto_1c
    return-void

    .line 89
    :cond_1d
    monitor-enter p0

    .line 90
    :try_start_1e
    iget-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->out:Ljava/io/PrintStream;

    const-string v1, "%n%s:%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;

    .line 94
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_39

    .line 96
    invoke-super {p0, p1}, Lorg/apache/tools/ant/DefaultLogger;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V

    goto :goto_1c

    .line 94
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    monitor-enter p0

    .line 69
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    monitor-enter p0

    .line 50
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/NoBannerLogger;->extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/NoBannerLogger;->targetName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 51
    monitor-exit p0

    return-void

    .line 49
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
