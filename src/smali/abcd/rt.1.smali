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
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Labcd/yt;

.field private tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v0

    iput v0, p0, Labcd/rt;->DW:I

    iget v0, p0, Labcd/rt;->DW:I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/rt;->FH:[I

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    iget v2, p0, Labcd/rt;->DW:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Labcd/rt;->FH:[I

    aput v1, v2, v0

    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private DW()V
    .registers 7

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Labcd/rt;->DW:I

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Labcd/rt;->FH:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v2

    instance-of v0, v0, Labcd/Ms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v2

    check-cast v0, Labcd/Ms;

    invoke-virtual {v3, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/vt;->j6(Labcd/bs;)V

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->XL()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Labcd/mt;

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v2}, Labcd/cs;->Hw(I)I

    move-result v4

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v2

    check-cast v0, Labcd/Ms;

    invoke-virtual {v5, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Labcd/mt;->j6(ILabcd/bs;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private DW(Labcd/tt;)V
    .registers 5

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v2, v0, Labcd/ot;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private DW(Labcd/vt;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Labcd/rt;->j6(Labcd/vt;)V

    :cond_1
    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v5

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x11

    if-eq v5, v0, :cond_2

    const/16 v0, 0x12

    if-ne v5, v0, :cond_5

    :cond_2
    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v6

    const/4 v2, 0x0

    if-eq v5, v4, :cond_8

    const/4 v7, 0x5

    if-eq v5, v7, :cond_7

    const/16 v1, 0x38

    if-eq v5, v1, :cond_6

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    move-object v0, v2

    :cond_4
    :goto_0
    move v1, v4

    move-object v2, v0

    :goto_1
    invoke-direct {p0, v6, v1, v2}, Labcd/rt;->j6(IILabcd/ms;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v6, v1}, Labcd/rt;->j6(II)V

    :cond_5
    return-void

    :pswitch_0
    invoke-virtual {v0}, Labcd/bs;->j3()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/rt;->j6(Labcd/vt;I)Labcd/ms;

    move-result-object v0

    if-eqz v0, :cond_4

    move v1, v3

    move-object v2, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Labcd/rt;->FH:[I

    aget v1, v0, v6

    if-ne v1, v3, :cond_9

    aget v0, v0, v6

    iget-object v1, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v1, v6

    move v1, v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    check-cast v0, Labcd/Pr;

    invoke-virtual {v0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    move v1, v3

    move-object v2, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-ne v0, v3, :cond_9

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v7}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    iget-object v0, p0, Labcd/rt;->FH:[I

    aget v0, v0, v1

    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v2, v1

    move v1, v0

    goto :goto_1

    :cond_9
    move-object v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private FH()V
    .registers 4

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/tt;)V

    :cond_0
    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/tt;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Labcd/rt;->DW()V

    invoke-direct {p0}, Labcd/rt;->j6()V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->FH(Labcd/tt;)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

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

    if-eqz v1, :cond_4

    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_5

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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

    if-eqz v1, :cond_6

    instance-of v1, v0, Labcd/ot;

    if-eqz v1, :cond_7

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0}, Labcd/rt;->DW(Labcd/vt;)V

    goto :goto_3
.end method

.method private FH(Labcd/tt;)V
    .registers 5

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v2, v0, Labcd/ot;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/ot;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/ot;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6(Labcd/vt;I)Labcd/ms;
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v6

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v7

    invoke-virtual {v7, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, v1

    if-eq v2, v5, :cond_1

    move-object v1, v3

    :goto_0
    invoke-virtual {v7}, Labcd/Xt;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    check-cast v0, Labcd/Pr;

    invoke-virtual {v0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_4

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v1, v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, v0

    if-eq v2, v5, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v2, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    move-object v0, v1

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v1

    move-object v0, v2

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    ushr-int/2addr v1, v0

    move v0, v4

    :goto_3
    if-nez v0, :cond_0

    invoke-static {v1}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    shr-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_3
    shl-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_4
    xor-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_5
    or-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_6
    and-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_7
    if-nez v0, :cond_6

    :cond_5
    move v0, v5

    move v1, v4

    goto :goto_3

    :cond_6
    rem-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_8
    if-eqz v0, :cond_5

    div-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_9
    mul-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_a
    invoke-virtual {v7}, Labcd/Xt;->size()I

    move-result v2

    if-ne v2, v5, :cond_7

    sub-int v1, v0, v1

    move v0, v4

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    :pswitch_b
    add-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private j6()V
    .registers 10

    const/4 v3, -0x1

    iget-object v0, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->J8()Labcd/au;

    move-result-object v1

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v7

    const/4 v1, 0x0

    move v2, v3

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_1

    invoke-virtual {v6}, Labcd/tt;->J8()Labcd/au;

    move-result-object v1

    invoke-virtual {v1, v4}, Labcd/au;->get(I)I

    move-result v1

    iget-object v8, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    new-instance v1, Labcd/Zr;

    sget-object v4, Labcd/gs;->j3:Labcd/es;

    invoke-virtual {v0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    const/4 v7, 0x0

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v4, v0, v7, v8}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v6, v1}, Labcd/tt;->DW(Labcd/Tr;)V

    invoke-virtual {v6, v2}, Labcd/tt;->Hw(I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private j6(II)V
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    iget-object v2, p0, Labcd/rt;->u7:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    iget-object v2, p0, Labcd/rt;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j6(Labcd/ot;)V
    .registers 14

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v6

    iget-object v0, p0, Labcd/rt;->FH:[I

    aget v0, v0, v6

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7}, Labcd/Xt;->size()I

    move-result v8

    move v5, v4

    move v1, v4

    :goto_1
    if-ge v5, v8, :cond_5

    invoke-virtual {p1, v5}, Labcd/ot;->FH(I)I

    move-result v9

    invoke-virtual {v7, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v10

    iget-object v4, p0, Labcd/rt;->FH:[I

    aget v4, v4, v10

    iget-object v11, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    if-ne v4, v2, :cond_6

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v10

    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v4, v4, v10

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v3

    :cond_5
    :goto_3
    invoke-direct {p0, v6, v1, v0}, Labcd/rt;->j6(IILabcd/ms;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, v1}, Labcd/rt;->j6(II)V

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method private j6(Labcd/tt;)V
    .registers 4

    iget-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/rt;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/rt;->VH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/rt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/vt;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v9, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v5

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v6

    invoke-virtual {v5}, Labcd/es;->DW()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {v6, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v2

    iget-object v7, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v7, v1}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/rt;->FH:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_9

    invoke-virtual {v6, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v7

    iget-object v8, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v8, v2}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, v7

    if-ne v2, v3, :cond_9

    iget-object v0, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v0, v0, v7

    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    move-object v0, v1

    check-cast v0, Labcd/Ms;

    invoke-virtual {v0}, Labcd/Ms;->j3()I

    move-result v0

    if-eq v0, v9, :cond_3

    :cond_0
    move v0, v4

    move v1, v4

    :goto_2
    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v0

    :goto_3
    iget-object v1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/tt;)V

    iget-object v0, p0, Labcd/rt;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    check-cast v1, Labcd/ys;

    invoke-virtual {v1}, Labcd/ys;->rN()I

    move-result v0

    invoke-virtual {v5}, Labcd/es;->Hw()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-lez v0, :cond_5

    :cond_4
    :goto_4
    move v0, v3

    :goto_5
    move v1, v3

    goto :goto_2

    :pswitch_1
    if-lez v0, :cond_4

    :cond_5
    move v0, v4

    goto :goto_5

    :pswitch_2
    if-ltz v0, :cond_5

    goto :goto_4

    :pswitch_3
    if-gez v0, :cond_5

    goto :goto_4

    :pswitch_4
    if-eqz v0, :cond_5

    goto :goto_4

    :pswitch_5
    if-nez v0, :cond_5

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Labcd/Ms;

    invoke-virtual {v0}, Labcd/Ms;->j3()I

    move-result v0

    if-ne v0, v9, :cond_0

    check-cast v1, Labcd/ys;

    invoke-virtual {v1}, Labcd/ys;->rN()I

    move-result v1

    move-object v0, v2

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-virtual {v5}, Labcd/es;->Hw()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-le v1, v0, :cond_5

    goto :goto_4

    :pswitch_7
    if-gt v1, v0, :cond_5

    goto :goto_4

    :pswitch_8
    if-lt v1, v0, :cond_5

    goto :goto_4

    :pswitch_9
    if-ge v1, v0, :cond_5

    goto :goto_4

    :pswitch_a
    if-eq v1, v0, :cond_5

    goto :goto_4

    :pswitch_b
    if-ne v1, v0, :cond_5

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/au;->get(I)I

    move-result v0

    goto/16 :goto_3

    :cond_8
    :goto_6
    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-virtual {v2}, Labcd/tt;->J8()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/au;->get(I)I

    move-result v0

    iget-object v1, p0, Labcd/rt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/rt;->j6(Labcd/tt;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    move-object v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v3, v2, p1

    if-eq v3, p2, :cond_0

    aput p2, v2, p1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Labcd/rt;->FH:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Labcd/rt;->Hw:[Labcd/ms;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Labcd/rt;->FH:[I

    aput p2, v1, p1

    iget-object v1, p0, Labcd/rt;->Hw:[Labcd/ms;

    aput-object p3, v1, p1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
