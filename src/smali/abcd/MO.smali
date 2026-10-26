.class Labcd/MO;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/math/BigInteger;

.field private static final FH:Ljava/math/BigInteger;

.field static final j6:Labcd/MO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Labcd/TO;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method j6(Labcd/TO;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/TO;->DW()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Labcd/MO;->FH:Ljava/math/BigInteger;

    invoke-virtual {p1}, Labcd/TO;->FH()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Labcd/MO;->DW:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1, p2}, Labcd/PP;->j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2
.end method
