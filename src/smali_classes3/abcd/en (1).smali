.class public final Labcd/en;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Ls;

.field private final FH:[I

.field private Hw:I

.field private final j6:Labcd/Pt;

.field private v5:Labcd/xn;


# direct methods
.method public constructor <init>(Labcd/Pt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Labcd/Pt;->Zo(I)I

    move-result v0

    iput-object p1, p0, Labcd/en;->j6:Labcd/Pt;

    new-instance p1, Labcd/Ls;

    invoke-direct {p1, v0}, Labcd/Ls;-><init>(I)V

    iput-object p1, p0, Labcd/en;->DW:Labcd/Ls;

    new-array p1, v0, [I

    iput-object p1, p0, Labcd/en;->FH:[I

    const/4 p1, -0x1

    iput p1, p0, Labcd/en;->Hw:I

    return-void
.end method

.method private FH()V
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/4 v2, 0x1

    :goto_4
    iget-object v3, p0, Labcd/en;->FH:[I

    array-length v4, v3

    if-ge v2, v4, :cond_6b

    aput v1, v3, v2

    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    invoke-virtual {v3, v1}, Labcd/Pt;->v5(I)I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    :pswitch_14  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag byte: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Labcd/wn;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while preparsing cst "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v3

    :pswitch_53  #0x7, 0x8
    add-int/lit8 v1, v1, 0x3

    goto :goto_68

    :pswitch_56  #0x5, 0x6
    add-int/lit8 v1, v1, 0x9

    const/4 v3, 0x2

    goto :goto_69

    :pswitch_5a  #0x3, 0x4, 0x9, 0xa, 0xb, 0xc
    add-int/lit8 v1, v1, 0x5

    goto :goto_68

    :pswitch_5d  #0x1
    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Labcd/Pt;->Zo(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    :goto_68
    const/4 v3, 0x1

    :goto_69
    add-int/2addr v2, v3

    goto :goto_4

    :cond_6b
    iput v1, p0, Labcd/en;->Hw:I

    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_14  #00000002
        :pswitch_5a  #00000003
        :pswitch_5a  #00000004
        :pswitch_56  #00000005
        :pswitch_56  #00000006
        :pswitch_53  #00000007
        :pswitch_53  #00000008
        :pswitch_5a  #00000009
        :pswitch_5a  #0000000a
        :pswitch_5a  #0000000b
        :pswitch_5a  #0000000c
    .end packed-switch
.end method

.method private Hw()V
    .registers 10

    invoke-direct {p0}, Labcd/en;->FH()V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constant_pool_count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/en;->FH:[I

    array-length v5, v5

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-interface {v0, v3, v6, v5, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    const/16 v4, 0xa

    const-string v5, "\nconstant_pool:"

    invoke-interface {v0, v3, v4, v1, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    invoke-interface {v0, v2}, Labcd/xn;->j6(I)V

    :cond_39
    new-instance v0, Ljava/util/BitSet;

    iget-object v3, p0, Labcd/en;->FH:[I

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    :goto_42
    iget-object v4, p0, Labcd/en;->FH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_59

    aget v4, v4, v3

    if-eqz v4, :cond_56

    iget-object v4, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v4, v3}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v4

    if-nez v4, :cond_56

    invoke-direct {p0, v3, v0}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_59
    iget-object v3, p0, Labcd/en;->v5:Labcd/xn;

    if-eqz v3, :cond_da

    :goto_5d
    iget-object v3, p0, Labcd/en;->FH:[I

    array-length v3, v3

    if-ge v2, v3, :cond_c9

    iget-object v3, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v3, v2}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v3

    if-nez v3, :cond_6b

    goto :goto_c6

    :cond_6b
    iget-object v4, p0, Labcd/en;->FH:[I

    aget v4, v4, v2

    iget v5, p0, Labcd/en;->Hw:I

    add-int/lit8 v6, v2, 0x1

    :goto_73
    iget-object v7, p0, Labcd/en;->FH:[I

    array-length v8, v7

    if-ge v6, v8, :cond_81

    aget v7, v7, v6

    if-eqz v7, :cond_7e

    move v5, v7

    goto :goto_81

    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    :cond_81
    :goto_81
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_a2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    goto :goto_b7

    :cond_a2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_b7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v7, p0, Labcd/en;->j6:Labcd/Pt;

    sub-int/2addr v5, v4

    invoke-interface {v6, v7, v4, v5, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_c9
    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Labcd/xn;->j6(I)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v2, p0, Labcd/en;->j6:Labcd/Pt;

    iget v3, p0, Labcd/en;->Hw:I

    const-string v4, "end constant_pool"

    invoke-interface {v0, v2, v3, v1, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_da
    return-void
.end method

.method private j6(I)Labcd/Js;
    .registers 4

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object p1

    :try_start_11
    new-instance v0, Labcd/Js;

    invoke-direct {v0, p1}, Labcd/Js;-><init>(Labcd/Pt;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p1

    new-instance v0, Labcd/wn;

    invoke-direct {v0, p1}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private j6(ILjava/util/BitSet;)Labcd/ms;
    .registers 10

    const-string v0, " at offset "

    const-string v1, "...while parsing cst "

    iget-object v2, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v2, p1}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v2

    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    iget-object v3, p0, Labcd/en;->FH:[I

    aget v3, v3, p1

    :try_start_11
    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    invoke-virtual {v4, v3}, Labcd/Pt;->v5(I)I

    move-result v4

    packed-switch v4, :pswitch_data_15a

    :pswitch_1a  #0x2
    goto/16 :goto_10b

    :pswitch_1c  #0xc
    new-instance v2, Labcd/Hs;

    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v4

    check-cast v4, Labcd/Js;

    iget-object v5, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v5, v6}, Labcd/Pt;->Zo(I)I

    move-result v5

    invoke-direct {p0, v5, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Js;

    invoke-direct {v2, v4, p2}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    goto/16 :goto_10b

    :pswitch_3f  #0xb
    new-instance v2, Labcd/zs;

    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v4

    check-cast v4, Labcd/Ks;

    iget-object v5, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v5, v6}, Labcd/Pt;->Zo(I)I

    move-result v5

    invoke-direct {p0, v5, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Hs;

    invoke-direct {v2, v4, p2}, Labcd/zs;-><init>(Labcd/Ks;Labcd/Hs;)V

    goto/16 :goto_10b

    :pswitch_62  #0xa
    new-instance v2, Labcd/Gs;

    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v4

    check-cast v4, Labcd/Ks;

    iget-object v5, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v5, v6}, Labcd/Pt;->Zo(I)I

    move-result v5

    invoke-direct {p0, v5, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Hs;

    invoke-direct {v2, v4, p2}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    goto/16 :goto_10b

    :pswitch_85  #0x9
    new-instance v2, Labcd/ws;

    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v4

    check-cast v4, Labcd/Ks;

    iget-object v5, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v5, v6}, Labcd/Pt;->Zo(I)I

    move-result v5

    invoke-direct {p0, v5, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Hs;

    invoke-direct {v2, v4, p2}, Labcd/ws;-><init>(Labcd/Ks;Labcd/Hs;)V

    goto :goto_10b

    :pswitch_a7  #0x8
    iget-object v2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Labcd/Pt;->Zo(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v2

    goto :goto_10b

    :pswitch_b4  #0x7
    new-instance v2, Labcd/Ks;

    iget-object v4, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Js;

    invoke-virtual {p2}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Labcd/Qs;->DW(Ljava/lang/String;)Labcd/Qs;

    move-result-object p2

    invoke-direct {v2, p2}, Labcd/Ks;-><init>(Labcd/Qs;)V

    goto :goto_10b

    :pswitch_d0  #0x6
    iget-object p2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p2, v2}, Labcd/Pt;->FH(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/us;->j6(J)Labcd/us;

    move-result-object v2

    goto :goto_10b

    :pswitch_dd  #0x5
    iget-object p2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p2, v2}, Labcd/Pt;->FH(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/Es;->j6(J)Labcd/Es;

    move-result-object v2

    goto :goto_10b

    :pswitch_ea  #0x4
    iget-object p2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p2, v2}, Labcd/Pt;->DW(I)I

    move-result p2

    invoke-static {p2}, Labcd/xs;->j6(I)Labcd/xs;

    move-result-object v2

    goto :goto_10b

    :pswitch_f7  #0x3
    iget-object p2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p2, v2}, Labcd/Pt;->DW(I)I

    move-result p2

    invoke-static {p2}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v2

    goto :goto_10b

    :pswitch_104  #0x1
    invoke-direct {p0, v3}, Labcd/en;->j6(I)Labcd/Js;

    move-result-object v2

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_10b
    .catch Labcd/wn; {:try_start_11 .. :try_end_10b} :catch_138
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_10b} :catch_111

    :goto_10b
    iget-object p2, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {p2, p1, v2}, Labcd/Ls;->j6(ILabcd/ms;)V

    return-object v2

    :catch_111
    move-exception p2

    new-instance v2, Labcd/wn;

    invoke-direct {v2, p2}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v2

    :catch_138
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw p2

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_104  #00000001
        :pswitch_1a  #00000002
        :pswitch_f7  #00000003
        :pswitch_ea  #00000004
        :pswitch_dd  #00000005
        :pswitch_d0  #00000006
        :pswitch_b4  #00000007
        :pswitch_a7  #00000008
        :pswitch_85  #00000009
        :pswitch_62  #0000000a
        :pswitch_3f  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method

.method private v5()V
    .registers 2

    iget v0, p0, Labcd/en;->Hw:I

    if-gez v0, :cond_7

    invoke-direct {p0}, Labcd/en;->Hw()V

    :cond_7
    return-void
.end method


# virtual methods
.method public DW()Labcd/Ls;
    .registers 2

    invoke-direct {p0}, Labcd/en;->v5()V

    iget-object v0, p0, Labcd/en;->DW:Labcd/Ls;

    return-object v0
.end method

.method public j6()I
    .registers 2

    invoke-direct {p0}, Labcd/en;->v5()V

    iget v0, p0, Labcd/en;->Hw:I

    return v0
.end method

.method public j6(Labcd/xn;)V
    .registers 2

    iput-object p1, p0, Labcd/en;->v5:Labcd/xn;

    return-void
.end method
