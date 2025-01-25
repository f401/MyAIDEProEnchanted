.class public Labcd/HN;
.super Labcd/yL;

# interfaces
.implements Labcd/lN;
.implements Labcd/NN;


# instance fields
.field DW:Labcd/EN;

.field FH:Labcd/wN;

.field Hw:Labcd/cM;

.field j6:Labcd/FL;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/HN;->j6:Labcd/FL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/EN;->j6(Ljava/lang/Object;)Labcd/EN;

    move-result-object v0

    iput-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/HN;->FH:Labcd/wN;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object p1

    iput-object p1, p0, Labcd/HN;->Hw:Labcd/cM;

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/HN;->j6:Labcd/FL;

    return-object v0
.end method

.method public EQ()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->we()Labcd/sN;

    move-result-object v0

    return-object v0
.end method

.method public J0()Labcd/EN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    return-object v0
.end method

.method public J8()I
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->Ws()I

    move-result v0

    return v0
.end method

.method public VH()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->u7()Labcd/wL;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->VH()Labcd/sN;

    move-result-object v0

    return-object v0
.end method

.method public gn()Labcd/cM;
    .registers 2

    iget-object v0, p0, Labcd/HN;->Hw:Labcd/cM;

    return-object v0
.end method

.method public tp()Labcd/FN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->EQ()Labcd/FN;

    move-result-object v0

    return-object v0
.end method

.method public u7()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->FH:Labcd/wN;

    return-object v0
.end method

.method public v5()Labcd/FN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->v5()Labcd/FN;

    move-result-object v0

    return-object v0
.end method

.method public we()Labcd/CN;
    .registers 2

    iget-object v0, p0, Labcd/HN;->DW:Labcd/EN;

    invoke-virtual {v0}, Labcd/EN;->J0()Labcd/CN;

    move-result-object v0

    return-object v0
.end method
