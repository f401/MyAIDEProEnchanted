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

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/lM;->j6:[B

    return-void
.end method

.method public static j6(Labcd/LL;Z)Labcd/wL;
    .registers 4

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Labcd/lM;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/wL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/AL;->u7()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/wL;-><init>([B)V

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/wL;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/wL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/wL;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Labcd/lM;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/wL;

    check-cast p0, Labcd/lM;

    invoke-virtual {p0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Labcd/lM;->j6:[B

    array-length v3, v1

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    rem-int/lit8 v3, v2, 0x4

    shl-int/2addr v1, v3

    xor-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/4 v0, 0x2

    iget-object v1, p0, Labcd/lM;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 4

    instance-of v0, p1, Labcd/lM;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Labcd/lM;

    iget-object v0, p0, Labcd/lM;->j6:[B

    iget-object v1, p1, Labcd/lM;->j6:[B

    invoke-static {v0, v1}, Labcd/OP;->j6([B[B)Z

    move-result v0

    goto :goto_0
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
