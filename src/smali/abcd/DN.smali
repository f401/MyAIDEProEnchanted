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

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/DN;->j6:Labcd/FL;

    invoke-virtual {p1, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    instance-of v0, v0, Labcd/yM;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/LL;

    invoke-static {v0, v6}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->DW:Labcd/wL;

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->FH:Labcd/wL;

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->Hw:Labcd/wN;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->v5:Labcd/sN;

    add-int/lit8 v0, v1, 0x4

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    invoke-virtual {v0, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v3

    iput-object v3, p0, Labcd/DN;->Zo:Labcd/FN;

    invoke-virtual {v0, v6}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/FN;->j6(Ljava/lang/Object;)Labcd/FN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->VH:Labcd/FN;

    add-int/lit8 v0, v1, 0x5

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->gn:Labcd/sN;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {p1, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/CN;->j6(Ljava/lang/Object;)Labcd/CN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->u7:Labcd/CN;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gtz v1, :cond_1

    return-void

    :cond_0
    new-instance v0, Labcd/wL;

    invoke-direct {v0, v2}, Labcd/wL;-><init>(I)V

    iput-object v0, p0, Labcd/DN;->DW:Labcd/wL;

    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int v0, v3, v1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/yM;

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v4

    if-eq v4, v6, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v6}, Labcd/FL;->j6(Labcd/LL;Z)Labcd/FL;

    move-result-object v0

    invoke-static {v0}, Labcd/AN;->j6(Ljava/lang/Object;)Labcd/AN;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->we:Labcd/AN;

    goto :goto_2

    :cond_3
    invoke-static {v0, v2}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->EQ:Labcd/cM;

    goto :goto_2

    :cond_4
    invoke-static {v0, v2}, Labcd/cM;->j6(Labcd/LL;Z)Labcd/cM;

    move-result-object v0

    iput-object v0, p0, Labcd/DN;->tp:Labcd/cM;

    goto :goto_2
.end method

.method public static j6(Ljava/lang/Object;)Labcd/DN;
    .registers 3

    instance-of v0, p0, Labcd/DN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/DN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/DN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/DN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
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
