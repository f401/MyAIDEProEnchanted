.class public Labcd/dt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/dt$a;,
        Labcd/dt$b;
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/dt$a;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v0

    iput v0, p0, Labcd/dt;->DW:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(Labcd/vt;)Labcd/vt;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    return-object v0
.end method

.method private DW()V
    .registers 7

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    new-instance v1, Labcd/ct;

    invoke-direct {v1, p0}, Labcd/ct;-><init>(Labcd/dt;)V

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/tt$b;)V

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-object v1, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    sget-object v3, Labcd/dt$b;->DW:Labcd/dt$b;

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/dt$a;

    iget-object v4, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    iget-object v5, v1, Labcd/dt$a;->DW:Labcd/dt$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    iput-object v4, v1, Labcd/dt$a;->DW:Labcd/dt$b;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Labcd/dt;->FH()V

    return-void
.end method

.method private DW(Labcd/dt$a;Labcd/dt$a;)V
    .registers 6

    iget-object v0, p2, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-object v2, v0, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p2, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-object v2, v0, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private DW(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V
    .registers 12

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v2

    invoke-static {p4, p3, p2, p5}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v1

    if-nez p5, :cond_0

    new-instance v0, Labcd/ks;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    sget-object v3, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v0, v1, v2, p2, v3}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    :goto_0
    new-instance v1, Labcd/mt;

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void

    :cond_0
    new-instance v0, Labcd/js;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    sget-object v4, Labcd/Ps;->FH:Labcd/Ps;

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    goto :goto_0
.end method

.method private FH()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-boolean v2, v0, Labcd/dt$a;->v5:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    sget-object v3, Labcd/dt$b;->DW:Labcd/dt$b;

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/dt;->j6(Labcd/vt;)Labcd/vt;

    move-result-object v4

    invoke-virtual {v4}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v7}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v0}, Labcd/Ds;->Ws()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v3, v4, v0, v5}, Labcd/dt;->j6(Labcd/vt;Labcd/vt;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-direct {p0, v0, v4, v5, v6}, Labcd/dt;->j6(Labcd/vt;Labcd/vt;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v6}, Labcd/yt;->j6(Ljava/util/Set;)V

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->J8()V

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    iget v2, p0, Labcd/dt;->DW:I

    invoke-static {v0, v2}, Labcd/ut;->j6(Labcd/yt;I)V

    invoke-direct {p0}, Labcd/dt;->j6()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private FH(Labcd/vt;)V
    .registers 7

    const/16 v3, 0x9

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-interface {v2}, Labcd/Rs;->j3()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Labcd/dt;->Hw(Labcd/vt;)Labcd/dt$a;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/dt;->j6(Labcd/bs;Labcd/dt$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-interface {v2}, Labcd/Rs;->j3()I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v2

    iget v3, p0, Labcd/dt;->DW:I

    sget-object v4, Labcd/dt$b;->DW:Labcd/dt$b;

    invoke-direct {v0, v2, v3, v4}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    iget-object v2, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0}, Labcd/dt;->j6(Labcd/bs;Labcd/dt$a;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x37

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->j3()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v2

    iget v3, p0, Labcd/dt;->DW:I

    sget-object v4, Labcd/dt$b;->DW:Labcd/dt$b;

    invoke-direct {v0, v2, v3, v4}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    iget-object v2, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0}, Labcd/dt;->j6(Labcd/bs;Labcd/dt$a;)V

    goto :goto_0
.end method

.method private Hw(Labcd/vt;)Labcd/dt$a;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/dt;->j6(Labcd/vt;)Labcd/vt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/vt;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->DW:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Labcd/dt$a;->v5:Z

    :goto_1
    iget-object v1, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->v5:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    goto :goto_1

    :cond_1
    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->v5:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    goto :goto_1

    :cond_2
    :pswitch_1
    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/dt;->j6(Labcd/bs;)I

    move-result v2

    iget-object v3, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-object v2, v0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v2, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne v0, v2, :cond_4

    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->DW:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    goto :goto_1

    :cond_4
    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->v5:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    goto :goto_1

    :cond_5
    :pswitch_2
    new-instance v0, Labcd/dt$a;

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    iget v2, p0, Labcd/dt;->DW:I

    sget-object v3, Labcd/dt$b;->DW:Labcd/dt$b;

    invoke-direct {v0, v1, v2, v3}, Labcd/dt$a;-><init>(IILabcd/dt$b;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j6(Labcd/bs;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    iget-object v0, v0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j6(Labcd/vt;)Labcd/vt;
    .registers 4

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    return-object v0
.end method

.method static synthetic j6(Labcd/dt;)Labcd/yt;
    .registers 2

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    return-object v0
.end method

.method private j6()V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/vt;->v5()Labcd/es;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Labcd/vt;->v5()Labcd/es;

    move-result-object v3

    invoke-virtual {v3}, Labcd/es;->Hw()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v3}, Labcd/yt;->tp()[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v4

    invoke-virtual {v4, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v5

    iget v6, p0, Labcd/dt;->DW:I

    if-ge v5, v6, :cond_2

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v5

    iget v6, p0, Labcd/dt;->DW:I

    if-lt v5, v6, :cond_0

    :cond_2
    new-instance v5, Labcd/at;

    invoke-direct {v5, p0, v0, v4}, Labcd/at;-><init>(Labcd/dt;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0, v5}, Labcd/vt;->DW(Labcd/qt;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private j6(Labcd/bs;Labcd/dt$a;)V
    .registers 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    iget-object v1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1, p2, v2}, Labcd/dt;->j6(Labcd/vt;Labcd/dt$a;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1, p2, v2}, Labcd/dt;->j6(Labcd/bs;Labcd/vt;Labcd/dt$a;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private j6(Labcd/bs;Labcd/vt;Labcd/dt$a;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/bs;",
            "Labcd/vt;",
            "Labcd/dt$a;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/bs;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    if-eq v0, v2, :cond_7

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Labcd/dt$b;->v5:Labcd/dt$b;

    iput-object v0, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p3, Labcd/dt$a;->v5:Z

    :cond_2
    :pswitch_1
    invoke-virtual {p2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->j3()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iput-boolean v3, p3, Labcd/dt$a;->v5:Z

    invoke-virtual {p2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/dt;->j6(Labcd/bs;)I

    move-result v0

    iget-object v1, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    invoke-direct {p0, v0, p3}, Labcd/dt;->j6(Labcd/dt$a;Labcd/dt$a;)V

    iget-object v1, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    iget-object v2, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v0, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    iput-object v0, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/dt;->j6(Labcd/bs;)I

    move-result v0

    iget-object v1, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    invoke-direct {p0, p3, v0}, Labcd/dt;->j6(Labcd/dt$a;Labcd/dt$a;)V

    iget-object v1, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    iget-object v2, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    iput-object v1, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p3, Labcd/dt$a;->v5:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    sget-object v1, Labcd/dt$b;->FH:Labcd/dt$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Labcd/dt$b;->FH:Labcd/dt$b;

    iput-object v0, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    goto/16 :goto_0

    :cond_6
    :pswitch_2
    sget-object v0, Labcd/dt$b;->Hw:Labcd/dt$b;

    iput-object v0, p3, Labcd/dt$a;->DW:Labcd/dt$b;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p3, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {p2}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private j6(Labcd/dt$a;Labcd/dt$a;)V
    .registers 4

    iget-object v0, p2, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic j6(Labcd/dt;Labcd/vt;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dt;->FH(Labcd/vt;)V

    return-void
.end method

.method private j6(Labcd/vt;Labcd/bs;Ljava/util/HashSet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/vt;",
            "Labcd/bs;",
            "Ljava/util/HashSet",
            "<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Labcd/Ks;

    sget-object v0, Labcd/Rr;->DW:Labcd/Qs;

    invoke-direct {v5, v0}, Labcd/Ks;-><init>(Labcd/Qs;)V

    sget-object v2, Labcd/cs;->FH:Labcd/cs;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Labcd/dt;->DW(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/vt;

    iget-object v1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->J0()I

    move-result v1

    invoke-static {v1, v5}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v9

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {v0}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    new-instance v7, Labcd/Gs;

    new-instance v0, Labcd/Hs;

    new-instance v2, Labcd/Js;

    const-string v3, "<init>"

    invoke-direct {v2, v3}, Labcd/Js;-><init>(Ljava/lang/String;)V

    new-instance v3, Labcd/Js;

    const-string v4, "(I)V"

    invoke-direct {v3, v4}, Labcd/Js;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-direct {v7, v5, v0}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    invoke-static {v9, p2}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Labcd/dt;->DW(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Labcd/tt;->gn()Labcd/tt;

    move-result-object v0

    invoke-virtual {v6, v0}, Labcd/tt;->Hw(Labcd/tt;)Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-static {v9}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/dt;->DW(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {v6}, Labcd/tt;->u7()I

    move-result v0

    iget-object v2, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Labcd/tt;->j6(II)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V
    .registers 12

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v2

    const/16 v0, 0x38

    if-ne p4, v0, :cond_0

    invoke-virtual {p3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-static {v0}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v1

    :goto_0
    if-nez p5, :cond_1

    new-instance v0, Labcd/Zr;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    :goto_1
    new-instance v1, Labcd/mt;

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void

    :cond_0
    invoke-static {p4, p3, p2, p5}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/Yr;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    goto :goto_1
.end method

.method private j6(Labcd/vt;Labcd/dt$a;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/vt;",
            "Labcd/dt$a;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/bs;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/dt;->j6(Labcd/bs;)I

    move-result v1

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dt$a;

    if-eq v0, p2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p2, Labcd/dt$a;->v5:Z

    iget-object v2, p2, Labcd/dt$a;->j6:Ljava/util/BitSet;

    iget-object v3, v0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v2, p2, Labcd/dt$a;->DW:Labcd/dt$b;

    iget-object v3, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, v0, Labcd/dt$a;->DW:Labcd/dt$b;

    iput-object v2, p2, Labcd/dt$a;->DW:Labcd/dt$b;

    :cond_0
    invoke-direct {p0, p2, v0}, Labcd/dt;->DW(Labcd/dt$a;Labcd/dt$a;)V

    iget-object v0, p0, Labcd/dt;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/vt;Labcd/vt;ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/vt;",
            "Labcd/vt;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/bs;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p3, :cond_0

    invoke-virtual {v7}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v0

    invoke-static {v0}, Labcd/Ns;->j6(Labcd/Qs;)Labcd/ms;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Labcd/Ms;

    iget-object v1, p0, Labcd/dt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->J0()I

    move-result v1

    invoke-static {v1, v0}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Labcd/cs;->FH:Labcd/cs;

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6(Labcd/vt;Labcd/vt;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/vt;",
            "Labcd/vt;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/bs;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_6

    const/16 v2, 0x36

    if-eq v0, v2, :cond_0

    const/16 v2, 0x39

    if-eq v0, v2, :cond_5

    const/16 v2, 0x26

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v0}, Labcd/Ds;->Ws()I

    move-result v6

    if-ge v6, v7, :cond_2

    invoke-virtual {v2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {v1, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v3

    invoke-static {v1}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {v3}, Labcd/bs;->rN()Labcd/bs;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Labcd/dt;->j6(Labcd/vt;Labcd/bs;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Labcd/dt;->DW(Labcd/vt;)Labcd/vt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v0}, Labcd/Ds;->Ws()I

    move-result v0

    if-ge v0, v7, :cond_4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {v0, v2}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v3

    invoke-static {v0}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    :goto_1
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v1, v0, p4}, Labcd/dt;->j6(Labcd/vt;Labcd/bs;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    check-cast v0, Labcd/Sr;

    invoke-virtual {v0}, Labcd/Sr;->EQ()Ljava/util/ArrayList;

    move-result-object v8

    move v6, v1

    :goto_2
    if-ge v6, v7, :cond_0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-static {v1, v0}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v3

    sget-object v2, Labcd/cs;->FH:Labcd/cs;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/ms;

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {p3, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v5

    invoke-direct {p0, p1}, Labcd/dt;->DW(Labcd/vt;)Labcd/vt;

    move-result-object v1

    sget-object v2, Labcd/cs;->FH:Labcd/cs;

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    check-cast v5, Labcd/ms;

    move-object v0, p0

    move v4, v9

    invoke-direct/range {v0 .. v5}, Labcd/dt;->j6(Labcd/vt;Labcd/cs;Labcd/bs;ILabcd/ms;)V

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/dt;

    invoke-direct {v0, p0}, Labcd/dt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/dt;->DW()V

    return-void
.end method
