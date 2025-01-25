.class public Labcd/Dt;
.super Labcd/It;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Dt$a;
    }
.end annotation


# instance fields
.field private final EQ:Ljava/util/BitSet;

.field private final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Labcd/Vr;",
            "Ljava/util/ArrayList<",
            "Labcd/bs;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/mt;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/util/BitSet;

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/ot;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Labcd/et;

.field private final tp:Ljava/util/BitSet;

.field private final u7:I

.field private final v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/mt;",
            ">;"
        }
    .end annotation
.end field

.field private final we:Z


# direct methods
.method public constructor <init>(Labcd/yt;Labcd/Ft;Z)V
    .registers 6

    invoke-direct {p0, p1, p2}, Labcd/It;-><init>(Labcd/yt;Labcd/Ft;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    new-instance v0, Labcd/et;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v1

    invoke-direct {v0, p2, v1}, Labcd/et;-><init>(Labcd/Ft;I)V

    iput-object v0, p0, Labcd/Dt;->gn:Labcd/et;

    iput-boolean p3, p0, Labcd/Dt;->we:Z

    invoke-virtual {p1}, Labcd/yt;->gn()I

    move-result p1

    iput p1, p0, Labcd/Dt;->u7:I

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p3, p1, 0x2

    invoke-direct {p2, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/BitSet;->set(II)V

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Labcd/Dt;->EQ:Ljava/util/BitSet;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/Dt;->FH:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/Dt;->Hw:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/Dt;->v5:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/Dt;->Zo:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(II)I
    .registers 6

    iget-object v0, p0, Labcd/Dt;->EQ:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-ge v0, p2, :cond_16

    iget-object v1, p0, Labcd/Dt;->EQ:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    if-ne v0, p2, :cond_19

    return p1

    :cond_19
    iget-object v1, p0, Labcd/Dt;->EQ:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    goto :goto_6
.end method

.method private DW(Labcd/mt;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_10
    if-ge v6, v3, :cond_20

    invoke-virtual {v2, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v8

    invoke-virtual {v8}, Labcd/bs;->Hw()I

    move-result v8

    aput v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v11, v3, :cond_6e

    invoke-virtual {v2, v11}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v13

    invoke-virtual {v13}, Labcd/bs;->we()I

    move-result v13

    if-eqz v11, :cond_38

    add-int/lit8 v14, v11, -0x1

    aget v14, v4, v14

    sub-int/2addr v12, v14

    :cond_38
    iget-object v14, v0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_41

    goto :goto_6b

    :cond_41
    iget-object v14, v0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v14, v13}, Labcd/Ts;->j6(I)I

    move-result v13

    add-int/2addr v13, v12

    if-ltz v13, :cond_6b

    invoke-direct {v0, v13, v7}, Labcd/Dt;->v5(II)Z

    move-result v14

    if-eqz v14, :cond_51

    goto :goto_6b

    :cond_51
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v13, v1, v4, v14}, Labcd/Dt;->j6(ILabcd/mt;[ILjava/util/BitSet;)I

    move-result v15

    if-gez v15, :cond_5d

    goto :goto_6b

    :cond_5d
    invoke-virtual {v14}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v5, v15, v16

    if-le v5, v9, :cond_68

    move v9, v5

    move v10, v13

    move-object v8, v14

    :cond_68
    if-ne v15, v7, :cond_6b

    goto :goto_6e

    :cond_6b
    :goto_6b
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_6e
    :goto_6e
    if-ne v10, v6, :cond_79

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v1, v7, v4, v8}, Labcd/Dt;->j6(Labcd/mt;I[ILjava/util/BitSet;)I

    move-result v10

    :cond_79
    const/4 v3, 0x0

    :goto_7a
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-ltz v3, :cond_8e

    invoke-virtual {v2, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Labcd/It;->j6(Labcd/vt;Labcd/bs;)Labcd/bs;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Labcd/mt;->j6(ILabcd/bs;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_8e
    return v10
.end method

.method private DW(I)Labcd/Vr;
    .registers 6

    iget-object v0, p0, Labcd/Dt;->FH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v3, p1, :cond_20

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Vr;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic DW(Labcd/Dt;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/Dt;->Hw:Ljava/util/ArrayList;

    return-object p0
.end method

.method private DW(Labcd/bs;I)Z
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v0

    invoke-direct {p0, p2, v0}, Labcd/Dt;->v5(II)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v0, p1, p2}, Labcd/et;->j6(Labcd/bs;I)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private FH(I)I
    .registers 5

    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object p1

    check-cast p1, Labcd/Pr;

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/ys;

    invoke-virtual {p1}, Labcd/ys;->rN()I

    move-result p1

    return p1

    :cond_28
    return v0
.end method

.method static synthetic FH(Labcd/Dt;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/Dt;->v5:Ljava/util/ArrayList;

    return-object p0
.end method

.method private FH()V
    .registers 3

    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    new-instance v1, Labcd/Ct;

    invoke-direct {v1, p0}, Labcd/Ct;-><init>(Labcd/Dt;)V

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/vt$a;)V

    return-void
.end method

.method private FH(II)V
    .registers 5

    iget-object v0, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    add-int/2addr p2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method static synthetic Hw(Labcd/Dt;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/Dt;->Zo:Ljava/util/ArrayList;

    return-object p0
.end method

.method private Hw()V
    .registers 13

    iget-object v0, p0, Labcd/Dt;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/mt;

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v3

    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    goto :goto_6

    :cond_2a
    iget-object v4, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v4}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v4

    invoke-virtual {v4}, Labcd/es;->Hw()I

    move-result v4

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_57

    goto :goto_6

    :cond_57
    invoke-virtual {v1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v4

    invoke-virtual {v4, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v7

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v8

    iget-object v9, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iget-object v10, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v9

    if-eqz v11, :cond_82

    iget-object v10, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v10, v3}, Labcd/Ts;->j6(I)I

    move-result v10

    invoke-direct {p0, v4, v10, v8}, Labcd/Dt;->j6(Labcd/bs;II)Z

    move-result v10

    :cond_82
    xor-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v10

    if-eqz v11, :cond_91

    iget-object v9, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v9, v7}, Labcd/Ts;->j6(I)I

    move-result v9

    invoke-direct {p0, v2, v9, v8}, Labcd/Dt;->j6(Labcd/bs;II)Z

    move-result v9

    :cond_91
    if-eqz v9, :cond_95

    if-nez v10, :cond_b4

    :cond_95
    iget v9, p0, Labcd/Dt;->u7:I

    invoke-direct {p0, v9, v8}, Labcd/Dt;->j6(II)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a7
    invoke-direct {p0, v10, v9, v8, v6}, Labcd/Dt;->j6(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_b4

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9, v8}, Labcd/Dt;->j6(II)I

    move-result v9

    goto :goto_a7

    :cond_b4
    invoke-virtual {v1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v2

    invoke-interface {v2}, Labcd/Ss;->size()I

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v5, 0x0

    :goto_c4
    iget-object v2, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v2, v3}, Labcd/Ts;->j6(I)I

    move-result v2

    iget-object v3, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v3, v7}, Labcd/Ts;->j6(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    if-nez v5, :cond_6

    move-object v3, v1

    check-cast v3, Labcd/mt;

    invoke-virtual {p0, v1, v4}, Labcd/It;->j6(Labcd/vt;Labcd/bs;)Labcd/bs;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Labcd/mt;->j6(ILabcd/bs;)V

    invoke-virtual {v1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Labcd/Dt;->j6(Labcd/bs;I)V

    goto/16 :goto_6

    :cond_eb
    return-void
.end method

.method private Hw(II)Z
    .registers 5

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private VH()V
    .registers 8

    iget-object v0, p0, Labcd/Dt;->FH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v2, :cond_3c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/bs;

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v6

    invoke-direct {p0, v6}, Labcd/Dt;->FH(I)I

    move-result v6

    if-ltz v6, :cond_38

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v3

    invoke-direct {p0, v4, v6}, Labcd/Dt;->j6(Labcd/bs;I)V

    move v4, v6

    goto :goto_3c

    :cond_38
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1d

    :cond_3c
    :goto_3c
    if-gez v4, :cond_3f

    goto :goto_a

    :cond_3f
    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v3, v2}, Labcd/Dt;->j6(Ljava/util/ArrayList;IIZ)Z

    goto :goto_a

    :cond_44
    return-void
.end method

.method private Zo()V
    .registers 13

    iget-object v0, p0, Labcd/Dt;->FH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Labcd/Dt;->u7:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_21
    if-ge v7, v5, :cond_3f

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/bs;

    invoke-virtual {v9}, Labcd/bs;->Hw()I

    move-result v10

    iget-object v11, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_3c

    if-le v10, v8, :cond_3c

    move v8, v10

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_3f
    invoke-direct {p0, v2, v8}, Labcd/Dt;->DW(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Labcd/Dt;->j6(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-direct {p0, v1, v2, v8, v6}, Labcd/Dt;->j6(Ljava/util/ArrayList;IIZ)Z

    move-result v4

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_1a

    goto :goto_a

    :cond_52
    return-void
.end method

.method private gn()V
    .registers 7

    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_32

    iget-object v2, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_2f

    :cond_12
    invoke-virtual {p0, v1}, Labcd/It;->j6(I)Labcd/bs;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_2f

    :cond_19
    invoke-virtual {v2}, Labcd/bs;->Hw()I

    move-result v3

    iget v4, p0, Labcd/Dt;->u7:I

    :goto_1f
    invoke-direct {p0, v4, v3}, Labcd/Dt;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Labcd/Dt;->DW(Labcd/bs;I)Z

    move-result v5

    if-nez v5, :cond_2c

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2c
    invoke-direct {p0, v2, v4}, Labcd/Dt;->j6(Labcd/bs;I)V

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_32
    return-void
.end method

.method private j6(II)I
    .registers 6

    iget-object v0, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-ge v0, p2, :cond_16

    iget-object v1, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    if-ne v0, p2, :cond_19

    return p1

    :cond_19
    iget-object v1, p0, Labcd/Dt;->tp:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    goto :goto_6
.end method

.method private j6(ILabcd/mt;[ILjava/util/BitSet;)I
    .registers 14

    invoke-virtual {p2}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {p2}, Labcd/vt;->DW()Labcd/tt;

    move-result-object p2

    invoke-virtual {p2}, Labcd/tt;->Hw()Labcd/bu;

    move-result-object p2

    invoke-virtual {p0, p2}, Labcd/Dt;->j6(Labcd/bu;)Labcd/cs;

    move-result-object p2

    new-instance v2, Ljava/util/BitSet;

    iget-object v3, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v3}, Labcd/yt;->u7()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    if-ge v3, v1, :cond_7c

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v6

    aget v7, p3, v3

    if-eqz v3, :cond_34

    add-int/lit8 v8, v3, -0x1

    aget v8, p3, v8

    add-int/2addr p1, v8

    :cond_34
    iget-object v8, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v8, v6}, Labcd/Ts;->j6(I)I

    move-result v8

    if-ne v8, p1, :cond_45

    goto :goto_60

    :cond_45
    invoke-direct {p0, p1, v7}, Labcd/Dt;->Hw(II)Z

    move-result v8

    if-eqz v8, :cond_4c

    goto :goto_7b

    :cond_4c
    iget-object v8, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_62

    invoke-direct {p0, v5, p1}, Labcd/Dt;->DW(Labcd/bs;I)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_62

    :goto_60
    add-int/2addr v4, v7

    goto :goto_75

    :cond_62
    iget-object v5, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v5, p2, p1, v7}, Labcd/et;->j6(Labcd/cs;II)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v5, v0, p1, v7}, Labcd/et;->j6(Labcd/cs;II)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {p4, v3}, Ljava/util/BitSet;->set(I)V

    :goto_75
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_7b
    :goto_7b
    const/4 v4, -0x1

    :cond_7c
    return v4
.end method

.method private j6(Labcd/mt;I[ILjava/util/BitSet;)I
    .registers 7

    iget v0, p0, Labcd/Dt;->u7:I

    :goto_2
    invoke-direct {p0, v0, p2}, Labcd/Dt;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, p1, p3, p4}, Labcd/Dt;->j6(ILabcd/mt;[ILjava/util/BitSet;)I

    move-result v1

    if-ltz v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_2
.end method

.method static synthetic j6(Labcd/Dt;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Labcd/Dt;->FH:Ljava/util/Map;

    return-object p0
.end method

.method private j6(Labcd/bs;I)V
    .registers 6

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, p1, p2}, Labcd/Dt;->DW(Labcd/bs;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v1

    iget-object v2, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-virtual {v2, p1, p2, v1}, Labcd/et;->j6(III)V

    iget-object p1, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p0, Labcd/Dt;->EQ:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "attempt to add invalid register mapping"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Labcd/mt;)V
    .registers 13

    invoke-direct {p0, p1}, Labcd/Dt;->DW(Labcd/mt;)I

    move-result v0

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_5c

    invoke-virtual {p1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v6

    iget-object v7, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_25

    goto :goto_58

    :cond_25
    invoke-direct {p0, v5}, Labcd/Dt;->DW(I)Labcd/Vr;

    move-result-object v5

    invoke-direct {p0, v4, v0}, Labcd/Dt;->j6(Labcd/bs;I)V

    if-eqz v5, :cond_58

    invoke-direct {p0, v0, v6}, Labcd/Dt;->FH(II)V

    iget-object v4, p0, Labcd/Dt;->FH:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v5, :cond_58

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/bs;

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v9

    invoke-virtual {p1, v9}, Labcd/cs;->Hw(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_52

    goto :goto_55

    :cond_52
    invoke-direct {p0, v8, v0, v6}, Labcd/Dt;->j6(Labcd/bs;II)Z

    :goto_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v6

    goto :goto_e

    :cond_5c
    return-void
.end method

.method private j6(Labcd/ot;)V
    .registers 11

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v2

    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Labcd/Dt$a;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6}, Labcd/Dt$a;-><init>(I)V

    iget-object v6, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v0, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v0, v1}, Labcd/Ts;->j6(I)I

    move-result v0

    invoke-virtual {v5, v0}, Labcd/Dt$a;->j6(I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v3, :cond_67

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    iget-object v7, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v6

    invoke-virtual {v7, v6}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v7

    iget-object v8, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_61

    iget-object v6, p0, Labcd/Dt;->gn:Labcd/et;

    invoke-virtual {v6, v7}, Labcd/Ts;->j6(I)I

    move-result v6

    invoke-virtual {v5, v6}, Labcd/Dt$a;->j6(I)V

    goto :goto_64

    :cond_61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_67
    const/4 p1, 0x0

    :goto_68
    invoke-virtual {v5}, Labcd/Dt$a;->DW()I

    move-result v1

    if-ge p1, v1, :cond_78

    invoke-virtual {v5}, Labcd/Dt$a;->j6()I

    move-result v1

    invoke-direct {p0, v4, v1, v2, v0}, Labcd/Dt;->j6(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_68

    :cond_78
    iget p1, p0, Labcd/Dt;->u7:I

    :goto_7a
    invoke-direct {p0, p1, v2}, Labcd/Dt;->j6(II)I

    move-result p1

    invoke-direct {p0, v4, p1, v2, v0}, Labcd/Dt;->j6(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    if-nez v1, :cond_87

    add-int/lit8 p1, p1, 0x1

    goto :goto_7a

    :cond_87
    return-void
.end method

.method private j6(Labcd/bs;II)Z
    .registers 5

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v0

    if-gt v0, p3, :cond_1d

    iget-object p3, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-nez p3, :cond_1d

    invoke-direct {p0, p1, p2}, Labcd/Dt;->DW(Labcd/bs;I)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-direct {p0, p1, p2}, Labcd/Dt;->j6(Labcd/bs;I)V

    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private j6(Ljava/util/ArrayList;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/bs;",
            ">;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    iget-object v1, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_4

    :cond_1d
    invoke-direct {p0, v0, p2}, Labcd/Dt;->DW(Labcd/bs;I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method private j6(Ljava/util/ArrayList;IIZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/bs;",
            ">;IIZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/bs;

    iget-object v4, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_6

    :cond_20
    invoke-direct {p0, v2, p2, p3}, Labcd/Dt;->j6(Labcd/bs;II)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    :goto_2c
    if-eqz v4, :cond_6

    if-eqz p4, :cond_6

    invoke-virtual {v2}, Labcd/bs;->Hw()I

    move-result v2

    invoke-direct {p0, p2, v2}, Labcd/Dt;->FH(II)V

    goto :goto_6

    :cond_38
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method private tp()V
    .registers 5

    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Labcd/Dt;->VH:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_1f

    :cond_12
    invoke-direct {p0, v1}, Labcd/Dt;->FH(I)I

    move-result v2

    invoke-virtual {p0, v1}, Labcd/It;->j6(I)Labcd/bs;

    move-result-object v3

    if-ltz v2, :cond_1f

    invoke-direct {p0, v3, v2}, Labcd/Dt;->j6(Labcd/bs;I)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method private u7()V
    .registers 3

    iget-object v0, p0, Labcd/Dt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ot;

    invoke-direct {p0, v1}, Labcd/Dt;->j6(Labcd/ot;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private v5()V
    .registers 3

    iget-object v0, p0, Labcd/Dt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/mt;

    invoke-direct {p0, v1}, Labcd/Dt;->j6(Labcd/mt;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private v5(II)Z
    .registers 4

    iget v0, p0, Labcd/Dt;->u7:I

    if-ge p1, v0, :cond_9

    add-int/2addr p1, p2

    if-le p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method


# virtual methods
.method public DW()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method j6(Labcd/bu;)Labcd/cs;
    .registers 5

    new-instance v0, Labcd/cs;

    invoke-interface {p1}, Labcd/bu;->j6()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/cs;-><init>(I)V

    invoke-interface {p1}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object p1

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p1}, Labcd/_t;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1}, Labcd/_t;->next()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/It;->j6(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public j6()Labcd/qt;
    .registers 2

    invoke-direct {p0}, Labcd/Dt;->FH()V

    invoke-direct {p0}, Labcd/Dt;->VH()V

    invoke-direct {p0}, Labcd/Dt;->tp()V

    invoke-direct {p0}, Labcd/Dt;->v5()V

    invoke-direct {p0}, Labcd/Dt;->Zo()V

    invoke-direct {p0}, Labcd/Dt;->Hw()V

    invoke-direct {p0}, Labcd/Dt;->u7()V

    invoke-direct {p0}, Labcd/Dt;->gn()V

    iget-object v0, p0, Labcd/Dt;->gn:Labcd/et;

    return-object v0
.end method
