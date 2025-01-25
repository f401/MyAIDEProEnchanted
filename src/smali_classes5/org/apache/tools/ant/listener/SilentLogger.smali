.class public Lorg/apache/tools/ant/listener/SilentLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "SilentLogger.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    invoke-super {p0, p1}, Lorg/apache/tools/ant/DefaultLogger;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 40
    :cond_9
    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 33
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 50
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 45
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 60
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 55
    return-void
.end method
