.class public final Labcd/Up;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Lt;

.field private final j6:Labcd/jp;


# direct methods
.method public constructor <init>(Labcd/jp;Labcd/Lt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Labcd/Up;->j6:Labcd/jp;

    iput-object p2, p0, Labcd/Up;->DW:Labcd/Lt;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(IJ)V
    .registers 7

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

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Labcd/ku;->writeByte(I)V

    :goto_19
    if-lez v0, :cond_28

    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Labcd/ku;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_28
    return-void
.end method

.method private static FH(Labcd/ms;)I
    .registers 2

    instance-of v0, p0, Labcd/ss;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    instance-of v0, p0, Labcd/Is;

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    instance-of v0, p0, Labcd/ts;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    instance-of v0, p0, Labcd/ys;

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    :cond_18
    instance-of v0, p0, Labcd/Es;

    if-eqz v0, :cond_1e

    const/4 p0, 0x6

    return p0

    :cond_1e
    instance-of v0, p0, Labcd/xs;

    if-eqz v0, :cond_25

    const/16 p0, 0x10

    return p0

    :cond_25
    instance-of v0, p0, Labcd/us;

    if-eqz v0, :cond_2c

    const/16 p0, 0x11

    return p0

    :cond_2c
    instance-of v0, p0, Labcd/Js;

    if-eqz v0, :cond_33

    const/16 p0, 0x17

    return p0

    :cond_33
    instance-of v0, p0, Labcd/Ks;

    if-eqz v0, :cond_3a

    const/16 p0, 0x18

    return p0

    :cond_3a
    instance-of v0, p0, Labcd/ws;

    if-eqz v0, :cond_41

    const/16 p0, 0x19

    return p0

    :cond_41
    instance-of v0, p0, Labcd/Gs;

    if-eqz v0, :cond_48

    const/16 p0, 0x1a

    return p0

    :cond_48
    instance-of v0, p0, Labcd/vs;

    if-eqz v0, :cond_4f

    const/16 p0, 0x1b

    return p0

    :cond_4f
    instance-of v0, p0, Labcd/ps;

    if-eqz v0, :cond_56

    const/16 p0, 0x1c

    return p0

    :cond_56
    instance-of v0, p0, Labcd/os;

    if-eqz v0, :cond_5d

    const/16 p0, 0x1d

    return p0

    :cond_5d
    instance-of v0, p0, Labcd/As;

    if-eqz v0, :cond_64

    const/16 p0, 0x1e

    return p0

    :cond_64
    instance-of p0, p0, Labcd/rs;

    if-eqz p0, :cond_6b

    const/16 p0, 0x1f

    return p0

    :cond_6b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private FH(IJ)V
    .registers 7

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Labcd/ku;->writeByte(I)V

    :goto_17
    if-lez v0, :cond_26

    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Labcd/ku;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_26
    return-void
.end method

.method public static j6(Labcd/ms;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Labcd/Up;->FH(Labcd/ms;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b

    const-string p0, "null"

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/ms;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(IJ)V
    .registers 7

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Labcd/ku;->writeByte(I)V

    :goto_1c
    if-lez v0, :cond_2b

    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Labcd/ku;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_2b
    return-void
.end method

.method public static j6(Labcd/jp;Labcd/Hr;)V
    .registers 5

    invoke-virtual {p0}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    invoke-virtual {p1}, Labcd/Hr;->lg()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Lr;

    invoke-virtual {v0}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    invoke-virtual {v0}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/Up;->j6(Labcd/jp;Labcd/ms;)V

    goto :goto_17

    :cond_32
    return-void
.end method

.method public static j6(Labcd/jp;Labcd/ms;)V
    .registers 5

    instance-of v0, p1, Labcd/os;

    if-eqz v0, :cond_e

    check-cast p1, Labcd/os;

    invoke-virtual {p1}, Labcd/os;->VH()Labcd/Hr;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/Up;->j6(Labcd/jp;Labcd/Hr;)V

    goto :goto_2c

    :cond_e
    instance-of v0, p1, Labcd/ps;

    if-eqz v0, :cond_29

    check-cast p1, Labcd/ps;

    invoke-virtual {p1}, Labcd/ps;->VH()Labcd/ps$a;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2c

    invoke-virtual {p1, v1}, Labcd/ps$a;->get(I)Labcd/ms;

    move-result-object v2

    invoke-static {p0, v2}, Labcd/Up;->j6(Labcd/jp;Labcd/ms;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_29
    invoke-virtual {p0, p1}, Labcd/jp;->DW(Labcd/ms;)V

    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public DW(Labcd/ms;)V
    .registers 5

    invoke-static {p1}, Labcd/Up;->FH(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_ae

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_c2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_26  #0x1f
    check-cast p1, Labcd/rs;

    invoke-virtual {p1}, Labcd/Bs;->Ws()I

    move-result p1

    iget-object v1, p0, Labcd/Up;->DW:Labcd/Lt;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Labcd/ku;->writeByte(I)V

    goto/16 :goto_c1

    :pswitch_36  #0x1e
    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {p1, v0}, Labcd/ku;->writeByte(I)V

    goto/16 :goto_c1

    :pswitch_3d  #0x1d
    iget-object v2, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v2, v0}, Labcd/ku;->writeByte(I)V

    check-cast p1, Labcd/os;

    invoke-virtual {p1}, Labcd/os;->VH()Labcd/Hr;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Labcd/Up;->j6(Labcd/Hr;Z)V

    goto/16 :goto_c1

    :pswitch_4d  #0x1c
    iget-object v2, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v2, v0}, Labcd/ku;->writeByte(I)V

    check-cast p1, Labcd/ps;

    invoke-virtual {p0, p1, v1}, Labcd/Up;->j6(Labcd/ps;Z)V

    goto :goto_c1

    :pswitch_58  #0x1b
    check-cast p1, Labcd/vs;

    invoke-virtual {p1}, Labcd/vs;->J8()Labcd/ws;

    move-result-object p1

    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v1

    goto :goto_7a

    :pswitch_65  #0x1a
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v1

    check-cast p1, Labcd/Gs;

    invoke-virtual {v1, p1}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result p1

    goto :goto_98

    :pswitch_72  #0x19
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v1

    check-cast p1, Labcd/ws;

    :goto_7a
    invoke-virtual {v1, p1}, Labcd/qp;->j6(Labcd/ws;)I

    move-result p1

    goto :goto_98

    :pswitch_7f  #0x18
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    check-cast p1, Labcd/Ks;

    invoke-virtual {v1, p1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result p1

    goto :goto_98

    :pswitch_8c  #0x17
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    check-cast p1, Labcd/Js;

    invoke-virtual {v1, p1}, Labcd/Op;->j6(Labcd/Js;)I

    move-result p1

    :goto_98
    int-to-long v1, p1

    goto :goto_b4

    :cond_9a
    check-cast p1, Labcd/us;

    invoke-virtual {p1}, Labcd/Cs;->lg()J

    move-result-wide v1

    goto :goto_aa

    :cond_a1
    check-cast p1, Labcd/xs;

    invoke-virtual {p1}, Labcd/Bs;->lg()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    :goto_aa
    invoke-direct {p0, v0, v1, v2}, Labcd/Up;->j6(IJ)V

    goto :goto_c1

    :cond_ae
    check-cast p1, Labcd/Ds;

    invoke-virtual {p1}, Labcd/Ds;->lg()J

    move-result-wide v1

    :goto_b4
    invoke-direct {p0, v0, v1, v2}, Labcd/Up;->FH(IJ)V

    goto :goto_c1

    :cond_b8
    check-cast p1, Labcd/Ds;

    invoke-virtual {p1}, Labcd/Ds;->lg()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Labcd/Up;->DW(IJ)V

    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x17
        :pswitch_8c  #00000017
        :pswitch_7f  #00000018
        :pswitch_72  #00000019
        :pswitch_65  #0000001a
        :pswitch_58  #0000001b
        :pswitch_4d  #0000001c
        :pswitch_3d  #0000001d
        :pswitch_36  #0000001e
        :pswitch_26  #0000001f
    .end packed-switch
.end method

.method public j6(Labcd/Hr;Z)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    iget-object p2, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    iget-object v1, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    iget-object v2, p0, Labcd/Up;->j6:Labcd/jp;

    invoke-virtual {v2}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v4

    const-string v5, " // "

    if-eqz p2, :cond_4a

    iget-object v6, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  type_idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_4a
    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v2

    invoke-interface {v3, v2}, Labcd/ku;->DW(I)I

    invoke-virtual {p1}, Labcd/Hr;->lg()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz p2, :cond_7b

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_7b
    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v3, v2}, Labcd/ku;->DW(I)I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_85
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Lr;

    invoke-virtual {v3}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v6

    invoke-virtual {v3}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v3

    if-eqz p2, :cond_e0

    iget-object v7, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  elements["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Labcd/Lt;->j6(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    name_idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_e0
    iget-object v4, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v4, v6}, Labcd/ku;->DW(I)I

    if-eqz p2, :cond_101

    iget-object v4, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Up;->j6(Labcd/ms;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_101
    invoke-virtual {p0, v3}, Labcd/Up;->DW(Labcd/ms;)V

    goto :goto_85

    :cond_105
    if-eqz p2, :cond_10c

    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {p1}, Labcd/Lt;->FH()V

    :cond_10c
    return-void
.end method

.method public j6(Labcd/ps;Z)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    iget-object p2, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    invoke-virtual {p1}, Labcd/ps;->VH()Labcd/ps$a;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    if-eqz p2, :cond_32

    iget-object v2, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_32
    iget-object v2, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {v2, v1}, Labcd/ku;->DW(I)I

    :goto_37
    if-ge v0, v1, :cond_6b

    invoke-virtual {p1, v0}, Labcd/ps$a;->get(I)Labcd/ms;

    move-result-object v2

    if-eqz p2, :cond_65

    iget-object v3, p0, Labcd/Up;->DW:Labcd/Lt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Up;->j6(Labcd/ms;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_65
    invoke-virtual {p0, v2}, Labcd/Up;->DW(Labcd/ms;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_6b
    if-eqz p2, :cond_72

    iget-object p1, p0, Labcd/Up;->DW:Labcd/Lt;

    invoke-interface {p1}, Labcd/Lt;->FH()V

    :cond_72
    return-void
.end method
