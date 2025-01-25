.class public Lorg/apache/commons/lang3/concurrent/CircuitBreakingException;
.super Ljava/lang/RuntimeException;
.source "CircuitBreakingException.java"


# static fields
.field private static final serialVersionUID:J = 0x138ad934e39c833cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method
