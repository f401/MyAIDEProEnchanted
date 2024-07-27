.class Labcd/sG;
.super Labcd/yG;


# instance fields
.field private final Zo:Labcd/UE;

.field private final v5:Labcd/YJ;


# direct methods
.method constructor <init>(Labcd/qG;Labcd/jK;)V
    .registers 5

    invoke-direct {p0}, Labcd/yG;-><init>()V

    iget-object v0, p1, Labcd/qG;->j6:Labcd/UE;

    iput-object v0, p0, Labcd/sG;->Zo:Labcd/UE;

    new-instance v0, Labcd/YJ;

    iget-object v1, p1, Labcd/qG;->DW:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/YJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/sG;->v5:Labcd/YJ;

    iget-object v0, p0, Labcd/sG;->v5:Labcd/YJ;

    invoke-virtual {v0, p2}, Labcd/YJ;->j6(Labcd/jK;)V

    iget-object v0, p0, Labcd/sG;->v5:Labcd/YJ;

    invoke-virtual {p2}, Labcd/jK;->j6()Z

    move-result v1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Z)V

    return-void
.end method

.method private j6([Labcd/yE;)V
    .registers 8

    iget-object v3, p0, Labcd/sG;->v5:Labcd/YJ;

    invoke-virtual {v3}, Labcd/YJ;->DW()Labcd/jK;

    move-result-object v0

    check-cast v0, Labcd/WF;

    sget-object v1, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v3, v1}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v3, p1}, Labcd/YJ;->j6([Labcd/YD;)V

    invoke-static {v3}, Labcd/hC;->j6(Labcd/YJ;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Labcd/BC;

    iget-object v4, p0, Labcd/sG;->Zo:Labcd/UE;

    invoke-direct {v2, v4}, Labcd/BC;-><init>(Labcd/UE;)V

    invoke-virtual {v2, v1}, Labcd/BC;->j6(Ljava/util/Collection;)V

    invoke-virtual {v2}, Labcd/BC;->DW()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    invoke-static {v1}, Labcd/sG;->j6(Labcd/hC;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Labcd/WF;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/WF;->j6(Ljava/lang/String;)Labcd/WF;

    move-result-object v2

    invoke-virtual {v0}, Labcd/WF;->FH()Labcd/bG;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Labcd/bG;->j6(Labcd/hC;)V

    invoke-virtual {v2, v0}, Labcd/WF;->j6(Labcd/bG;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static j6(Labcd/hC;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v0

    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v0

    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v5, p2, Labcd/dG;->J8:[Labcd/dG;

    array-length v6, v5

    iget-object v4, p0, Labcd/sG;->v5:Labcd/YJ;

    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [Labcd/yE;

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_10

    invoke-virtual {p2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v7}, Labcd/YJ;->j6([Labcd/YD;)V

    if-ne v6, v3, :cond_4

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Labcd/YJ;->EQ()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget v0, p2, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p2, Labcd/iG;->EQ:I

    :goto_2
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v1}, Labcd/YJ;->FH(I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Labcd/YJ;->FH(I)I

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {v4}, Labcd/YJ;->DW()Labcd/jK;

    move-result-object v0

    instance-of v0, v0, Labcd/WF;

    if-eqz v0, :cond_3

    invoke-direct {p0, v7}, Labcd/sG;->j6([Labcd/yE;)V

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    if-nez v6, :cond_6

    invoke-virtual {v4}, Labcd/YJ;->EQ()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    iget v0, p2, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p2, Labcd/iG;->EQ:I

    goto :goto_2

    :cond_6
    new-array v7, v6, [I

    new-array v8, v6, [I

    :cond_7
    invoke-virtual {v4}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    move v2, v1

    move v4, v1

    :goto_3
    if-lt v4, v6, :cond_9

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    move v1, v3

    goto :goto_2

    :cond_8
    iget v0, p2, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p2, Labcd/iG;->EQ:I

    goto :goto_2

    :cond_9
    aget v9, v7, v4

    if-nez v9, :cond_b

    aget-object v0, v5, v4

    iget v9, v0, Labcd/iG;->EQ:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_a

    move v0, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iget v2, p2, Labcd/iG;->EQ:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p2, Labcd/iG;->EQ:I

    new-array v2, v3, [Labcd/dG;

    aput-object v0, v2, v1

    iput-object v2, p2, Labcd/dG;->J8:[Labcd/dG;

    goto :goto_2

    :cond_b
    aget v2, v7, v4

    aget v9, v8, v4

    if-ne v2, v9, :cond_c

    aget-object v2, v5, v4

    sget-object v9, Labcd/dG;->we:[Labcd/dG;

    iput-object v9, v2, Labcd/dG;->J8:[Labcd/dG;

    :cond_c
    move v2, v3

    goto :goto_4

    :cond_d
    invoke-virtual {v4, v6}, Labcd/YJ;->FH(I)I

    move-result v2

    move v0, v1

    :goto_5
    if-ge v0, v6, :cond_7

    invoke-virtual {v4, v0}, Labcd/YJ;->FH(I)I

    move-result v9

    if-ne v2, v9, :cond_f

    invoke-virtual {v4, v0, v6}, Labcd/YJ;->j6(II)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    aget v10, v7, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v7, v0

    if-nez v9, :cond_e

    if-eqz v2, :cond_e

    aget v9, v8, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v0

    goto :goto_6

    :cond_10
    iget-object v2, p2, Labcd/dG;->J8:[Labcd/dG;

    aget-object v2, v2, v0

    iget v8, v2, Labcd/iG;->EQ:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_11

    invoke-virtual {v2, p1}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_11
    invoke-virtual {v2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v2

    aput-object v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
