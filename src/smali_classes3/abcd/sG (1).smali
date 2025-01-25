.class Labcd/sG;
.super Labcd/yG;


# instance fields
.field private final Zo:Labcd/UE;

.field private final v5:Labcd/YJ;


# direct methods
.method constructor <init>(Labcd/qG;Labcd/jK;)V
    .registers 4

    invoke-direct {p0}, Labcd/yG;-><init>()V

    iget-object v0, p1, Labcd/qG;->j6:Labcd/UE;

    iput-object v0, p0, Labcd/sG;->Zo:Labcd/UE;

    new-instance v0, Labcd/YJ;

    iget-object p1, p1, Labcd/qG;->DW:Labcd/IE;

    invoke-direct {v0, p1}, Labcd/YJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/sG;->v5:Labcd/YJ;

    invoke-virtual {v0, p2}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {p2}, Labcd/jK;->j6()Z

    move-result p1

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Z)V

    return-void
.end method

.method private j6([Labcd/yE;)V
    .registers 7

    iget-object v0, p0, Labcd/sG;->v5:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->DW()Labcd/jK;

    move-result-object v1

    check-cast v1, Labcd/WF;

    sget-object v2, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v0, p1}, Labcd/YJ;->j6([Labcd/YD;)V

    invoke-static {v0}, Labcd/hC;->j6(Labcd/YJ;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Labcd/BC;

    iget-object v3, p0, Labcd/sG;->Zo:Labcd/UE;

    invoke-direct {v2, v3}, Labcd/BC;-><init>(Labcd/UE;)V

    invoke-virtual {v2, p1}, Labcd/BC;->j6(Ljava/util/Collection;)V

    invoke-virtual {v2}, Labcd/BC;->DW()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_5c

    :cond_2d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    invoke-static {v2}, Labcd/sG;->j6(Labcd/hC;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Labcd/WF;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/WF;->j6(Ljava/lang/String;)Labcd/WF;

    move-result-object p1

    invoke-virtual {v1}, Labcd/WF;->FH()Labcd/bG;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v1, v2}, Labcd/bG;->j6(Labcd/hC;)V

    invoke-virtual {p1, v1}, Labcd/WF;->j6(Labcd/bG;)V

    :cond_5b
    move-object v1, p1

    :goto_5c
    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/jK;)V

    return-void
.end method

.method private static j6(Labcd/hC;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v0

    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object p0

    sget-object v0, Labcd/hC$a;->v5:Labcd/hC$a;

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
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
    .registers 13

    iget-object v0, p2, Labcd/dG;->J8:[Labcd/dG;

    array-length v1, v0

    iget-object v2, p0, Labcd/sG;->v5:Labcd/YJ;

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Labcd/yE;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x1

    if-lt v5, v1, :cond_c4

    invoke-virtual {p2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Labcd/YJ;->j6([Labcd/YD;)V

    if-ne v1, v6, :cond_4a

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v2}, Labcd/YJ;->EQ()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_33

    :cond_22
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v4}, Labcd/YJ;->FH(I)I

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v2, v6}, Labcd/YJ;->FH(I)I

    move-result v1

    if-eqz v1, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_33
    :goto_33
    if-nez p1, :cond_3c

    iget p1, p2, Labcd/iG;->EQ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Labcd/iG;->EQ:I

    return v4

    :cond_3c
    if-lez v0, :cond_49

    invoke-virtual {v2}, Labcd/YJ;->DW()Labcd/jK;

    move-result-object p1

    instance-of p1, p1, Labcd/WF;

    if-eqz p1, :cond_49

    invoke-direct {p0, v3}, Labcd/sG;->j6([Labcd/yE;)V

    :cond_49
    return v6

    :cond_4a
    if-nez v1, :cond_5a

    invoke-virtual {v2}, Labcd/YJ;->EQ()Z

    move-result p1

    if-eqz p1, :cond_53

    return v6

    :cond_53
    iget p1, p2, Labcd/iG;->EQ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Labcd/iG;->EQ:I

    return v4

    :cond_5a
    new-array v7, v1, [I

    new-array v8, v1, [I

    :goto_5e
    invoke-virtual {v2}, Labcd/YJ;->EQ()Z

    move-result p1

    if-nez p1, :cond_9e

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_67
    if-lt p1, v1, :cond_75

    if-eqz v2, :cond_6e

    if-nez v3, :cond_6e

    return v6

    :cond_6e
    iget p1, p2, Labcd/iG;->EQ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Labcd/iG;->EQ:I

    return v4

    :cond_75
    aget v5, v7, p1

    if-nez v5, :cond_90

    aget-object v3, v0, p1

    iget v5, v3, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_83

    const/4 v3, 0x1

    goto :goto_9b

    :cond_83
    iget p1, p2, Labcd/iG;->EQ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Labcd/iG;->EQ:I

    new-array p1, v6, [Labcd/dG;

    aput-object v3, p1, v4

    iput-object p1, p2, Labcd/dG;->J8:[Labcd/dG;

    return v4

    :cond_90
    aget v2, v8, p1

    if-ne v5, v2, :cond_9a

    aget-object v2, v0, p1

    sget-object v5, Labcd/dG;->we:[Labcd/dG;

    iput-object v5, v2, Labcd/dG;->J8:[Labcd/dG;

    :cond_9a
    const/4 v2, 0x1

    :goto_9b
    add-int/lit8 p1, p1, 0x1

    goto :goto_67

    :cond_9e
    invoke-virtual {v2, v1}, Labcd/YJ;->FH(I)I

    move-result v9

    const/4 p1, 0x0

    :goto_a3
    if-lt p1, v1, :cond_a6

    goto :goto_5e

    :cond_a6
    invoke-virtual {v2, p1}, Labcd/YJ;->FH(I)I

    move-result v3

    if-ne v9, v3, :cond_b3

    invoke-virtual {v2, p1, v1}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_b3

    goto :goto_c1

    :cond_b3
    aget v5, v7, p1

    add-int/2addr v5, v6

    aput v5, v7, p1

    if-nez v3, :cond_c1

    if-eqz v9, :cond_c1

    aget v3, v8, p1

    add-int/2addr v3, v6

    aput v3, v8, p1

    :cond_c1
    :goto_c1
    add-int/lit8 p1, p1, 0x1

    goto :goto_a3

    :cond_c4
    iget-object v7, p2, Labcd/dG;->J8:[Labcd/dG;

    aget-object v7, v7, v5

    iget v8, v7, Labcd/iG;->EQ:I

    and-int/2addr v6, v8

    if-nez v6, :cond_d0

    invoke-virtual {v7, p1}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_d0
    invoke-virtual {v7}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b
.end method
