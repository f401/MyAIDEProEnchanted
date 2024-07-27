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
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->u7()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Labcd/Ws;->j6()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v18

    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/Ms;

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->J0()I

    move-result v2

    invoke-static {v2, v7}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v5

    invoke-static {v7}, Labcd/gs;->v5(Labcd/Rs;)Labcd/es;

    move-result-object v9

    invoke-virtual {v9}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Labcd/Yr;

    invoke-static {v7}, Labcd/gs;->v5(Labcd/Rs;)Labcd/es;

    move-result-object v3

    sget-object v4, Labcd/hs;->j6:Labcd/hs;

    sget-object v6, Labcd/cs;->FH:Labcd/cs;

    invoke-direct/range {v2 .. v7}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Labcd/tt;->j6(Labcd/Tr;)V

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v2

    new-instance v8, Labcd/js;

    sget-object v10, Labcd/hs;->j6:Labcd/hs;

    sget-object v11, Labcd/cs;->FH:Labcd/cs;

    sget-object v12, Labcd/Ps;->FH:Labcd/Ps;

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    invoke-virtual {v2, v8}, Labcd/tt;->DW(Labcd/Tr;)V

    invoke-virtual {v2, v3}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v2

    new-instance v3, Labcd/Zr;

    invoke-virtual {v5}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v4

    invoke-static {v4}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v4

    sget-object v6, Labcd/hs;->j6:Labcd/hs;

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v4, v6, v5, v8}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v2, v3}, Labcd/tt;->j6(Labcd/Tr;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Labcd/Ws;->j6(Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic j6(Labcd/Ws;)Labcd/yt;
    .registers 2

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    return-object v0
.end method

.method private j6()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Ms;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v8

    if-eqz v8, :cond_0

    check-cast v0, Labcd/Ms;

    invoke-virtual {v1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v8

    invoke-virtual {v8}, Labcd/es;->Hw()I

    move-result v8

    const/16 v9, 0x38

    if-ne v8, v9, :cond_2

    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iget-object v8, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v8}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    :cond_2
    invoke-virtual {v1}, Labcd/vt;->j6()Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v0, Labcd/Js;

    if-eqz v8, :cond_0

    sget-boolean v8, Labcd/Ws;->j6:Z

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-gt v1, v10, :cond_0

    :cond_3
    iget-object v1, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v1, v7}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Labcd/Ws;->DW:Z

    if-eqz v1, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v10, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v0, Labcd/Us;

    invoke-direct {v0, p0, v5}, Labcd/Us;-><init>(Labcd/Ws;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private j6(Labcd/bs;Labcd/bs;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-virtual {v0, v6}, Labcd/vt;->j6(Labcd/Vr;)V

    invoke-virtual {p2, v2}, Labcd/bs;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object p2

    new-instance v2, Labcd/Zr;

    invoke-static {p2}, Labcd/gs;->gn(Labcd/Rs;)Labcd/es;

    move-result-object v3

    sget-object v4, Labcd/hs;->j6:Labcd/hs;

    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v5

    invoke-direct {v2, v3, v4, v6, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v2

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
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
            "Ljava/util/HashMap",
            "<",
            "Labcd/Ms;",
            "Labcd/bs;",
            ">;I)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->tp()[Ljava/util/ArrayList;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_5

    iget-object v0, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Labcd/Ms;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/bs;

    if-eqz v1, :cond_0

    iget-object v6, p0, Labcd/Ws;->FH:Labcd/yt;

    invoke-virtual {v6, v5}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Labcd/Ws;->DW:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    invoke-direct {p0, v5, v0}, Labcd/Ws;->j6(Labcd/bs;Labcd/bs;)V

    :cond_2
    new-instance v6, Labcd/Vs;

    invoke-direct {v6, p0, v5, v1}, Labcd/Vs;-><init>(Labcd/Ws;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->j6()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v5

    invoke-virtual {v5}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_3

    :cond_4
    invoke-virtual {v0, v6}, Labcd/vt;->DW(Labcd/qt;)V

    goto :goto_1

    :cond_5
    return-void
.end method
