.class public final Lcom/baidu/mobstat/bg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;)I
    .registers 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static a([BLjava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Message is larger than modulus"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/math/BigInteger;I)[B
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    if-ne v2, v0, :cond_1

    aget-byte v0, v1, v4

    if-nez v0, :cond_1

    new-array v0, p1, [B

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-lt v2, p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-array v0, p1, [B

    sub-int v3, p1, v2

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static a([BII)[B
    .registers 5

    if-nez p1, :cond_0

    array-length v0, p0

    if-ne p2, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a([BLcom/baidu/mobstat/bi;)[B
    .registers 4

    invoke-interface {p1}, Lcom/baidu/mobstat/bi;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Lcom/baidu/mobstat/bi;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/bg;->a([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 5

    invoke-static {p0, p1}, Lcom/baidu/mobstat/bg;->a([BLjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/bg;->a(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bg;->a(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method
