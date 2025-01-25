.class public Labcd/EN;
.super Labcd/yL;

# interfaces
.implements Labcd/lN;
.implements Labcd/NN;


# instance fields
.field DW:Labcd/wL;

.field EQ:Labcd/cM;

.field FH:Labcd/wL;

.field Hw:Labcd/wN;

.field VH:Labcd/FN;

.field Zo:Labcd/FN;

.field gn:Labcd/sN;

.field j6:Labcd/FL;

.field tp:Labcd/cM;

.field u7:Labcd/CN;

.field v5:Labcd/sN;

.field we:Labcd/JN;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 9

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/EN;->j6:Labcd/FL;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v1

    instance-of v1, v1, Labcd/yM;

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v1

    check-cast v1, Labcd/LL;

    invoke-static {v1, v2}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v1

    iput-object v1, p0, Labcd/EN;->DW:Labcd/wL;

    const/4 v1, 0x0

    goto :goto_25

    :cond_1d
    new-instance v1, Labcd/wL;

    invoke-direct {v1, v0}, Labcd/wL;-><init>(I)V

    iput-object v1, p0, Labcd/EN;->DW:Labcd/wL;

    const/4 v1, -0x1

    :goto_25
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->FH:Labcd/wL;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->Hw:Labcd/wN;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->v5:Labcd/sN;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    check-cast v3, Labcd/FL;

    invoke-virtual {v3, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v4

    invoke-static {v4}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v4

    iput-object v4, p0, Labcd/EN;->Zo:Labcd/FN;

    invoke-virtual {v3, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->VH:Labcd/FN;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->gn:Labcd/sN;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/CN;->j6(Ljava/lang/Object;)Labcd/CN;

    move-result-object v3

    iput-object v3, p0, Labcd/EN;->u7:Labcd/CN;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    :goto_83
    if-gtz v3, :cond_86

    return-void

    :cond_86
    add-int v4, v1, v3

    invoke-virtual {p1, v4}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v4

    check-cast v4, Labcd/yM;

    invoke-virtual {v4}, Labcd/LL;->tp()I

    move-result v5

    if-eq v5, v2, :cond_a9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9b

    goto :goto_af

    :cond_9b
    invoke-static {v4}, Labcd/JN;->j6(Ljava/lang/Object;)Labcd/JN;

    move-result-object v4

    iput-object v4, p0, Labcd/EN;->we:Labcd/JN;

    goto :goto_af

    :cond_a2
    invoke-static {v4, v0}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v4

    iput-object v4, p0, Labcd/EN;->EQ:Labcd/cM;

    goto :goto_af

    :cond_a9
    invoke-static {v4, v0}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v4

    iput-object v4, p0, Labcd/EN;->tp:Labcd/cM;

    :goto_af
    add-int/lit8 v3, v3, -0x1

    goto :goto_83
.end method

.method public static j6(Ljava/lang/Object;)Labcd/EN;
    .registers 2

    instance-of v0, p0, Labcd/EN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/EN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/EN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/EN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/EN;->j6:Labcd/FL;

    return-object v0
.end method

.method public EQ()Labcd/FN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->Zo:Labcd/FN;

    return-object v0
.end method

.method public J0()Labcd/CN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->u7:Labcd/CN;

    return-object v0
.end method

.method public J8()Labcd/cM;
    .registers 2

    iget-object v0, p0, Labcd/EN;->EQ:Labcd/cM;

    return-object v0
.end method

.method public VH()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->v5:Labcd/sN;

    return-object v0
.end method

.method public Ws()I
    .registers 2

    iget-object v0, p0, Labcd/EN;->DW:Labcd/wL;

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Zo()Labcd/JN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->we:Labcd/JN;

    return-object v0
.end method

.method public gn()Labcd/cM;
    .registers 2

    iget-object v0, p0, Labcd/EN;->tp:Labcd/cM;

    return-object v0
.end method

.method public tp()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->Hw:Labcd/wN;

    return-object v0
.end method

.method public u7()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/EN;->FH:Labcd/wL;

    return-object v0
.end method

.method public v5()Labcd/FN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->VH:Labcd/FN;

    return-object v0
.end method

.method public we()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/EN;->gn:Labcd/sN;

    return-object v0
.end method
