.class public Labcd/Ws;
.super Ljava/lang/Object;


# static fields
.field private static DW:Z

.field private static j6:Z


# instance fields
.field private final FH:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ws;->FH:Labcd/yt;

    return-void
.end method

.method private DW()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->u7()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Labcd/Ws;->j6()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v4}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v3, :cond_9e

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/Ms;

    iget-object v8, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v8}, Labcd/yt;->J0()I

    move-result v8

    invoke-static {v8, v7}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v14

    invoke-static {v7}, Labcd/gs;->v5(Labcd/Rs;)Labcd/es;

    move-result-object v9

    invoke-virtual {v9}, Labcd/es;->DW()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_56

    new-instance v15, Labcd/Yr;

    invoke-static {v7}, Labcd/gs;->v5(Labcd/Rs;)Labcd/es;

    move-result-object v9

    sget-object v10, Labcd/hs;->j6:Labcd/hs;

    sget-object v12, Labcd/cs;->FH:Labcd/cs;

    move-object v8, v15

    move-object v11, v14

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {v4, v15}, Labcd/tt;->j6(Labcd/Tr;)V

    move-object/from16 v17, v2

    move/from16 v16, v3

    goto :goto_94

    :cond_56
    iget-object v8, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v8}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v8

    invoke-virtual {v8}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v15

    invoke-virtual {v8, v15}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v13

    new-instance v12, Labcd/js;

    sget-object v10, Labcd/hs;->j6:Labcd/hs;

    sget-object v11, Labcd/cs;->FH:Labcd/cs;

    sget-object v16, Labcd/Ps;->FH:Labcd/Ps;

    move-object v8, v12

    move-object/from16 v17, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move/from16 v16, v3

    move-object v3, v13

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    invoke-virtual {v3, v2}, Labcd/tt;->DW(Labcd/Tr;)V

    invoke-virtual {v3, v15}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v2

    new-instance v3, Labcd/Zr;

    invoke-virtual {v14}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v8

    invoke-static {v8}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v8

    sget-object v9, Labcd/hs;->j6:Labcd/hs;

    sget-object v10, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v8, v9, v14, v10}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v2, v3}, Labcd/tt;->j6(Labcd/Tr;)V

    :goto_94
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move-object/from16 v2, v17

    goto :goto_21

    :cond_9e
    invoke-direct {v0, v5, v1}, Labcd/Ws;->j6(Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic j6(Labcd/Ws;)Labcd/yt;
    .registers 1

    iget-object p0, p0, Labcd/Ws;->FH:Labcd/yt;

    return-object p0
.end method

.method private j6()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/Ms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x1

    if-ge v4, v0, :cond_bc

    iget-object v6, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v6, v4}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v6

    if-eqz v6, :cond_b8

    invoke-virtual {v6}, Labcd/vt;->v5()Labcd/es;

    move-result-object v7

    if-nez v7, :cond_25

    goto/16 :goto_b8

    :cond_25
    invoke-virtual {v6}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v8

    invoke-interface {v8}, Labcd/Rs;->a8()Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_b8

    :cond_35
    check-cast v8, Labcd/Ms;

    invoke-virtual {v6}, Labcd/vt;->v5()Labcd/es;

    move-result-object v9

    invoke-virtual {v9}, Labcd/es;->Hw()I

    move-result v9

    const/16 v10, 0x38

    if-ne v9, v10, :cond_6a

    invoke-virtual {v6}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    iget-object v9, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v9}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/tt;

    invoke-virtual {v6}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/vt;

    :cond_6a
    invoke-virtual {v6}, Labcd/vt;->j6()Z

    move-result v9

    if-eqz v9, :cond_88

    instance-of v9, v8, Labcd/Js;

    if-eqz v9, :cond_b8

    sget-boolean v9, Labcd/Ws;->j6:Z

    if-nez v9, :cond_79

    goto :goto_b8

    :cond_79
    invoke-virtual {v6}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    if-le v6, v5, :cond_88

    goto :goto_b8

    :cond_88
    iget-object v6, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v6, v7}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v6

    if-eqz v6, :cond_9f

    sget-boolean v6, Labcd/Ws;->DW:Z

    if-nez v6, :cond_95

    goto :goto_b8

    :cond_95
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    goto :goto_b8

    :cond_9c
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9f
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_ac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b5

    :cond_ac
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_b5
    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    :goto_b8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_bc
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c9
    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_c9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    :cond_e9
    new-instance v2, Labcd/Us;

    invoke-direct {v2, p0, v1}, Labcd/Us;-><init>(Labcd/Ws;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private j6(Labcd/bs;Labcd/bs;)V
    .registers 9

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-virtual {v0, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_e

    :cond_21
    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_e

    :cond_28
    invoke-virtual {v1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/vt;->j6(Labcd/Vr;)V

    invoke-virtual {p2, v1}, Labcd/bs;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object p2

    new-instance v1, Labcd/Zr;

    invoke-static {p2}, Labcd/gs;->gn(Labcd/Rs;)Labcd/es;

    move-result-object v3

    sget-object v4, Labcd/hs;->j6:Labcd/hs;

    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v1

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    :cond_5d
    return-void
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/Ws;

    invoke-direct {v0, p0}, Labcd/Ws;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/Ws;->DW()V

    return-void
.end method

.method private j6(Ljava/util/HashMap;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Labcd/Ms;",
            "Labcd/bs;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->tp()[Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p2, :cond_8f

    iget-object v3, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v3, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    if-nez v3, :cond_18

    goto/16 :goto_8b

    :cond_18
    invoke-virtual {v3}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v4

    invoke-virtual {v3}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v3

    invoke-interface {v3}, Labcd/Rs;->a8()Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_8b

    :cond_2b
    check-cast v3, Labcd/Ms;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/bs;

    if-nez v5, :cond_36

    goto :goto_8b

    :cond_36
    iget-object v6, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v6, v4}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v6

    if-eqz v6, :cond_56

    sget-boolean v6, Labcd/Ws;->DW:Z

    if-nez v6, :cond_43

    goto :goto_8b

    :cond_43
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_8b

    :cond_4a
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/bs;

    invoke-direct {p0, v4, v3}, Labcd/Ws;->j6(Labcd/bs;Labcd/bs;)V

    :cond_56
    new-instance v3, Labcd/Vs;

    invoke-direct {v3, p0, v4, v5}, Labcd/Vs;-><init>(Labcd/Ws;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/vt;

    invoke-virtual {v5}, Labcd/vt;->j6()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v5}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_87

    goto :goto_65

    :cond_87
    invoke-virtual {v5, v3}, Labcd/vt;->DW(Labcd/qt;)V

    goto :goto_65

    :cond_8b
    :goto_8b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_8f
    return-void
.end method
