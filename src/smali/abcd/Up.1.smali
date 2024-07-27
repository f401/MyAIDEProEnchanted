.class public final Labcd/Up;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Lt;

.field private final j6:Labcd/jp;


# direct methods
.method public constructor <init>(Labcd/jp;Labcd/Lt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Labcd/Up;->j6:Labcd/jp;

    iput-object p2, p0, Labcd/Up;->DW:Labcd/Lt;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(IJ)V
    .registers 8

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {v1, v2}, Labcd/ku;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Labcd/ku;->writeByte(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static FH(Labcd/ms;)I
    .registers 3

    instance-of v0, p0, Labcd/ss;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Labcd/Is;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Labcd/ts;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    instance-of v0, p0, Labcd/ys;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    instance-of v0, p0, Labcd/Es;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    instance-of v0, p0, Labcd/xs;

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    goto :goto_0

    :cond_5
    instance-of v0, p0, Labcd/us;

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    goto :goto_0

    :cond_6
    instance-of v0, p0, Labcd/Js;

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto :goto_0

    :cond_7
    instance-of v0, p0, Labcd/Ks;

    if-eqz v0, :cond_8

    const/16 v0, 0x18

    goto :goto_0

    :cond_8
    instance-of v0, p0, Labcd/ws;

    if-eqz v0, :cond_9

    const/16 v0, 0x19

    goto :goto_0

    :cond_9
    instance-of v0, p0, Labcd/Gs;

    if-eqz v0, :cond_a

    const/16 v0, 0x1a

    goto :goto_0

    :cond_a
    instance-of v0, p0, Labcd/vs;

    if-eqz v0, :cond_b

    const/16 v0, 0x1b

    goto :goto_0

    :cond_b
    instance-of v0, p0, Labcd/ps;

    if-eqz v0, :cond_c

    const/16 v0, 0x1c

    goto :goto_0

    :cond_c
    instance-of v0, p0, Labcd/os;

    if-eqz v0, :cond_d

    const/16 v0, 0x1d

    goto :goto_0

    :cond_d
    instance-of v0, p0, Labcd/As;

    if-eqz v0, :cond_e

    const/16 v0, 0x1e

    goto :goto_0

    :cond_e
    instance-of v0, p0, Labcd/rs;

    if-eqz v0, :cond_f

    const/16 v0, 0x1f

    goto :goto_0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(IJ)V
    .registers 8

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {v1, v2}, Labcd/ku;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Labcd/ku;->writeByte(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Labcd/ms;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Labcd/Up;->FH(Labcd/ms;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/ms;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(IJ)V
    .registers 10

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v0, 0x3

    mul-int/lit8 v0, v2, 0x8

    rsub-int/lit8 v0, v0, 0x40

    shr-long v0, p2, v0

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, p1

    invoke-interface {v3, v4}, Labcd/ku;->writeByte(I)V

    :goto_0
    if-lez v2, :cond_1

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v4, v0

    int-to-byte v4, v4

    invoke-interface {v3, v4}, Labcd/ku;->writeByte(I)V

    const/16 v3, 0x8

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j6(Labcd/jp;Labcd/Hr;)V
    .registers 6

    invoke-virtual {p0}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    invoke-virtual {p1}, Labcd/Hr;->lg()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Lr;

    invoke-virtual {v0}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    invoke-virtual {v0}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/Up;->j6(Labcd/jp;Labcd/ms;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j6(Labcd/jp;Labcd/ms;)V
    .registers 6

    instance-of v0, p1, Labcd/os;

    if-eqz v0, :cond_1

    check-cast p1, Labcd/os;

    invoke-virtual {p1}, Labcd/os;->VH()Labcd/Hr;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/Up;->j6(Labcd/jp;Labcd/Hr;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Labcd/ps;

    if-eqz v0, :cond_2

    check-cast p1, Labcd/ps;

    invoke-virtual {p1}, Labcd/ps;->VH()Labcd/ps$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/ps$a;->get(I)Labcd/ms;

    move-result-object v3

    invoke-static {p0, v3}, Labcd/Up;->j6(Labcd/jp;Labcd/ms;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Labcd/jp;->DW(Labcd/ms;)V

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/ms;)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {p1}, Labcd/Up;->FH(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Labcd/rs;

    invoke-virtual {p1}, Labcd/Bs;->Ws()I

    move-result v1

    iget-object v2, p0, Labcd/Up;->DW:Labcd/Lt;

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Labcd/ku;->writeByte(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v1, v0}, Labcd/ku;->writeByte(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v1, v0}, Labcd/ku;->writeByte(I)V

    check-cast p1, Labcd/os;

    invoke-virtual {p1}, Labcd/os;->VH()Labcd/Hr;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Labcd/Up;->j6(Labcd/Hr;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v1, v0}, Labcd/ku;->writeByte(I)V

    check-cast p1, Labcd/ps;

    invoke-virtual {p0, p1, v2}, Labcd/Up;->j6(Labcd/ps;Z)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Labcd/vs;

    invoke-virtual {p1}, Labcd/vs;->J8()Labcd/ws;

    move-result-object v1

    iget-object v2, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v2}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/qp;->j6(Labcd/ws;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v1

    check-cast p1, Labcd/Gs;

    invoke-virtual {v1, p1}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v1

    check-cast p1, Labcd/ws;

    invoke-virtual {v1, p1}, Labcd/qp;->j6(Labcd/ws;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    check-cast p1, Labcd/Ks;

    invoke-virtual {v1, p1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    check-cast p1, Labcd/Js;

    invoke-virtual {v1, p1}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto :goto_0

    :cond_0
    check-cast p1, Labcd/us;

    invoke-virtual {p1}, Labcd/Cs;->lg()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->j6(IJ)V

    goto/16 :goto_0

    :cond_1
    check-cast p1, Labcd/xs;

    invoke-virtual {p1}, Labcd/Bs;->lg()J

    move-result-wide v2

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->j6(IJ)V

    goto/16 :goto_0

    :cond_2
    check-cast p1, Labcd/Ds;

    invoke-virtual {p1}, Labcd/Ds;->lg()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->FH(IJ)V

    goto/16 :goto_0

    :cond_3
    check-cast p1, Labcd/Ds;

    invoke-virtual {p1}, Labcd/Ds;->lg()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Labcd/Up;->DW(IJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j6(Labcd/Hr;Z)V
    .registers 14

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-object v0, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v0}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v0}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v4

    iget-object v0, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v0}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v5

    if-eqz v1, :cond_0

    iget-object v6, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  type_idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " // "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v5

    invoke-virtual {v0, v5}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v0

    invoke-interface {v3, v0}, Labcd/ku;->DW(I)I

    invoke-virtual {p1}, Labcd/Hr;->lg()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v1, :cond_1

    iget-object v5, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v5, v3}, Labcd/ku;->DW(I)I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Lr;

    invoke-virtual {v0}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v6

    invoke-virtual {v4, v6}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v7

    invoke-virtual {v0}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v8

    if-eqz v1, :cond_6

    iget-object v0, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  elements["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    name_idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v3, v7}, Labcd/ku;->DW(I)I

    if-eqz v1, :cond_2

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Up;->j6(Labcd/ms;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v8}, Labcd/Up;->DW(Labcd/ms;)V

    move v3, v0

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v0}, Labcd/Lt;->FH()V

    :cond_5
    return-void

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public j6(Labcd/ps;Z)V
    .registers 11

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v0}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Labcd/ps;->VH()Labcd/ps$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v3

    if-eqz v0, :cond_0

    iget-object v4, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v4, v3}, Labcd/ku;->DW(I)I

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Labcd/ps$a;->get(I)Labcd/ms;

    move-result-object v4

    if-eqz v0, :cond_1

    iget-object v5, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Up;->j6(Labcd/ms;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v4}, Labcd/Up;->DW(Labcd/ms;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v0}, Labcd/Lt;->FH()V

    :cond_4
    return-void
.end method
