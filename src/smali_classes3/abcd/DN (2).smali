.class public Labcd/DN;
.super Labcd/yL;


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

.field we:Labcd/AN;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 9

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/DN;->j6:Labcd/FL;

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

    iput-object v1, p0, Labcd/DN;->DW:Labcd/wL;

    const/4 v1, 0x0

    goto :goto_25

    :cond_1d
    new-instance v1, Labcd/wL;

    invoke-direct {v1, v0}, Labcd/wL;-><init>(I)V

    iput-object v1, p0, Labcd/DN;->DW:Labcd/wL;

    const/4 v1, -0x1

    :goto_25
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->FH:Labcd/wL;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->Hw:Labcd/wN;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->v5:Labcd/sN;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    check-cast v3, Labcd/FL;

    invoke-virtual {v3, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v4

    invoke-static {v4}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v4

    iput-object v4, p0, Labcd/DN;->Zo:Labcd/FN;

    invoke-virtual {v3, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->VH:Labcd/FN;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->gn:Labcd/sN;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/CN;->j6(Ljava/lang/Object;)Labcd/CN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->u7:Labcd/CN;

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

    if-eq v5, v2, :cond_ad

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9b

    goto :goto_b3

    :cond_9b
    invoke-static {v4, v2}, Labcd/FL;->j6(Labcd/LL;Z)Labcd/FL;

    move-result-object v4

    invoke-static {v4}, Labcd/AN;->j6(Ljava/lang/Object;)Labcd/AN;

    move-result-object v4

    iput-object v4, p0, Labcd/DN;->we:Labcd/AN;

    goto :goto_b3

    :cond_a6
    invoke-static {v4, v0}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v4

    iput-object v4, p0, Labcd/DN;->EQ:Labcd/cM;

    goto :goto_b3

    :cond_ad
    invoke-static {v4, v0}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v4

    iput-object v4, p0, Labcd/DN;->tp:Labcd/cM;

    :goto_b3
    add-int/lit8 v3, v3, -0x1

    goto :goto_83
.end method

.method public static j6(Ljava/lang/Object;)Labcd/DN;
    .registers 2

    instance-of v0, p0, Labcd/DN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/DN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/DN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/DN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/DN;->j6:Labcd/FL;

    return-object v0
.end method

.method public VH()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/DN;->FH:Labcd/wL;

    return-object v0
.end method

.method public Zo()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/DN;->v5:Labcd/sN;

    return-object v0
.end method

.method public v5()Labcd/AN;
    .registers 2

    iget-object v0, p0, Labcd/DN;->we:Labcd/AN;

    return-object v0
.end method
