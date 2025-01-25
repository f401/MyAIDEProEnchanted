.class public Labcd/xN;
.super Labcd/yL;


# instance fields
.field DW:Labcd/wL;

.field j6:Labcd/dM;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 5

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/dM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/dM;-><init>(Z)V

    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v2

    if-nez v2, :cond_19

    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    iput-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    goto :goto_56

    :cond_19
    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v2

    instance-of v2, v2, Labcd/dM;

    if-eqz v2, :cond_2c

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/dM;->j6(Ljava/lang/Object;)Labcd/oL;

    move-result-object v0

    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    goto :goto_38

    :cond_2c
    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    :goto_38
    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_56

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v0, :cond_4e

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object p1

    iput-object p1, p0, Labcd/xN;->DW:Labcd/wL;

    goto :goto_56

    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong sequence in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/xN;
    .registers 2

    instance-of v0, p0, Labcd/xN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/xN;

    return-object p0

    :cond_7
    instance-of v0, p0, Labcd/IN;

    if-eqz v0, :cond_16

    check-cast p0, Labcd/IN;

    invoke-static {p0}, Labcd/IN;->j6(Labcd/IN;)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object p0

    return-object p0

    :cond_16
    if-eqz p0, :cond_22

    new-instance v0, Labcd/xN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/xN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_c
    iget-object v1, p0, Labcd/xN;->DW:Labcd/wL;

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_13
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Labcd/dM;->u7()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_23

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-nez v0, :cond_d

    const-string v0, "BasicConstraints: isCa(false)"

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/xN;->Zo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/xN;->Zo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/xN;->DW:Labcd/wL;

    invoke-virtual {v1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method

.method public v5()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
