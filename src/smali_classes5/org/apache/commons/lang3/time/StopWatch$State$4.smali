.class final enum Lorg/apache/commons/lang3/time/StopWatch$State$4;
.super Lorg/apache/commons/lang3/time/StopWatch$State;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/StopWatch$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/StopWatch$State;-><init>(Ljava/lang/String;ILorg/apache/commons/lang3/time/StopWatch$1;)V

    return-void
.end method


# virtual methods
.method isStarted()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method isStopped()Z
    .registers 2

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method isSuspended()Z
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method
