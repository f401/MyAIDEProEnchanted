.class public Lorg/apache/commons/lang3/SerializationException;
.super Ljava/lang/RuntimeException;
.source "SerializationException.java"


# static fields
.field private static final serialVersionUID:J = 0x37e9f9395ae00706L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
