.class final enum Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;
.super Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;ILorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V

    return-void
.end method


# virtual methods
.method public oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 2

    .line 151
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method
