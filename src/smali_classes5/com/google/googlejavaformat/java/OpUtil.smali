.class public Lcom/google/googlejavaformat/java/OpUtil;
.super Ljava/lang/Object;
.source "OpUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPostUnaryOp(I)Z
    .registers 2

    .line 14
    const/16 v0, 0x36

    if-eq p0, v0, :cond_8

    const/16 v0, 0x37

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public isIncOrDecUnaryOp(I)Z
    .registers 3

    .line 18
    const/16 v0, 0x34

    if-eq p1, v0, :cond_10

    const/16 v0, 0x35

    if-eq p1, v0, :cond_10

    const/16 v0, 0x36

    if-eq p1, v0, :cond_10

    const/16 v0, 0x37

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
