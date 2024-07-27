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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Labcd/Pt;->Zo(I)I

    move-result v0

    iput-object p1, p0, Labcd/en;->j6:Labcd/Pt;

    new-instance v1, Labcd/Ls;

    invoke-direct {v1, v0}, Labcd/Ls;-><init>(I)V

    iput-object v1, p0, Labcd/en;->DW:Labcd/Ls;

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/en;->FH:[I

    const/4 v0, -0x1

    iput v0, p0, Labcd/en;->Hw:I

    return-void
.end method

.method private FH()V
    .registers 6

    const/4 v1, 0x1

    const/16 v2, 0xa

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/en;->FH:[I

    array-length v4, v3

    if-ge v0, v4, :cond_0

    aput v2, v3, v0

    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    invoke-virtual {v3, v2}, Labcd/Pt;->v5(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag byte: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Labcd/wn;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while preparsing cst "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at offset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    add-int/lit8 v2, v2, 0x3

    :goto_1
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x9

    goto :goto_2

    :pswitch_3
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Labcd/Pt;->Zo(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    iput v2, p0, Labcd/en;->Hw:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private Hw()V
    .registers 10

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Labcd/en;->FH()V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    if-eqz v0, :cond_0

    iget-object v2, p0, Labcd/en;->j6:Labcd/Pt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constant_pool_count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/en;->FH:[I

    array-length v4, v4

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v4, v5, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v2, p0, Labcd/en;->j6:Labcd/Pt;

    const/16 v3, 0xa

    const-string v4, "\nconstant_pool:"

    invoke-interface {v0, v2, v3, v8, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    invoke-interface {v0, v1}, Labcd/xn;->j6(I)V

    :cond_0
    new-instance v4, Ljava/util/BitSet;

    iget-object v0, p0, Labcd/en;->FH:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/en;->FH:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v2, v0}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v4}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    if-eqz v0, :cond_7

    move v3, v1

    :goto_1
    iget-object v0, p0, Labcd/en;->FH:[I

    array-length v0, v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v0, v3}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v5

    if-nez v5, :cond_3

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/en;->FH:[I

    aget v6, v0, v3

    iget v1, p0, Labcd/en;->Hw:I

    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_3
    iget-object v0, p0, Labcd/en;->FH:[I

    array-length v7, v0

    if-ge v2, v7, :cond_8

    aget v0, v0, v2

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": utf8{\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v5, p0, Labcd/en;->j6:Labcd/Pt;

    sub-int/2addr v0, v6

    invoke-interface {v2, v5, v6, v0, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Labcd/xn;->j6(I)V

    iget-object v0, p0, Labcd/en;->v5:Labcd/xn;

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    iget v2, p0, Labcd/en;->Hw:I

    const-string v3, "end constant_pool"

    invoke-interface {v0, v1, v2, v8, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method private j6(I)Labcd/Js;
    .registers 5

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v0

    :try_start_0
    new-instance v1, Labcd/Js;

    invoke-direct {v1, v0}, Labcd/Js;-><init>(Labcd/Pt;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/wn;

    invoke-direct {v1, v0}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(ILjava/util/BitSet;)Labcd/ms;
    .registers 8

    iget-object v0, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v0, p1}, Labcd/Ls;->DW(I)Labcd/ms;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Labcd/en;->FH:[I

    aget v3, v1, p1

    :try_start_0
    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    invoke-virtual {v1, v3}, Labcd/Pt;->v5(I)I
    :try_end_0
    .catch Labcd/wn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Labcd/en;->DW:Labcd/Ls;

    invoke-virtual {v1, p1, v0}, Labcd/Ls;->j6(ILabcd/ms;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v2, Labcd/Hs;

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Js;

    invoke-direct {v2, v0, v1}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_2
    new-instance v2, Labcd/zs;

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Hs;

    invoke-direct {v2, v0, v1}, Labcd/zs;-><init>(Labcd/Ks;Labcd/Hs;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_3
    new-instance v2, Labcd/Gs;

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Hs;

    invoke-direct {v2, v0, v1}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_4
    new-instance v2, Labcd/ws;

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    iget-object v1, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Hs;

    invoke-direct {v2, v0, v1}, Labcd/ws;-><init>(Labcd/Ks;Labcd/Hs;)V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Labcd/Ks;

    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/en;->j6(ILjava/util/BitSet;)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->DW(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/Ks;-><init>(Labcd/Qs;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->FH(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Labcd/us;->j6(J)Labcd/us;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->FH(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Labcd/Es;->j6(J)Labcd/Es;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->DW(I)I

    move-result v0

    invoke-static {v0}, Labcd/xs;->j6(I)Labcd/xs;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Labcd/en;->j6:Labcd/Pt;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Labcd/Pt;->DW(I)I

    move-result v0

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, v3}, Labcd/en;->j6(I)Labcd/Js;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catch Labcd/wn; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while parsing cst "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/wn;

    invoke-direct {v1, v0}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while parsing cst "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private v5()V
    .registers 2

    iget v0, p0, Labcd/en;->Hw:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Labcd/en;->Hw()V

    :cond_0
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
