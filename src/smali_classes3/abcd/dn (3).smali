.class public Labcd/dn;
.super Labcd/Fm;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Fm;-><init>(Labcd/Os;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Om;II)V
    .registers 6

    if-eqz p3, :cond_d1

    const/16 v0, 0x14

    if-eq p3, v0, :cond_c7

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p3, v0, :cond_c2

    const/16 v0, 0xab

    if-eq p3, v0, :cond_d1

    const/16 v0, 0xac

    if-eq p3, v0, :cond_d1

    sparse-switch p3, :sswitch_data_d8

    packed-switch p3, :pswitch_data_11a

    packed-switch p3, :pswitch_data_132

    packed-switch p3, :pswitch_data_182

    packed-switch p3, :pswitch_data_198

    packed-switch p3, :pswitch_data_1ae

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "shouldn\'t happen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_40  #0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    invoke-virtual {p0}, Labcd/Fm;->VH()I

    move-result p2

    :goto_47
    if-eqz p2, :cond_d4

    and-int/lit8 p3, p2, 0xf

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object p3

    invoke-virtual {p0, p3}, Labcd/Fm;->j6(Labcd/Rs;)V

    shr-int/lit8 p2, p2, 0x4

    goto :goto_47

    :pswitch_57  #0xa8
    new-instance p2, Labcd/Wm;

    invoke-virtual {p0}, Labcd/Fm;->gn()I

    move-result p3

    invoke-direct {p2, p3}, Labcd/Wm;-><init>(I)V

    goto/16 :goto_cd

    :pswitch_62  #0xb7
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object p2

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->P8()Z

    move-result p3

    if-eqz p3, :cond_73

    invoke-virtual {p1, p2}, Labcd/Om;->j6(Labcd/Qs;)V

    :cond_73
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Rs;

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    sget-object p3, Labcd/Qs;->tp:Labcd/Qs;

    if-ne p2, p3, :cond_cd

    goto :goto_d1

    :pswitch_82  #0xb2, 0xb4, 0xb6, 0xb8, 0xb9
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Rs;

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    sget-object p3, Labcd/Qs;->tp:Labcd/Qs;

    if-ne p2, p3, :cond_cd

    goto :goto_d1

    :pswitch_91  #0xc1
    sget-object p2, Labcd/Qs;->VH:Labcd/Qs;

    goto :goto_cd

    :pswitch_94  #0x60, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xbe
    :sswitch_94
    invoke-virtual {p0}, Labcd/Fm;->u7()Labcd/Qs;

    move-result-object p2

    goto :goto_cd

    :pswitch_99  #0xbd
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Ks;

    invoke-virtual {p2}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p2

    goto :goto_cd

    :pswitch_a8  #0xbb
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p3

    check-cast p3, Labcd/Ks;

    invoke-virtual {p3}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p3

    invoke-virtual {p3, p2}, Labcd/Qs;->j6(I)Labcd/Qs;

    move-result-object p2

    goto :goto_cd

    :pswitch_b7  #0xbc, 0xc0, 0xc5
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Ks;

    invoke-virtual {p2}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p2

    goto :goto_cd

    :cond_c2
    :sswitch_c2
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object p2

    goto :goto_cd

    :cond_c7
    :sswitch_c7
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object p2

    check-cast p2, Labcd/Rs;

    :cond_cd
    :goto_cd
    invoke-virtual {p0, p2}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_d4

    :cond_d1
    :goto_d1
    :pswitch_d1  #0x57, 0x58, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa9, 0xb1, 0xb3, 0xb5, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    :sswitch_d1
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    :cond_d4
    :goto_d4
    invoke-virtual {p0, p1}, Labcd/Fm;->j6(Labcd/Om;)V

    return-void

    :sswitch_data_d8
    .sparse-switch
        0x0 -> :sswitch_d1
        0x12 -> :sswitch_c7
        0x2e -> :sswitch_94
        0x36 -> :sswitch_c2
        0x4f -> :sswitch_d1
        0x64 -> :sswitch_94
        0x68 -> :sswitch_94
        0x6c -> :sswitch_94
        0x70 -> :sswitch_94
        0x74 -> :sswitch_94
        0x78 -> :sswitch_94
        0x7a -> :sswitch_94
        0x7c -> :sswitch_94
        0x7e -> :sswitch_94
        0x80 -> :sswitch_94
        0x82 -> :sswitch_94
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x57
        :pswitch_d1  #00000057
        :pswitch_d1  #00000058
        :pswitch_40  #00000059
        :pswitch_40  #0000005a
        :pswitch_40  #0000005b
        :pswitch_40  #0000005c
        :pswitch_40  #0000005d
        :pswitch_40  #0000005e
        :pswitch_40  #0000005f
        :pswitch_94  #00000060
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x84
        :pswitch_94  #00000084
        :pswitch_94  #00000085
        :pswitch_94  #00000086
        :pswitch_94  #00000087
        :pswitch_94  #00000088
        :pswitch_94  #00000089
        :pswitch_94  #0000008a
        :pswitch_94  #0000008b
        :pswitch_94  #0000008c
        :pswitch_94  #0000008d
        :pswitch_94  #0000008e
        :pswitch_94  #0000008f
        :pswitch_94  #00000090
        :pswitch_94  #00000091
        :pswitch_94  #00000092
        :pswitch_94  #00000093
        :pswitch_94  #00000094
        :pswitch_94  #00000095
        :pswitch_94  #00000096
        :pswitch_94  #00000097
        :pswitch_94  #00000098
        :pswitch_d1  #00000099
        :pswitch_d1  #0000009a
        :pswitch_d1  #0000009b
        :pswitch_d1  #0000009c
        :pswitch_d1  #0000009d
        :pswitch_d1  #0000009e
        :pswitch_d1  #0000009f
        :pswitch_d1  #000000a0
        :pswitch_d1  #000000a1
        :pswitch_d1  #000000a2
        :pswitch_d1  #000000a3
        :pswitch_d1  #000000a4
        :pswitch_d1  #000000a5
        :pswitch_d1  #000000a6
        :pswitch_d1  #000000a7
        :pswitch_57  #000000a8
        :pswitch_d1  #000000a9
    .end packed-switch

    :pswitch_data_182
    .packed-switch 0xb1
        :pswitch_d1  #000000b1
        :pswitch_82  #000000b2
        :pswitch_d1  #000000b3
        :pswitch_82  #000000b4
        :pswitch_d1  #000000b5
        :pswitch_82  #000000b6
        :pswitch_62  #000000b7
        :pswitch_82  #000000b8
        :pswitch_82  #000000b9
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0xbb
        :pswitch_a8  #000000bb
        :pswitch_b7  #000000bc
        :pswitch_99  #000000bd
        :pswitch_94  #000000be
        :pswitch_d1  #000000bf
        :pswitch_b7  #000000c0
        :pswitch_91  #000000c1
        :pswitch_d1  #000000c2
        :pswitch_d1  #000000c3
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0xc5
        :pswitch_b7  #000000c5
        :pswitch_d1  #000000c6
        :pswitch_d1  #000000c7
    .end packed-switch
.end method
