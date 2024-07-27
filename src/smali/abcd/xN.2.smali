.class public Labcd/xN;
.super Labcd/yL;


# instance fields
.field DW:Labcd/wL;

.field j6:Labcd/dM;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/dM;

    invoke-direct {v0, v1}, Labcd/dM;-><init>(Z)V

    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    iput-object v2, p0, Labcd/xN;->DW:Labcd/wL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Labcd/xN;->j6:Labcd/dM;

    iput-object v2, p0, Labcd/xN;->DW:Labcd/wL;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    instance-of v0, v0, Labcd/dM;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/dM;->j6(Ljava/lang/Object;)Labcd/oL;

    move-result-object v0

    iput-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    :goto_1
    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Labcd/xN;->j6:Labcd/dM;

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/xN;
    .registers 3

    instance-of v0, p0, Labcd/xN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/xN;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Labcd/IN;

    if-eqz v0, :cond_1

    check-cast p0, Labcd/IN;

    invoke-static {p0}, Labcd/IN;->j6(Labcd/IN;)Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Labcd/xN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/xN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
    iget-object v1, p0, Labcd/xN;->DW:Labcd/wL;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/dM;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/xN;->j6:Labcd/dM;

    if-nez v0, :cond_0

    const-string v0, "BasicConstraints: isCa(false)"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicConstraints: isCa("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/xN;->Zo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicConstraints: isCa("

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v5()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/xN;->DW:Labcd/wL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
