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
    .registers 2

    iput-object p1, p0, Labcd/bn$a;->Hw:Labcd/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/bn;->j6(Labcd/bn;)Labcd/Tm;

    move-result-object p1

    iput-object p1, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/bn$a;->DW:Labcd/Om;

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

    if-eqz v1, :cond_11

    return-void

    :cond_11
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

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/an;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid opcode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/an;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(IIII)V
    .registers 7

    packed-switch p1, :pswitch_data_40

    packed-switch p1, :pswitch_data_64

    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    const/4 p1, 0x0

    throw p1

    :pswitch_b  #0xa5, 0xa6
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    goto :goto_18

    :pswitch_12  #0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    :goto_18
    invoke-interface {p3, v0, v1, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_33

    :pswitch_1c  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    :goto_22
    invoke-interface {p3, v0, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_33

    :pswitch_26  #0xa7, 0xa8, 0xc8, 0xc9
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3}, Labcd/Tm;->j6()V

    goto :goto_33

    :pswitch_2c  #0xc6, 0xc7
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    goto :goto_22

    :goto_33
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4}, Labcd/Tm;->j6(I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p4, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p4, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :pswitch_data_40
    .packed-switch 0x99
        :pswitch_1c  #00000099
        :pswitch_1c  #0000009a
        :pswitch_1c  #0000009b
        :pswitch_1c  #0000009c
        :pswitch_1c  #0000009d
        :pswitch_1c  #0000009e
        :pswitch_12  #0000009f
        :pswitch_12  #000000a0
        :pswitch_12  #000000a1
        :pswitch_12  #000000a2
        :pswitch_12  #000000a3
        :pswitch_12  #000000a4
        :pswitch_b  #000000a5
        :pswitch_b  #000000a6
        :pswitch_26  #000000a7
        :pswitch_26  #000000a8
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0xc6
        :pswitch_2c  #000000c6
        :pswitch_2c  #000000c7
        :pswitch_26  #000000c8
        :pswitch_26  #000000c9
    .end packed-switch
.end method

.method public j6(IIIILabcd/Qs;I)V
    .registers 13

    const/16 v0, 0x36

    if-ne p1, v0, :cond_7

    add-int v1, p2, p3

    goto :goto_8

    :cond_7
    move v1, p2

    :goto_8
    iget-object v2, p0, Labcd/bn$a;->Hw:Labcd/bn;

    invoke-static {v2}, Labcd/bn;->DW(Labcd/bn;)Labcd/Qm;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Labcd/Qm;->j6(II)Labcd/Qm$a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Labcd/Qm$a;->DW()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->Mr()I

    move-result v4

    invoke-virtual {p5}, Labcd/Qs;->Mr()I

    move-result v5

    if-ne v4, v5, :cond_24

    goto :goto_29

    :cond_24
    invoke-static {p5, v3}, Labcd/Fm;->j6(Labcd/Rs;Labcd/Rs;)V

    throw v2

    :cond_28
    move-object v3, p5

    :goto_29
    const/16 v4, 0x15

    if-eq p1, v4, :cond_7c

    if-eq p1, v0, :cond_63

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3c

    const/16 p6, 0xa9

    if-ne p1, p6, :cond_38

    goto :goto_7c

    :cond_38
    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    throw v2

    :cond_3c
    if-nez v1, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v2

    :goto_43
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, p4}, Labcd/Tm;->DW(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4, v3, v2}, Labcd/Tm;->j6(ILabcd/Qs;Labcd/Vr;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p6}, Labcd/Tm;->DW(I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-static {p6}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object p4

    invoke-interface {p3, p4}, Labcd/Tm;->j6(Labcd/ms;)V

    goto :goto_92

    :cond_63
    if-nez v1, :cond_66

    goto :goto_6a

    :cond_66
    invoke-virtual {v1}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v2

    :goto_6a
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p6, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p6, p5}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4, v3, v2}, Labcd/Tm;->j6(ILabcd/Qs;Labcd/Vr;)V

    goto :goto_92

    :cond_7c
    :goto_7c
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p6, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p6, p4}, Labcd/Tm;->DW(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    if-eqz v1, :cond_89

    const/4 p4, 0x1

    goto :goto_8a

    :cond_89
    const/4 p4, 0x0

    :goto_8a
    invoke-interface {p3, p4}, Labcd/Tm;->j6(Z)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p5}, Labcd/Tm;->j6(Labcd/Qs;)V

    :goto_92
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p4, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p4, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void
.end method

.method public j6(IIILabcd/Qs;)V
    .registers 13

    if-eqz p1, :cond_2d9

    const/16 v0, 0xbe

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2a4

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2b4

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_2b4

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_2b4

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch p1, :sswitch_data_2ec

    const v4, 0x32132

    const/16 v5, 0x3213

    const/16 v6, 0x11

    const/16 v7, 0x212

    packed-switch p1, :pswitch_data_32e

    packed-switch p1, :pswitch_data_346

    invoke-virtual {p0, p1, p2, p3}, Labcd/bn$a;->j6(III)V

    const/4 p1, 0x0

    throw p1

    :sswitch_2d
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3}, Labcd/Tm;->j6()V

    sget-object p3, Labcd/Qs;->tp:Labcd/Qs;

    :goto_34
    invoke-direct {p0, p3}, Labcd/bn$a;->j6(Labcd/Qs;)V

    goto/16 :goto_2de

    :sswitch_39
    sget-object p3, Labcd/Qs;->QX:Labcd/Qs;

    if-ne p4, p3, :cond_48

    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    goto :goto_49

    :cond_48
    move-object p3, p4

    :goto_49
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_34

    :sswitch_51
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {p3, v0, p4, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_2de

    :sswitch_5c
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto/16 :goto_2de

    :sswitch_65
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p4}, Labcd/Qs;->er()Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v0, 0x2

    :cond_72
    invoke-virtual {p3, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {p3, v0}, Labcd/Nm;->FH(I)Z

    move-result p3

    invoke-static {p4, v1}, Labcd/bn;->j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object v0

    if-eqz p3, :cond_84

    invoke-virtual {v0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p4

    :cond_84
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {p3, v1, v0, v2, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_2de

    :sswitch_8f
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-static {p4, p3}, Labcd/bn;->j6(Labcd/Qs;Labcd/Qs;)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p4

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {v0, v1, p3, v2}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_2de

    :pswitch_ac  #0x60
    :sswitch_ac
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, p4, p4}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto/16 :goto_2de

    :pswitch_b5  #0x5f
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->er()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_df

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v3}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const/16 v0, 0x12

    :goto_da
    invoke-interface {p3, v0}, Labcd/Tm;->DW(I)V

    goto/16 :goto_2de

    :cond_df
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_e4  #0x5e
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-virtual {p3, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-eqz v1, :cond_100

    goto/16 :goto_1e7

    :cond_100
    invoke-virtual {p3, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_10c

    goto/16 :goto_1b5

    :cond_10c
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :cond_111
    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->er()Z

    move-result v1

    if-eqz v1, :cond_143

    invoke-virtual {p3, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-eqz v1, :cond_126

    goto :goto_17d

    :cond_126
    invoke-virtual {p3, v0}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_13e

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    const v0, 0x432143

    goto :goto_da

    :cond_13e
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :cond_143
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_148  #0x5d
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-eqz v1, :cond_169

    invoke-virtual {p3, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->yS()Z

    move-result p3

    if-nez p3, :cond_164

    goto/16 :goto_1e7

    :cond_164
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :cond_169
    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-nez v1, :cond_18b

    invoke-virtual {p3, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->yS()Z

    move-result p3

    if-nez p3, :cond_18b

    :goto_17d
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v1, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, v4}, Labcd/Tm;->DW(I)V

    goto/16 :goto_2de

    :cond_18b
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_190  #0x5b
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-nez v1, :cond_1c8

    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->yS()Z

    move-result v1

    if-eqz v1, :cond_1ab

    goto :goto_1e7

    :cond_1ab
    invoke-virtual {p3, v3}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_1c3

    :goto_1b5
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v1, v0}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, v5}, Labcd/Tm;->DW(I)V

    goto/16 :goto_2de

    :cond_1c3
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :cond_1c8
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_1cd  #0x5a
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->er()Z

    move-result v0

    if-eqz v0, :cond_1f5

    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_1f5

    :goto_1e7
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v3}, Labcd/Tm;->j6(Labcd/Om;I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, v7}, Labcd/Tm;->DW(I)V

    goto/16 :goto_2de

    :cond_1f5
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_1fa  #0x59
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->yS()Z

    move-result p3

    if-nez p3, :cond_218

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v2}, Labcd/Tm;->j6(Labcd/Om;I)V

    :goto_211
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, v6}, Labcd/Tm;->DW(I)V

    goto/16 :goto_2de

    :cond_218
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_21d  #0x58, 0x5c
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v2}, Labcd/Tm;->j6(Labcd/Om;I)V

    goto :goto_248

    :cond_235
    invoke-virtual {p3, v2}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->er()Z

    move-result p3

    if-eqz p3, :cond_24d

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v3}, Labcd/Tm;->j6(Labcd/Om;I)V

    const/16 v6, 0x2121

    :goto_248
    const/16 p3, 0x5c

    if-ne p1, p3, :cond_2de

    goto :goto_211

    :cond_24d
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_252  #0x57
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->yS()Z

    move-result p3

    if-nez p3, :cond_26b

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, v0, v2}, Labcd/Tm;->j6(Labcd/Om;I)V

    goto/16 :goto_2de

    :cond_26b
    invoke-static {}, Labcd/bn;->j6()Labcd/an;

    move-result-object p1

    throw p1

    :pswitch_270  #0x97, 0x98
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->v5:Labcd/Qs;

    goto :goto_284

    :pswitch_277  #0x95, 0x96
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->Zo:Labcd/Qs;

    goto :goto_284

    :pswitch_27e  #0x94
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->gn:Labcd/Qs;

    :goto_284
    invoke-interface {p3, v0, v1, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_2de

    :pswitch_288  #0x8e, 0x8f, 0x90
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->v5:Labcd/Qs;

    goto :goto_2ba

    :pswitch_28f  #0x8b, 0x8c, 0x8d
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->Zo:Labcd/Qs;

    goto :goto_2ba

    :pswitch_296  #0x88, 0x89, 0x8a
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->gn:Labcd/Qs;

    goto :goto_2ba

    :pswitch_29d  #0x85, 0x86, 0x87, 0x91, 0x92, 0x93
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    goto :goto_2ba

    :cond_2a4
    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-virtual {p3}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p3

    invoke-virtual {p3, v1}, Labcd/Nm;->Hw(I)Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3}, Labcd/Qs;->rN()Z

    move-result v0

    if-eqz v0, :cond_2be

    :cond_2b4
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    :goto_2ba
    invoke-interface {p3, v0, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_2de

    :cond_2be
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type mismatch: expected array type but encountered "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2d9
    :sswitch_2d9
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3}, Labcd/Tm;->j6()V

    :cond_2de
    :goto_2de
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4}, Labcd/Tm;->j6(Labcd/Qs;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p4, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p4, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    nop

    :sswitch_data_2ec
    .sparse-switch
        0x0 -> :sswitch_2d9
        0x2e -> :sswitch_8f
        0x4f -> :sswitch_65
        0x64 -> :sswitch_ac
        0x68 -> :sswitch_ac
        0x6c -> :sswitch_ac
        0x70 -> :sswitch_ac
        0x74 -> :sswitch_5c
        0x78 -> :sswitch_51
        0x7a -> :sswitch_51
        0x7c -> :sswitch_51
        0x7e -> :sswitch_ac
        0x80 -> :sswitch_ac
        0x82 -> :sswitch_ac
        0xac -> :sswitch_39
        0xb1 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_32e
    .packed-switch 0x57
        :pswitch_252  #00000057
        :pswitch_21d  #00000058
        :pswitch_1fa  #00000059
        :pswitch_1cd  #0000005a
        :pswitch_190  #0000005b
        :pswitch_21d  #0000005c
        :pswitch_148  #0000005d
        :pswitch_e4  #0000005e
        :pswitch_b5  #0000005f
        :pswitch_ac  #00000060
    .end packed-switch

    :pswitch_data_346
    .packed-switch 0x85
        :pswitch_29d  #00000085
        :pswitch_29d  #00000086
        :pswitch_29d  #00000087
        :pswitch_296  #00000088
        :pswitch_296  #00000089
        :pswitch_296  #0000008a
        :pswitch_28f  #0000008b
        :pswitch_28f  #0000008c
        :pswitch_28f  #0000008d
        :pswitch_288  #0000008e
        :pswitch_288  #0000008f
        :pswitch_288  #00000090
        :pswitch_29d  #00000091
        :pswitch_29d  #00000092
        :pswitch_29d  #00000093
        :pswitch_27e  #00000094
        :pswitch_277  #00000095
        :pswitch_277  #00000096
        :pswitch_270  #00000097
        :pswitch_270  #00000098
    .end packed-switch
.end method

.method public j6(IIILabcd/cn;I)V
    .registers 8

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {p3, v0, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p5}, Labcd/Tm;->DW(I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4}, Labcd/Tm;->j6(Labcd/cn;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p4, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p4, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void
.end method

.method public j6(IIILabcd/ms;I)V
    .registers 9

    const/16 p3, 0xbd

    if-eq p1, p3, :cond_63

    const/16 p3, 0xc5

    if-eq p1, p3, :cond_5c

    const/16 p3, 0xc0

    if-eq p1, p3, :cond_55

    const/16 p3, 0xc1

    if-eq p1, p3, :cond_55

    packed-switch p1, :pswitch_data_7e

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3}, Labcd/Tm;->j6()V

    goto :goto_6c

    :pswitch_19  #0xb9
    check-cast p4, Labcd/zs;

    invoke-virtual {p4}, Labcd/zs;->rN()Labcd/Gs;

    move-result-object p4

    goto :goto_25

    :pswitch_20  #0xb8
    move-object p3, p4

    check-cast p3, Labcd/Gs;

    const/4 v0, 0x1

    goto :goto_29

    :goto_25
    :pswitch_25  #0xb6, 0xb7
    move-object p3, p4

    check-cast p3, Labcd/Gs;

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p3, v0}, Labcd/qs;->DW(Z)Labcd/Os;

    move-result-object p3

    :goto_2d
    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p3}, Labcd/Tm;->j6(Labcd/Om;Labcd/Os;)V

    goto :goto_6c

    :pswitch_35  #0xb5
    move-object p3, p4

    check-cast p3, Labcd/ws;

    invoke-virtual {p3}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object p3

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-interface {v0, v1, v2, p3}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V

    goto :goto_6c

    :pswitch_46  #0xb3
    move-object p3, p4

    check-cast p3, Labcd/ws;

    invoke-virtual {p3}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object p3

    iget-object v0, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v1, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {v0, v1, p3}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    goto :goto_6c

    :cond_55
    :pswitch_55  #0xb4
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    goto :goto_69

    :cond_5c
    sget-object p3, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {p3, p5}, Labcd/Os;->j6(Labcd/Qs;I)Labcd/Os;

    move-result-object p3

    goto :goto_2d

    :cond_63
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    :goto_69
    invoke-interface {p3, v0, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    :goto_6c
    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p5}, Labcd/Tm;->DW(I)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p3, p4}, Labcd/Tm;->j6(Labcd/ms;)V

    iget-object p3, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p4, p0, Labcd/bn$a;->DW:Labcd/Om;

    invoke-interface {p3, p4, p2, p1}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void

    :pswitch_data_7e
    .packed-switch 0xb3
        :pswitch_46  #000000b3
        :pswitch_55  #000000b4
        :pswitch_35  #000000b5
        :pswitch_25  #000000b6
        :pswitch_25  #000000b7
        :pswitch_20  #000000b8
        :pswitch_19  #000000b9
    .end packed-switch
.end method

.method public j6(IILabcd/Ks;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Labcd/Ks;",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object v0, p0, Labcd/bn$a;->DW:Labcd/Om;

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    invoke-interface {p2, v0, v1}, Labcd/Tm;->j6(Labcd/Om;Labcd/Qs;)V

    iget-object p2, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p2, p4}, Labcd/Tm;->j6(Ljava/util/ArrayList;)V

    iget-object p2, p0, Labcd/bn$a;->j6:Labcd/Tm;

    invoke-interface {p2, p3}, Labcd/Tm;->j6(Labcd/ms;)V

    iget-object p2, p0, Labcd/bn$a;->j6:Labcd/Tm;

    iget-object p3, p0, Labcd/bn$a;->DW:Labcd/Om;

    const/16 p4, 0xbc

    invoke-interface {p2, p3, p1, p4}, Labcd/Tm;->j6(Labcd/Om;II)V

    return-void
.end method

.method public j6(Labcd/Om;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Labcd/bn$a;->DW:Labcd/Om;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
