.class Labcd/bn$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Lm$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private DW:Labcd/Om;

.field private FH:I

.field final Hw:Labcd/bn;

.field private final j6:Labcd/Tm;


# direct methods
.method public constructor <init>(Labcd/bn;)V
    .registers 3

    iput-object p1, p0, Labcd/bn$a;->Hw:Labcd/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/bn;->j6(Labcd/bn;)Labcd/Tm;

    move-result-object v0

    iput-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    return-void
.end method

.method private j6(Labcd/Qs;)V
    .registers 5

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0}, Labcd/Tm;->DW()Labcd/Os;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return type mismatch: prototype indicates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but encountered type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/an;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/bn$a;->FH:I

    return v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/bn$a;->FH:I

    return-void
.end method

.method public j6(III)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(IIII)V
    .registers 8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    :goto_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4}, Labcd/Tm;->j6(I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :pswitch_1
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0}, Labcd/Tm;->j6()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j6(IIIILabcd/Qs;I)V
    .registers 13

    const/16 v5, 0x36

    const/4 v1, 0x0

    if-ne p1, v5, :cond_1

    add-int v0, p2, p3

    :goto_0
    iget-object v2, p0, Labcd/bn$a;->Hw:Labcd/bn;

    invoke-static {v2}, Labcd/bn;->DW(Labcd/bn;)Labcd/Qm;

    move-result-object v2

    invoke-virtual {v2, v0, p4}, Labcd/Qm;->j6(II)Labcd/Qm$a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Labcd/Qm$a;->DW()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Mr()I

    move-result v2

    invoke-virtual {p5}, Labcd/Qs;->Mr()I

    move-result v4

    if-ne v2, v4, :cond_2

    move-object v2, v0

    :goto_1
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_7

    const/16 v0, 0x84

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p4}, Labcd/Tm;->DW(Labcd/Om;I)V

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v1, v0}, Labcd/Tm;->j6(Z)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    :goto_3
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :cond_1
    move v0, p2

    goto :goto_0

    :cond_2
    invoke-static {p5, v0}, Labcd/Fm;->j6(Labcd/Rs;Labcd/Rs;)V

    throw v1

    :cond_3
    move-object v2, p5

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    throw v1

    :cond_5
    if-nez v3, :cond_6

    move-object v0, v1

    :goto_4
    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v3, p4}, Labcd/Tm;->DW(Labcd/Om;I)V

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v1, p4, v2, v0}, Labcd/Tm;->j6(ILabcd/Qs;Labcd/Vr;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p6}, Labcd/Tm;->DW(I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-static {p6}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Tm;->j6(Labcd/ms;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v0

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    :goto_5
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v3, p5}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4, v2, v1}, Labcd/Tm;->j6(ILabcd/Qs;Labcd/Vr;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public j6(IIILabcd/Qs;)V
    .registers 11

    const/16 v5, 0x212

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-eqz p1, :cond_18

    const/16 v2, 0xbe

    if-eq p1, v2, :cond_16

    const/16 v2, 0xbf

    if-eq p1, v2, :cond_15

    const/16 v2, 0xc2

    if-eq p1, v2, :cond_15

    const/16 v2, 0xc3

    if-eq p1, v2, :cond_15

    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x11

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->v5:Labcd/Qs;

    invoke-interface {v0, v1, v2, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :pswitch_1
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->Zo:Labcd/Qs;

    invoke-interface {v0, v1, v2, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->gn:Labcd/Qs;

    invoke-interface {v0, v1, v2, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->v5:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->Zo:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->gn:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Qs;->er()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->er()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_8
    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v2}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, v5}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->er()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v2, v1}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :cond_4
    invoke-virtual {v2, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->er()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v2, v1}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const v1, 0x32132

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->er()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const v1, 0x432143

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :cond_7
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_9
    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v2}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, v5}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :cond_9
    invoke-virtual {v2, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v2, v1}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const v1, 0x32132

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_a
    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v2}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, v5}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->er()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v2, v1}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :cond_d
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_b
    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Qs;->er()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->er()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, v5}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_c
    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, v4}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_d
    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->yS()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, v4}, Labcd/Tm;->j6(Labcd/Om;I)V

    move v0, v2

    :goto_1
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v1, v0}, Labcd/Tm;->DW(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->er()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    const/16 v0, 0x2121

    goto :goto_1

    :cond_11
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :pswitch_e
    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, v4}, Labcd/Tm;->j6(Labcd/Om;I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object v0

    throw v0

    :sswitch_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0}, Labcd/Tm;->j6()V

    sget-object v0, Labcd/Qs;->tp:Labcd/Qs;

    invoke-direct {p0, v0}, Labcd/bn$a;->j6(Labcd/Qs;)V

    goto/16 :goto_0

    :sswitch_1
    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    if-ne p4, v0, :cond_13

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    invoke-direct {p0, v0}, Labcd/bn$a;->j6(Labcd/Qs;)V

    goto/16 :goto_0

    :cond_13
    move-object v0, p4

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, p4, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto/16 :goto_0

    :pswitch_f
    :sswitch_4
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p4, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v2}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {p4}, Labcd/Qs;->er()Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_3
    invoke-virtual {v2, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v2, v0}, Labcd/Nm;->FH(I)Z

    move-result v0

    invoke-static {p4, v1}, Labcd/bn;->j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object v1

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p4

    :cond_14
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v3, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v2, v1, v3, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-static {p4, v0}, Labcd/bn;->j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p4

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v3, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v1, v2, v0, v3}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {v0}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->rN()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto/16 :goto_0

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type mismatch: expected array type but encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/an;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :sswitch_7
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0}, Labcd/Tm;->j6()V

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2e -> :sswitch_6
        0x4f -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6c -> :sswitch_4
        0x70 -> :sswitch_4
        0x74 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7c -> :sswitch_2
        0x7e -> :sswitch_4
        0x80 -> :sswitch_4
        0x82 -> :sswitch_4
        0xac -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public j6(IIILabcd/cn;I)V
    .registers 9

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p5}, Labcd/Tm;->DW(I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4}, Labcd/Tm;->j6(Labcd/cn;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void
.end method

.method public j6(IIILabcd/ms;I)V
    .registers 10

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0}, Labcd/Tm;->j6()V

    :goto_0
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p5}, Labcd/Tm;->DW(I)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4}, Labcd/Tm;->j6(Labcd/ms;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :pswitch_0
    check-cast p4, Labcd/zs;

    invoke-virtual {p4}, Labcd/zs;->rN()Labcd/Gs;

    move-result-object v1

    :goto_1
    move-object v0, v1

    check-cast v0, Labcd/Gs;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/qs;->DW(Z)Labcd/Os;

    move-result-object v0

    iget-object v2, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v2, v3, v0}, Labcd/Tm;->j6(Labcd/Om;Labcd/Os;)V

    move-object p4, v1

    goto :goto_0

    :pswitch_1
    move-object v0, p4

    check-cast v0, Labcd/Gs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/qs;->DW(Z)Labcd/Os;

    move-result-object v0

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;Labcd/Os;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p4

    check-cast v0, Labcd/ws;

    invoke-virtual {v0}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object v0

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v3, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v1, v2, v3, v0}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p4

    check-cast v0, Labcd/ws;

    invoke-virtual {v0}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object v0

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :cond_0
    :pswitch_4
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :cond_1
    sget-object v0, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {v0, p5}, Labcd/Os;->j6(Labcd/Qs;I)Labcd/Os;

    move-result-object v0

    iget-object v1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v2, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v1, v2, v0}, Labcd/Tm;->j6(Labcd/Om;Labcd/Os;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_0

    :pswitch_5
    move-object v1, p4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j6(IILabcd/Ks;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Labcd/Ks;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/ms;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p4}, Labcd/Tm;->j6(Ljava/util/ArrayList;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {v0, p3}, Labcd/Tm;->j6(Labcd/ms;)V

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    const/16 v2, 0xbc

    invoke-interface {v0, v1, p1, v2}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void
.end method

.method public j6(Labcd/Om;)V
    .registers 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/bn$a;->DW:Labcd/Om;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frame == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
