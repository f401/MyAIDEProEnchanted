.class public Lcom/baidu/mobstat/be;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method public static a()[B
    .registers 4

    sget-object v0, Lcom/baidu/mobstat/be;->a:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/be;->a:[B

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/baidu/mobstat/bd;->a:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/baidu/mobstat/bd;->b:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/baidu/mobstat/bd;->e:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/be;->a:[B

    sget-object v0, Lcom/baidu/mobstat/be;->a:[B

    goto :goto_0
.end method

.method public static b()[B
    .registers 4

    sget-object v0, Lcom/baidu/mobstat/be;->b:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/be;->b:[B

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/baidu/mobstat/bd;->c:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/baidu/mobstat/bd;->d:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/baidu/mobstat/bd;->e:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/be;->b:[B

    sget-object v0, Lcom/baidu/mobstat/be;->b:[B

    goto :goto_0
.end method
