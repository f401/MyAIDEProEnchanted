.class public Labcd/ut;
.super Ljava/lang/Object;


# direct methods
.method private static DW(Labcd/yt;)V
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->XL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v4, v1

    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, v2}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->clone()Labcd/vt;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static FH(Labcd/yt;)V
    .registers 5

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-static {v0}, Labcd/ut;->j6(Labcd/tt;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Labcd/tt;->QX()Labcd/tt;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static Hw(Labcd/yt;)V
    .registers 8

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v4, v0

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-static {v1, v0}, Labcd/ut;->j6(Labcd/tt;Labcd/tt;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v0}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    :cond_0
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static j6(Labcd/fs;IZ)Labcd/yt;
    .registers 6

    invoke-static {p0, p1, p2}, Labcd/yt;->j6(Labcd/fs;IZ)Labcd/yt;

    move-result-object v0

    invoke-static {v0}, Labcd/ut;->j6(Labcd/yt;)V

    invoke-static {v0}, Labcd/ht;->j6(Labcd/yt;)Labcd/it;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ut;->j6(Labcd/yt;Labcd/it;I)V

    new-instance v1, Labcd/Bt;

    invoke-direct {v1, v0}, Labcd/Bt;-><init>(Labcd/yt;)V

    invoke-virtual {v1}, Labcd/Bt;->run()V

    invoke-virtual {v0}, Labcd/yt;->EQ()V

    return-object v0
.end method

.method private static j6(Labcd/yt;)V
    .registers 1

    invoke-static {p0}, Labcd/ut;->FH(Labcd/yt;)V

    invoke-static {p0}, Labcd/ut;->DW(Labcd/yt;)V

    invoke-static {p0}, Labcd/ut;->Hw(Labcd/yt;)V

    return-void
.end method

.method public static j6(Labcd/yt;I)V
    .registers 3

    invoke-static {p0}, Labcd/ht;->j6(Labcd/yt;)Labcd/it;

    move-result-object v0

    invoke-static {p0, v0, p1}, Labcd/ut;->j6(Labcd/yt;Labcd/it;I)V

    new-instance v0, Labcd/Bt;

    invoke-direct {v0, p0, p1}, Labcd/Bt;-><init>(Labcd/yt;I)V

    invoke-virtual {v0}, Labcd/Bt;->run()V

    return-void
.end method

.method private static j6(Labcd/yt;Labcd/it;I)V
    .registers 16

    const/4 v3, 0x0

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v0

    sub-int v5, v0, p2

    new-instance v0, Labcd/Ys;

    invoke-direct {v0, p0}, Labcd/Ys;-><init>(Labcd/yt;)V

    invoke-virtual {v0}, Labcd/Ys;->j6()[Labcd/Ys$a;

    move-result-object v6

    new-array v7, v5, [Ljava/util/BitSet;

    new-array v8, v5, [Ljava/util/BitSet;

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_0

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v7, v0

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v10

    sub-int/2addr v10, p2

    if-ltz v10, :cond_1

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    sub-int/2addr v0, p2

    aget-object v0, v7, v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    aget-object v1, v6, v1

    iget-object v1, v1, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v1}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v9

    :cond_5
    :goto_4
    invoke-interface {v9}, Labcd/_t;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Labcd/_t;->next()I

    move-result v10

    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    add-int v11, v2, p2

    invoke-virtual {p1, v10}, Labcd/it;->DW(I)Labcd/ds;

    move-result-object v1

    invoke-virtual {v1, v11}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, v11}, Labcd/tt;->FH(I)V

    :goto_5
    aget-object v1, v7, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, v12}, Labcd/tt;->j6(Labcd/bs;)V

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    return-void
.end method

.method private static j6(Labcd/tt;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v1, v0, :cond_0

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Labcd/tt;Labcd/tt;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
