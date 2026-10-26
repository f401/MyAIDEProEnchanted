.class public Lorg/antlr/v4/runtime/misc/ParseCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "ParseCancellationException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/ParseCancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
