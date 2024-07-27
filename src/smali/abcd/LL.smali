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

    const/4 v1, 0x1

    invoke-direct {p0}, Labcd/EL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/LL;->DW:Z

    iput-boolean v1, p0, Labcd/LL;->FH:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    instance-of v0, p3, Labcd/pL;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Labcd/LL;->FH:Z

    :goto_0
    iput p2, p0, Labcd/LL;->j6:I

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Labcd/LL;->Hw:Labcd/qL;

    :goto_1
    return-void

    :cond_0
    iput-boolean p1, p0, Labcd/LL;->FH:Z

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    instance-of v0, v0, Labcd/HL;

    iput-object p3, p0, Labcd/LL;->Hw:Labcd/qL;

    goto :goto_1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/LL;
    .registers 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/LL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/LL;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/LL;->j6(Ljava/lang/Object;)Labcd/LL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in getInstance: "

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

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public j6()Labcd/EL;
    .registers 1

    invoke-virtual {p0}, Labcd/EL;->DW()Labcd/EL;

    return-object p0
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/LL;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/LL;

    iget v1, p0, Labcd/LL;->j6:I

    iget v2, p1, Labcd/LL;->j6:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Labcd/LL;->DW:Z

    iget-boolean v2, p1, Labcd/LL;->DW:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    iget-boolean v2, p1, Labcd/LL;->FH:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Labcd/LL;->Hw:Labcd/qL;

    if-nez v1, :cond_3

    iget-object v1, p1, Labcd/LL;->Hw:Labcd/qL;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    iget-object v2, p1, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
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

    if-eqz v0, :cond_0

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    return v0
.end method
