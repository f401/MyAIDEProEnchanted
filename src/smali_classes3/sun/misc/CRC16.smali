.class public Lsun/misc/CRC16;
.super Ljava/lang/Object;
.source "CRC16.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CRC16;->value:I

    .line 41
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CRC16;->value:I

    .line 64
    return-void
.end method

.method public update(B)V
    .registers 6

    .line 47
    .line 48
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 49
    shl-int/lit8 p1, p1, 0x1

    .line 50
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0x1

    .line 51
    iget v2, p0, Lsun/misc/CRC16;->value:I

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 52
    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1021

    iput v1, p0, Lsun/misc/CRC16;->value:I

    .line 48
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lsun/misc/CRC16;->value:I

    goto :goto_1

    .line 57
    :cond_1
    iget v0, p0, Lsun/misc/CRC16;->value:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lsun/misc/CRC16;->value:I

    .line 58
    return-void
.end method
