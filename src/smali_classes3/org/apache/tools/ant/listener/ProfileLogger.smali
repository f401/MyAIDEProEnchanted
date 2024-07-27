.class public Lorg/apache/tools/ant/listener/ProfileLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "ProfileLogger.java"


# instance fields
.field private profileData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    return-void
.end method

.method private logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V
    .registers 14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 99
    const-string v1, "%n%s: finished %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v7

    aput-object v0, v6, v8

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/listener/ProfileLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/listener/ProfileLogger;->log(Ljava/lang/String;)V

    .line 106
    return-void

    .line 101
    :cond_0
    const-string v1, "%n%s: finished %s (unknown duration, start not detected)"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V
    .registers 7

    .line 109
    const-string v0, "%n%s: started %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/listener/ProfileLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 111
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/listener/ProfileLogger;->log(Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 5

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 5

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 90
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/listener/ProfileLogger;->logFinish(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 5

    .line 74
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 76
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/ant/listener/ProfileLogger;->logStart(Lorg/apache/tools/ant/BuildEvent;Ljava/util/Date;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/listener/ProfileLogger;->profileData:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
