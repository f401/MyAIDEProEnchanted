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
    .registers 5

    sget-object p1, Labcd/OO;->DW:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_6
    sget-object v0, Labcd/OO;->DW:Ljava/math/BigInteger;

    invoke-static {v0, p1, p2}, Labcd/PP;->j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Labcd/OO;->j6:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0
.end method

.method static j6(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 8

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    add-int/lit8 v2, p0, -0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Labcd/OO;->j6:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-le p1, v3, :cond_21

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_21
    new-array p0, v3, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    aput-object v0, p0, v1

    return-object p0
.end method
