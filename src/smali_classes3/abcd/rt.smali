.class public Labcd/rt;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:[I

.field private Hw:[Labcd/ms;

.field private VH:Ljava/util/BitSet;

.field private Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Labcd/yt;

.field private tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v0

    iput v0, p0, Labcd/rt;->DW:I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/rt;->FH:[I

    new-array v0, v0, [Labcd/ms;

    iput-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_47
    iget v1, p0, Labcd/rt;->DW:I

    if-ge v0, v1, :cond_57

    iget-object v1, p0, Labcd/rt;->FH:[I

    aput p1, v1, v0

    iget-object v1, p0, Labcd/rt;->Hw:[Labcd/ms;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_57
    return-void
.end method

.method private DW()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/rt;->DW:I

    if-ge v0, v1, :cond_79

    iget-object v1, p0, Labcd/rt;->FH:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    goto :goto_76

    :cond_d
    iget-object v1, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v1, v1, v0

    instance-of v1, v1, Labcd/Ms;

    if-nez v1, :cond_16

    goto :goto_76

    :cond_16
    iget-object v1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-interface {v2}, Labcd/Rs;->a8()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_76

    :cond_2b
    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    iget-object v3, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v3, v3, v0

    check-cast v3, Labcd/Ms;

    invoke-virtual {v2, v3}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/vt;->j6(Labcd/bs;)V

    iget-object v1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    invoke-virtual {v2}, Labcd/vt;->XL()Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_46

    :cond_59
    move-object v3, v2

    check-cast v3, Labcd/mt;

    invoke-virtual {v2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2, v0}, Labcd/cs;->Hw(I)I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    iget-object v5, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v5, v5, v0

    check-cast v5, Labcd/Ms;

    invoke-virtual {v2, v5}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Labcd/mt;->j6(ILabcd/bs;)V

    goto :goto_46

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_79
    return-void
.end method

.method private DW(Labcd/tt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_1e

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_8

    :cond_1e
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private DW(Labcd/vt;)V
    .registers 9

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->DW()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->VH()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_19
    invoke-direct {p0, p1}, Labcd/rt;->j6(Labcd/vt;)V

    :cond_1c
    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4b

    const/16 v3, 0x11

    if-eq v1, v3, :cond_35

    const/16 v3, 0x12

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    return-void

    :cond_35
    :goto_35
    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vt;

    invoke-virtual {v3}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    :cond_4b
    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7f

    const/4 v4, 0x5

    if-eq v1, v4, :cond_78

    const/16 v0, 0x38

    if-eq v1, v0, :cond_6b

    packed-switch v1, :pswitch_data_aa

    packed-switch v1, :pswitch_data_b8

    goto :goto_9e

    :pswitch_60  #0xe, 0xf, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19
    invoke-virtual {v3}, Labcd/bs;->j3()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/rt;->j6(Labcd/vt;I)Labcd/ms;

    move-result-object p1

    if-eqz p1, :cond_9f

    goto :goto_a0

    :cond_6b
    iget-object p1, p0, Labcd/rt;->FH:[I

    aget p1, p1, v5

    if-ne p1, v2, :cond_9e

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v5

    move v2, p1

    move-object p1, v0

    goto :goto_a0

    :cond_78
    check-cast v0, Labcd/Pr;

    invoke-virtual {v0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    goto :goto_a0

    :cond_7f
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-ne v0, v2, :cond_9e

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    iget-object v0, p0, Labcd/rt;->FH:[I

    aget v2, v0, p1

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object p1, v0, p1

    goto :goto_a0

    :cond_9e
    :goto_9e
    const/4 p1, 0x0

    :cond_9f
    const/4 v2, 0x2

    :goto_a0
    invoke-direct {p0, v5, v2, p1}, Labcd/rt;->j6(IILabcd/ms;)Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-direct {p0, v5, v2}, Labcd/rt;->j6(II)V

    :cond_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0xe
        :pswitch_60  #0000000e
        :pswitch_60  #0000000f
        :pswitch_60  #00000010
        :pswitch_60  #00000011
        :pswitch_60  #00000012
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x14
        :pswitch_60  #00000014
        :pswitch_60  #00000015
        :pswitch_60  #00000016
        :pswitch_60  #00000017
        :pswitch_60  #00000018
        :pswitch_60  #00000019
    .end packed-switch
.end method

.method private FH()V
    .registers 4

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/tt;)V

    :cond_9
    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_31

    :cond_2a
    invoke-direct {p0}, Labcd/rt;->DW()V

    invoke-direct {p0}, Labcd/rt;->j6()V

    return-void

    :cond_31
    :goto_31
    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/tt;)V

    goto :goto_31

    :cond_4d
    :goto_4d
    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->FH(Labcd/tt;)V

    goto :goto_4d

    :cond_69
    :goto_69
    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    iget-object v1, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_92

    goto :goto_69

    :cond_92
    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_9c

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_69

    :cond_9c
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_69

    :cond_a0
    :goto_a0
    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    iget-object v1, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_c9

    goto :goto_a0

    :cond_c9
    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_d3

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_a0

    :cond_d3
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_a0
.end method

.method private FH(Labcd/tt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_1e

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_8

    :cond_1e
    return-void
.end method

.method private j6(Labcd/vt;I)Labcd/ms;
    .registers 10

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    iget-object v4, p0, Labcd/rt;->FH:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_23

    move-object v3, v5

    goto :goto_27

    :cond_23
    iget-object v4, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v3, v4, v3

    :goto_27
    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    if-ne v4, v6, :cond_34

    check-cast v0, Labcd/Pr;

    invoke-virtual {v0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    goto :goto_48

    :cond_34
    invoke-virtual {p1, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v4, p0, Labcd/rt;->FH:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_44

    move-object v0, v5

    goto :goto_48

    :cond_44
    iget-object v4, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v4, v0

    :goto_48
    if-eqz v3, :cond_9d

    if-nez v0, :cond_4d

    goto :goto_9d

    :cond_4d
    const/4 v4, 0x6

    if-eq p2, v4, :cond_51

    return-object v5

    :cond_51
    check-cast v3, Labcd/ys;

    invoke-virtual {v3}, Labcd/ys;->rN()I

    move-result p2

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    packed-switch v1, :pswitch_data_9e

    :pswitch_60  #0x13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected op"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_68  #0x19
    ushr-int p1, p2, v0

    goto :goto_96

    :pswitch_6b  #0x18
    shr-int p1, p2, v0

    goto :goto_96

    :pswitch_6e  #0x17
    shl-int p1, p2, v0

    goto :goto_96

    :pswitch_71  #0x16
    xor-int p1, p2, v0

    goto :goto_96

    :pswitch_74  #0x15
    or-int p1, p2, v0

    goto :goto_96

    :pswitch_77  #0x14
    and-int p1, p2, v0

    goto :goto_96

    :pswitch_7a  #0x12
    if-nez v0, :cond_7d

    goto :goto_81

    :cond_7d
    rem-int/2addr p2, v0

    goto :goto_95

    :pswitch_7f  #0x11
    if-nez v0, :cond_84

    :goto_81
    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_96

    :cond_84
    div-int/2addr p2, v0

    goto :goto_95

    :pswitch_86  #0x10
    mul-int p2, p2, v0

    goto :goto_95

    :pswitch_89  #0xf
    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p1

    if-ne p1, v6, :cond_92

    sub-int/2addr v0, p2

    move p1, v0

    goto :goto_96

    :cond_92
    sub-int/2addr p2, v0

    goto :goto_95

    :pswitch_94  #0xe
    add-int/2addr p2, v0

    :goto_95
    move p1, p2

    :goto_96
    if-eqz v2, :cond_99

    goto :goto_9d

    :cond_99
    invoke-static {p1}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v5

    :cond_9d
    :goto_9d
    return-object v5

    :pswitch_data_9e
    .packed-switch 0xe
        :pswitch_94  #0000000e
        :pswitch_89  #0000000f
        :pswitch_86  #00000010
        :pswitch_7f  #00000011
        :pswitch_7a  #00000012
        :pswitch_60  #00000013
        :pswitch_77  #00000014
        :pswitch_74  #00000015
        :pswitch_71  #00000016
        :pswitch_6e  #00000017
        :pswitch_6b  #00000018
        :pswitch_68  #00000019
    .end packed-switch
.end method

.method private j6()V
    .registers 10

    iget-object v0, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v3

    invoke-virtual {v3}, Labcd/au;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_21
    if-ge v5, v3, :cond_37

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v7

    invoke-virtual {v7, v5}, Labcd/au;->get(I)I

    move-result v7

    iget-object v8, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_34

    move v6, v7

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_37
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    if-ne v6, v4, :cond_3d

    goto :goto_6

    :cond_3d
    invoke-virtual {v1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v1

    new-instance v3, Labcd/Zr;

    sget-object v4, Labcd/gs;->j3:Labcd/es;

    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    const/4 v5, 0x0

    sget-object v7, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v4, v1, v5, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v2, v3}, Labcd/tt;->DW(Labcd/Tr;)V

    invoke-virtual {v2, v6}, Labcd/tt;->Hw(I)V

    goto :goto_6

    :cond_56
    return-void
.end method

.method private j6(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1f

    iget-object p2, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {p2, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/vt;

    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    iget-object p2, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {p2, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/vt;

    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3b
    return-void
.end method

.method private j6(Labcd/ot;)V
    .registers 13

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->FH:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    :goto_1c
    if-ge v4, v3, :cond_53

    invoke-virtual {p1, v4}, Labcd/ot;->FH(I)I

    move-result v7

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v8

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v8

    iget-object v9, p0, Labcd/rt;->FH:[I

    aget v9, v9, v8

    iget-object v10, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v7, 0x1

    if-ne v9, v7, :cond_51

    if-nez v6, :cond_43

    iget-object v5, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v5, v5, v8

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_4e

    :cond_43
    iget-object v7, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_54

    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_51
    move v2, v9

    goto :goto_54

    :cond_53
    move v2, v5

    :goto_54
    invoke-direct {p0, v0, v2, v6}, Labcd/rt;->j6(IILabcd/ms;)Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-direct {p0, v0, v2}, Labcd/rt;->j6(II)V

    :cond_5d
    return-void
.end method

.method private j6(Labcd/tt;)V
    .registers 4

    iget-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_20

    :cond_1b
    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    return-void
.end method

.method private j6(Labcd/vt;)V
    .registers 11

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v1

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_c7

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v3

    iget-object v6, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v6, v2}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_2d

    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, v3

    if-ne v2, v4, :cond_2d

    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v2, v3

    goto :goto_2e

    :cond_2d
    move-object v2, v6

    :goto_2e
    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4f

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v7

    iget-object v8, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v8, v3}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Labcd/rt;->FH:[I

    aget v3, v3, v7

    if-ne v3, v4, :cond_4f

    iget-object v3, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v6, v3, v7

    :cond_4f
    const-string v3, "Unexpected op"

    const/4 v7, 0x6

    if-eqz v2, :cond_8a

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    if-ne v1, v4, :cond_8a

    move-object v1, v2

    check-cast v1, Labcd/Ms;

    invoke-virtual {v1}, Labcd/Ms;->j3()I

    move-result v1

    if-eq v1, v7, :cond_65

    goto/16 :goto_c7

    :cond_65
    check-cast v2, Labcd/ys;

    invoke-virtual {v2}, Labcd/ys;->rN()I

    move-result v1

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    packed-switch v0, :pswitch_data_11c

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_78  #0xc
    if-lez v1, :cond_c4

    goto :goto_c2

    :pswitch_7b  #0xb
    if-gtz v1, :cond_c4

    goto :goto_c2

    :pswitch_7e  #0xa
    if-ltz v1, :cond_c4

    goto :goto_c2

    :pswitch_81  #0x9
    if-gez v1, :cond_c4

    goto :goto_c2

    :pswitch_84  #0x8
    if-eqz v1, :cond_c4

    goto :goto_c2

    :pswitch_87  #0x7
    if-nez v1, :cond_c4

    goto :goto_c2

    :cond_8a
    if-eqz v2, :cond_c7

    if-eqz v6, :cond_c7

    move-object v1, v2

    check-cast v1, Labcd/Ms;

    invoke-virtual {v1}, Labcd/Ms;->j3()I

    move-result v1

    if-eq v1, v7, :cond_98

    goto :goto_c7

    :cond_98
    check-cast v2, Labcd/ys;

    invoke-virtual {v2}, Labcd/ys;->rN()I

    move-result v1

    check-cast v6, Labcd/ys;

    invoke-virtual {v6}, Labcd/ys;->rN()I

    move-result v2

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    packed-switch v0, :pswitch_data_12c

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b1  #0xc
    if-le v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_b4  #0xb
    if-gt v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_b7  #0xa
    if-lt v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_ba  #0x9
    if-ge v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_bd  #0x8
    if-eq v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_c0  #0x7
    if-ne v1, v2, :cond_c4

    :goto_c2
    const/4 v0, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v0, 0x0

    :goto_c5
    const/4 v1, 0x1

    goto :goto_c9

    :cond_c7
    :goto_c7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c9
    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    if-eqz v1, :cond_f7

    if-eqz v0, :cond_da

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/au;->get(I)I

    move-result v0

    goto :goto_e2

    :cond_da
    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v5}, Labcd/au;->get(I)I

    move-result v0

    :goto_e2
    iget-object v1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/tt;)V

    iget-object v0, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    :cond_f7
    :goto_f7
    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object p1

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result p1

    if-ge v5, p1, :cond_11b

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object p1

    invoke-virtual {p1, v5}, Labcd/au;->get(I)I

    move-result p1

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    invoke-direct {p0, p1}, Labcd/rt;->j6(Labcd/tt;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    :cond_11b
    :goto_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x7
        :pswitch_87  #00000007
        :pswitch_84  #00000008
        :pswitch_81  #00000009
        :pswitch_7e  #0000000a
        :pswitch_7b  #0000000b
        :pswitch_78  #0000000c
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x7
        :pswitch_c0  #00000007
        :pswitch_bd  #00000008
        :pswitch_ba  #00000009
        :pswitch_b7  #0000000a
        :pswitch_b4  #0000000b
        :pswitch_b1  #0000000c
    .end packed-switch
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/rt;

    invoke-direct {v0, p0}, Labcd/rt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/rt;->FH()V

    return-void
.end method

.method private j6(IILabcd/ms;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_e

    iget-object p3, p0, Labcd/rt;->FH:[I

    aget v2, p3, p1

    if-eq v2, p2, :cond_d

    aput p2, p3, p1

    return v1

    :cond_d
    return v0

    :cond_e
    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_20

    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    :cond_20
    :goto_20
    iget-object v0, p0, Labcd/rt;->FH:[I

    aput p2, v0, p1

    iget-object p2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aput-object p3, p2, p1

    return v1
.end method
