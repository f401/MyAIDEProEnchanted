.class public Labcd/lM;
.super Labcd/EL;


# instance fields
.field j6:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Labcd/EL;-><init>()V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public static j6(Labcd/LL;Z)Labcd/wL;
    .registers 3

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    if-nez p1, :cond_1d

    instance-of p1, v0, Labcd/lM;

    if-eqz p1, :cond_b

    goto :goto_1d

    :cond_b
    new-instance p1, Labcd/wL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object p0

    invoke-virtual {p0}, Labcd/AL;->u7()[B

    move-result-object p0

    invoke-direct {p1, p0}, Labcd/wL;-><init>([B)V

    return-object p1

    :cond_1d
    :goto_1d
    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/wL;
    .registers 3

    if-eqz p0, :cond_33

    instance-of v0, p0, Labcd/wL;

    if-eqz v0, :cond_7

    goto :goto_33

    :cond_7
    instance-of v0, p0, Labcd/lM;

    if-eqz v0, :cond_17

    new-instance v0, Labcd/wL;

    check-cast p0, Labcd/lM;

    invoke-virtual {p0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    check-cast p0, Labcd/wL;

    return-object p0
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Labcd/lM;->j6:[B

    array-length v3, v2

    if-ne v0, v3, :cond_8

    return v1

    :cond_8
    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/4 v0, 0x2

    iget-object v1, p0, Labcd/lM;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/lM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/lM;

    iget-object v0, p0, Labcd/lM;->j6:[B

    iget-object p1, p1, Labcd/lM;->j6:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Labcd/lM;->j6:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public u7()Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Labcd/lM;->j6:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/lM;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/lM;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
