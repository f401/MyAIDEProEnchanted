.class Labcd/MO;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/math/BigInteger;

.field private static final FH:Ljava/math/BigInteger;

.field static final j6:Labcd/MO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/MO;

    invoke-direct {v0}, Labcd/MO;-><init>()V

    sput-object v0, Labcd/MO;->j6:Labcd/MO;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Labcd/MO;->DW:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Labcd/MO;->FH:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Labcd/TO;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p1}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method j6(Labcd/TO;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7

    invoke-virtual {p1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TO;->DW()I

    move-result v1

    if-eqz v1, :cond_16

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_16
    sget-object v1, Labcd/MO;->FH:Ljava/math/BigInteger;

    invoke-virtual {p1}, Labcd/TO;->FH()I

    move-result v2

    if-eqz v2, :cond_27

    sget-object v3, Labcd/MO;->DW:Ljava/math/BigInteger;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v1

    :goto_28
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_36
    invoke-static {v2, v0, p2}, Labcd/PP;->j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
