.class public Labcd/YL;
.super Labcd/LL;


# direct methods
.method public constructor <init>(ILabcd/qL;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Labcd/LL;-><init>(ZILabcd/qL;)V

    return-void
.end method

.method public constructor <init>(ZILabcd/qL;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/LL;-><init>(ZILabcd/qL;)V

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 3

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->VH()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->Zo()Z

    move-result v0

    return v0

    :cond_19
    return v1
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0xa0

    iget v1, p0, Labcd/LL;->j6:I

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    instance-of v1, v0, Labcd/AL;

    if-eqz v1, :cond_35

    instance-of v1, v0, Labcd/SL;

    if-eqz v1, :cond_25

    check-cast v0, Labcd/SL;

    invoke-virtual {v0}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_4a

    :cond_25
    new-instance v1, Labcd/SL;

    check-cast v0, Labcd/AL;

    invoke-virtual {v0}, Labcd/AL;->u7()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/SL;-><init>([B)V

    invoke-virtual {v1}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_4a

    :cond_35
    instance-of v1, v0, Labcd/FL;

    if-eqz v1, :cond_40

    check-cast v0, Labcd/FL;

    invoke-virtual {v0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_4a

    :cond_40
    instance-of v1, v0, Labcd/HL;

    if-eqz v1, :cond_5b

    check-cast v0, Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_7e

    :cond_51
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-virtual {p1, v1}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_4a

    :cond_5b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not implemented: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-virtual {p1, v0}, Labcd/CL;->j6(Labcd/qL;)V

    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    return-void
.end method

.method v5()I
    .registers 4

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    if-eqz v1, :cond_1e

    iget v1, p0, Labcd/LL;->j6:I

    invoke-static {v1}, Labcd/OM;->DW(I)I

    move-result v1

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_26

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Labcd/LL;->j6:I

    invoke-static {v1}, Labcd/OM;->DW(I)I

    move-result v1

    :goto_26
    add-int/2addr v1, v0

    return v1

    :cond_28
    iget v0, p0, Labcd/LL;->j6:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
