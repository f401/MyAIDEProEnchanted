.class public Lorg/xutils/ex/DbException;
.super Lorg/xutils/ex/BaseException;
.source "DbException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lorg/xutils/ex/BaseException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lorg/xutils/ex/BaseException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/xutils/ex/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lorg/xutils/ex/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
