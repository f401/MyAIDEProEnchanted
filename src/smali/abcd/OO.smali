.class Labcd/OO;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/math/BigInteger;

.field private static final j6:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Labcd/OO;->j6:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Labcd/OO;->DW:Ljava/math/BigInteger;

    return-void
.end method

.method static j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    sget-object v0, Labcd/OO;->DW:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    sget-object v1, Labcd/OO;->DW:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Labcd/PP;->j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Labcd/OO;->DW:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Labcd/OO;->j6:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method

.method static j6(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x2

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p0, -0x1

    invoke-direct {v0, v1, v3, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Labcd/OO;->j6:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, v3, :cond_1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    new-array v2, v3, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    return-object v2
.end method
