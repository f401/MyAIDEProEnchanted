.class public abstract Labcd/LL;
.super Labcd/EL;

# interfaces
.implements Labcd/ML;


# instance fields
.field DW:Z

.field FH:Z

.field Hw:Labcd/qL;

.field j6:I


# direct methods
.method public constructor <init>(ZILabcd/qL;)V
    .registers 6

    invoke-direct {p0}, Labcd/EL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/LL;->DW:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/LL;->FH:Z

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/LL;->Hw:Labcd/qL;

    instance-of v1, p3, Labcd/pL;

    if-eqz v1, :cond_13

    iput-boolean v0, p0, Labcd/LL;->FH:Z

    goto :goto_15

    :cond_13
    iput-boolean p1, p0, Labcd/LL;->FH:Z

    :goto_15
    iput p2, p0, Labcd/LL;->j6:I

    iget-boolean p1, p0, Labcd/LL;->FH:Z

    if-eqz p1, :cond_1c

    goto :goto_22

    :cond_1c
    invoke-interface {p3}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    instance-of p1, p1, Labcd/HL;

    :goto_22
    iput-object p3, p0, Labcd/LL;->Hw:Labcd/qL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/LL;
    .registers 3

    if-eqz p0, :cond_4b

    instance-of v0, p0, Labcd/LL;

    if-eqz v0, :cond_7

    goto :goto_4b

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_2f

    :try_start_b
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/LL;->j6(Ljava/lang/Object;)Labcd/LL;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to construct tagged object from byte[]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in getInstance: "

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

    :cond_4b
    :goto_4b
    check-cast p0, Labcd/LL;

    return-object p0
.end method


# virtual methods
.method public EQ()Z
    .registers 2

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    return v0
.end method

.method VH()Labcd/EL;
    .registers 5

    new-instance v0, Labcd/yM;

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    iget v2, p0, Labcd/LL;->j6:I

    iget-object v3, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-direct {v0, v1, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    return-object v0
.end method

.method gn()Labcd/EL;
    .registers 5

    new-instance v0, Labcd/GM;

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    iget v2, p0, Labcd/LL;->j6:I

    iget-object v3, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-direct {v0, v1, v2, v3}, Labcd/GM;-><init>(ZILabcd/qL;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/LL;->j6:I

    iget-object v1, p0, Labcd/LL;->Hw:Labcd/qL;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_b
    return v0
.end method

.method public j6()Labcd/EL;
    .registers 1

    invoke-virtual {p0}, Labcd/EL;->DW()Labcd/EL;

    return-object p0
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    instance-of v0, p1, Labcd/LL;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/LL;

    iget v0, p0, Labcd/LL;->j6:I

    iget v2, p1, Labcd/LL;->j6:I

    if-ne v0, v2, :cond_37

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    iget-boolean v2, p1, Labcd/LL;->DW:Z

    if-ne v0, v2, :cond_37

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    iget-boolean v2, p1, Labcd/LL;->FH:Z

    if-eq v0, v2, :cond_1b

    goto :goto_37

    :cond_1b
    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    if-nez v0, :cond_24

    iget-object p1, p1, Labcd/LL;->Hw:Labcd/qL;

    if-eqz p1, :cond_35

    return v1

    :cond_24
    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    iget-object p1, p1, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    return v1

    :cond_35
    const/4 p1, 0x1

    return p1

    :cond_37
    :goto_37
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Labcd/LL;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget v0, p0, Labcd/LL;->j6:I

    return v0
.end method

.method public u7()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    return v0
.end method
