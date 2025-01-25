.class final Lcom/baidu/mobstat/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobstat/az;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/ay;->a:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget v0, p0, Lcom/baidu/mobstat/ay;->a:I

    rem-int/2addr p1, v0

    sub-int/2addr v0, p1

    return v0
.end method

.method public a([BII)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_16

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p3, :cond_15

    add-int v2, v1, p2

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    return-void

    :cond_16
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "Buffer too small to hold padding"

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e
.end method

.method public b([BII)I
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p3, :cond_6

    goto :goto_28

    :cond_6
    add-int/2addr p3, p2

    add-int/lit8 v1, p3, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-lt v2, v4, :cond_27

    iget v4, p0, Lcom/baidu/mobstat/ay;->a:I

    if-le v2, v4, :cond_16

    goto :goto_27

    :cond_16
    sub-int/2addr p3, v2

    if-ge p3, p2, :cond_1a

    return v3

    :cond_1a
    :goto_1a
    if-ge v0, v2, :cond_26

    add-int p2, p3, v0

    aget-byte p2, p1, p2

    if-eq p2, v1, :cond_23

    return v3

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_26
    return p3

    :cond_27
    :goto_27
    return v3

    :cond_28
    :goto_28
    return v0
.end method
