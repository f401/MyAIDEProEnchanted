.class public Labcd/ut;
.super Ljava/lang/Object;


# direct methods
.method private static DW(Labcd/yt;)V
    .registers 9

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_73

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->XL()Z

    move-result v3

    if-nez v3, :cond_70

    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v1, :cond_70

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vt;

    invoke-virtual {v3}, Labcd/vt;->J0()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_41
    if-ltz v5, :cond_69

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/tt;

    invoke-virtual {v6, v2}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/vt;

    invoke-virtual {v7}, Labcd/vt;->clone()Labcd/vt;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_41

    :cond_69
    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_73
    return-void
.end method

.method private static FH(Labcd/yt;)V
    .registers 4

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1e

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-static {v1}, Labcd/ut;->j6(Labcd/tt;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Labcd/tt;->QX()Labcd/tt;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    return-void
.end method

.method private static Hw(Labcd/yt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_38

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-ltz v3, :cond_35

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/tt;

    invoke-static {v1, v4}, Labcd/ut;->j6(Labcd/tt;Labcd/tt;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v1, v4}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_38
    return-void
.end method

.method public static j6(Labcd/fs;IZ)Labcd/yt;
    .registers 3

    invoke-static {p0, p1, p2}, Labcd/yt;->j6(Labcd/fs;IZ)Labcd/yt;

    move-result-object p0

    invoke-static {p0}, Labcd/ut;->j6(Labcd/yt;)V

    invoke-static {p0}, Labcd/ht;->j6(Labcd/yt;)Labcd/it;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Labcd/ut;->j6(Labcd/yt;Labcd/it;I)V

    new-instance p1, Labcd/Bt;

    invoke-direct {p1, p0}, Labcd/Bt;-><init>(Labcd/yt;)V

    invoke-virtual {p1}, Labcd/Bt;->run()V

    invoke-virtual {p0}, Labcd/yt;->EQ()V

    return-object p0
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
    .registers 14

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v2

    sub-int/2addr v2, p2

    new-instance v3, Labcd/Ys;

    invoke-direct {v3, p0}, Labcd/Ys;-><init>(Labcd/yt;)V

    invoke-virtual {v3}, Labcd/Ys;->j6()[Labcd/Ys$a;

    move-result-object p0

    new-array v3, v2, [Ljava/util/BitSet;

    new-array v4, v2, [Ljava/util/BitSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v2, :cond_2f

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v3, v6

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v1, :cond_6b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/tt;

    invoke-virtual {v7}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_44
    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/vt;

    invoke-virtual {v8}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v8

    if-eqz v8, :cond_44

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v9

    sub-int/2addr v9, p2

    if-ltz v9, :cond_44

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v8

    sub-int/2addr v8, p2

    aget-object v8, v3, v8

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_44

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    if-ge v1, v2, :cond_cc

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    :cond_76
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    if-ltz v7, :cond_c9

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    aget-object v7, p0, v7

    iget-object v7, v7, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v7}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v7

    :cond_87
    :goto_87
    invoke-interface {v7}, Labcd/_t;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Labcd/_t;->next()I

    move-result v8

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_87

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    add-int v9, v1, p2

    invoke-virtual {p1, v8}, Labcd/it;->DW(I)Labcd/ds;

    move-result-object v10

    invoke-virtual {v10, v9}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v10

    if-nez v10, :cond_b4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/tt;

    invoke-virtual {v10, v9}, Labcd/tt;->FH(I)V

    goto :goto_bd

    :cond_b4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/tt;

    invoke-virtual {v9, v10}, Labcd/tt;->j6(Labcd/bs;)V

    :goto_bd
    aget-object v9, v3, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_87

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_87

    :cond_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_cc
    return-void
.end method

.method private static j6(Labcd/tt;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    if-le p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private static j6(Labcd/tt;Labcd/tt;)Z
    .registers 4

    invoke-virtual {p0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/vt;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result p0

    if-lez p0, :cond_2b

    :cond_20
    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method
