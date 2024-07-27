.class final Labcd/_m;
.super Labcd/dn;


# static fields
.field private static final QX:Labcd/Gs;

.field private static final Ws:Labcd/Ks;


# instance fields
.field private BT:Z

.field private final Mr:I

.field private P8:Labcd/es;

.field private final U2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Tr;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Labcd/Zm;

.field private a8:Labcd/Ss;

.field private final aM:Labcd/Mm;

.field private ei:Labcd/hs;

.field private er:I

.field private gW:Z

.field private final j3:Labcd/ls;

.field private lg:Z

.field private rN:Z

.field private vy:Labcd/Wm;

.field private yS:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Labcd/Ks;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Labcd/Qs;->DW(Ljava/lang/String;)Labcd/Qs;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Ks;-><init>(Labcd/Qs;)V

    sput-object v0, Labcd/_m;->Ws:Labcd/Ks;

    new-instance v0, Labcd/Gs;

    sget-object v1, Labcd/_m;->Ws:Labcd/Ks;

    new-instance v2, Labcd/Hs;

    new-instance v3, Labcd/Js;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Labcd/Js;-><init>(Ljava/lang/String;)V

    new-instance v4, Labcd/Js;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Labcd/Js;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-direct {v0, v1, v2}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    sput-object v0, Labcd/_m;->QX:Labcd/Gs;

    return-void
.end method

.method public constructor <init>(Labcd/Zm;Labcd/Mm;Labcd/ls;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Labcd/Mm;->v5()Labcd/Os;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/dn;-><init>(Labcd/Os;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Labcd/_m;->XL:Labcd/Zm;

    iput-object p2, p0, Labcd/_m;->aM:Labcd/Mm;

    iput-object p3, p0, Labcd/_m;->j3:Labcd/ls;

    invoke-virtual {p2}, Labcd/Mm;->tp()I

    move-result v0

    iput v0, p0, Labcd/_m;->Mr:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    iput-object v3, p0, Labcd/_m;->a8:Labcd/Ss;

    iput-boolean v2, p0, Labcd/_m;->lg:Z

    iput-boolean v2, p0, Labcd/_m;->rN:Z

    const/4 v0, -0x1

    iput v0, p0, Labcd/_m;->er:I

    iput v2, p0, Labcd/_m;->yS:I

    iput-boolean v2, p0, Labcd/_m;->BT:Z

    iput-object v3, p0, Labcd/_m;->P8:Labcd/es;

    iput-object v3, p0, Labcd/_m;->ei:Labcd/hs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ropper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(ILabcd/ms;)I
    .registers 6

    const/16 v0, 0x15

    const/16 v1, 0x14

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    const/16 v2, 0xab

    if-eq p1, v2, :cond_3

    const/16 v2, 0xac

    if-eq p1, v2, :cond_2

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v0, 0x25

    :goto_0
    :sswitch_0
    return v0

    :pswitch_2
    const/16 v0, 0x24

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2c

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2b

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x22

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x29

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x28

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_b
    check-cast p2, Labcd/Gs;

    invoke-virtual {p2}, Labcd/qs;->lg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    iget-object v1, p0, Labcd/_m;->aM:Labcd/Mm;

    invoke-virtual {v1}, Labcd/Mm;->DW()Labcd/Ks;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Labcd/_m;->aM:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->Zo()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x34

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x2f

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x2e

    goto :goto_0

    :pswitch_11
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_12
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_13
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_14
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_17
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x1f

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x1d

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x26

    goto/16 :goto_0

    :cond_2
    :pswitch_1f
    const/16 v0, 0x21

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_4
    :sswitch_d
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    :sswitch_e
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_6
    :sswitch_f
    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x12 -> :sswitch_e
        0x2e -> :sswitch_c
        0x36 -> :sswitch_d
        0x4f -> :sswitch_b
        0x64 -> :sswitch_a
        0x68 -> :sswitch_9
        0x6c -> :sswitch_8
        0x70 -> :sswitch_7
        0x74 -> :sswitch_6
        0x78 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7c -> :sswitch_3
        0x7e -> :sswitch_2
        0x80 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_1f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xbb
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private j6(II)Labcd/cs;
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/Fm;->FH()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/Fm;->EQ()I

    move-result v1

    if-ltz v1, :cond_2

    new-instance v0, Labcd/cs;

    invoke-direct {v0, v5}, Labcd/cs;-><init>(I)V

    invoke-virtual {p0, v2}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v3

    invoke-static {v1, v3}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/cs;->j6(ILabcd/bs;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/cs;

    invoke-direct {v0, v3}, Labcd/cs;-><init>(I)V

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v4

    invoke-static {p2, v4}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb5

    if-ne p1, v1, :cond_1

    if-ne v3, v6, :cond_4

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v0, v5, v1}, Labcd/cs;->j6(ILabcd/bs;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x3

    if-ne v3, v1, :cond_6

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v0, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v0, v5, v1}, Labcd/cs;->j6(ILabcd/bs;)V

    invoke-virtual {v0, v6, v3}, Labcd/cs;->j6(ILabcd/bs;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/es;Labcd/hs;)V
    .registers 5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Labcd/_m;->P8:Labcd/es;

    if-nez v0, :cond_1

    iput-object p1, p0, Labcd/_m;->P8:Labcd/es;

    iput-object p2, p0, Labcd/_m;->ei:Labcd/hs;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    invoke-virtual {p2}, Labcd/hs;->j6()I

    move-result v0

    iget-object v1, p0, Labcd/_m;->ei:Labcd/hs;

    invoke-virtual {v1}, Labcd/hs;->j6()I

    move-result v1

    if-le v0, v1, :cond_0

    iput-object p2, p0, Labcd/_m;->ei:Labcd/hs;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return op mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/_m;->P8:Labcd/es;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pos == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "op == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public J0()Z
    .registers 2

    iget-boolean v0, p0, Labcd/_m;->BT:Z

    return v0
.end method

.method public J8()I
    .registers 2

    iget v0, p0, Labcd/_m;->yS:I

    return v0
.end method

.method public Mr()Z
    .registers 2

    iget-boolean v0, p0, Labcd/_m;->gW:Z

    return v0
.end method

.method public QX()I
    .registers 2

    iget v0, p0, Labcd/_m;->er:I

    return v0
.end method

.method public U2()Z
    .registers 2

    iget-object v0, p0, Labcd/_m;->vy:Labcd/Wm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ws()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Tr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    return-object v0
.end method

.method public XL()Labcd/Wm;
    .registers 2

    iget-object v0, p0, Labcd/_m;->vy:Labcd/Wm;

    return-object v0
.end method

.method public a8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/_m;->rN:Z

    return v0
.end method

.method public aM()Labcd/es;
    .registers 2

    iget-object v0, p0, Labcd/_m;->P8:Labcd/es;

    return-object v0
.end method

.method public j3()Labcd/hs;
    .registers 2

    iget-object v0, p0, Labcd/_m;->ei:Labcd/hs;

    return-object v0
.end method

.method public j6(Labcd/Om;II)V
    .registers 18

    iget v1, p0, Labcd/_m;->Mr:I

    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nm;->size()I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v0, p3

    invoke-direct {p0, v0, v2}, Labcd/_m;->j6(II)Labcd/cs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v11

    invoke-super/range {p0 .. p3}, Labcd/dn;->j6(Labcd/Om;II)V

    iget-object v1, p0, Labcd/_m;->aM:Labcd/Mm;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Labcd/Mm;->j6(I)Labcd/hs;

    move-result-object v3

    const/16 v1, 0x36

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Labcd/Fm;->DW(Z)Labcd/bs;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Fm;->we()I

    move-result v5

    if-nez v5, :cond_1

    const/16 v1, 0x57

    move/from16 v0, p3

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    move/from16 v0, p3

    if-eq v0, v1, :cond_7

    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    move-object v8, v9

    :goto_2
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v7

    const/16 v1, 0xc5

    move/from16 v0, p3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/_m;->BT:Z

    const/4 v1, 0x6

    iput v1, p0, Labcd/_m;->yS:I

    invoke-virtual {v9}, Labcd/bs;->VH()I

    move-result v1

    sget-object v2, Labcd/Qs;->KD:Labcd/Qs;

    invoke-static {v1, v2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v12

    new-instance v1, Labcd/js;

    sget-object v2, Labcd/Qs;->KD:Labcd/Qs;

    invoke-static {v2, v11}, Labcd/gs;->j6(Labcd/Rs;I)Labcd/es;

    move-result-object v2

    iget-object v5, p0, Labcd/_m;->a8:Labcd/Ss;

    sget-object v6, Labcd/Ks;->aM:Labcd/Ks;

    invoke-direct/range {v1 .. v6}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Labcd/Zr;

    sget-object v2, Labcd/Qs;->KD:Labcd/Qs;

    invoke-static {v2}, Labcd/gs;->we(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v12, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    check-cast v1, Labcd/Ks;

    invoke-virtual {v1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v1

    :goto_3
    if-ge v2, v11, :cond_4

    invoke-virtual {v10}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    move-object v10, v1

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :goto_4
    move-object v9, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v5, v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/Fm;->Hw(I)Labcd/Rs;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v1

    goto :goto_4

    :cond_3
    sget-object v1, Labcd/Qs;->tp:Labcd/Qs;

    move-object v8, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v1

    sget-object v2, Labcd/Qs;->J8:Labcd/Qs;

    invoke-static {v1, v2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v13

    invoke-virtual {v10}, Labcd/Qs;->BT()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v10}, Labcd/ws;->j6(Labcd/Qs;)Labcd/ws;

    move-result-object v6

    new-instance v1, Labcd/js;

    sget-object v2, Labcd/gs;->ir:Labcd/es;

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    iget-object v5, p0, Labcd/_m;->a8:Labcd/Ss;

    invoke-direct/range {v1 .. v6}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    :goto_5
    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Labcd/Zr;

    invoke-virtual {v13}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v13, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v1

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-static {v1, v2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v10

    new-instance v1, Labcd/js;

    sget-object v2, Labcd/_m;->QX:Labcd/Gs;

    invoke-virtual {v2}, Labcd/qs;->J8()Labcd/Os;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->FH(Labcd/Os;)Labcd/es;

    move-result-object v2

    invoke-static {v13, v12}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v4

    iget-object v5, p0, Labcd/_m;->a8:Labcd/Ss;

    sget-object v6, Labcd/_m;->QX:Labcd/Gs;

    invoke-direct/range {v1 .. v6}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Labcd/Zr;

    sget-object v2, Labcd/_m;->QX:Labcd/Gs;

    invoke-virtual {v2}, Labcd/qs;->J8()Labcd/Os;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->we(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v10, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p3, 0xc0

    invoke-static {v10}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v4

    move-object v5, v4

    :goto_6
    move/from16 v0, p3

    invoke-direct {p0, v0, v7}, Labcd/_m;->j6(ILabcd/ms;)I

    move-result v6

    invoke-static {v6, v8, v5, v7}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v10

    if-eqz v9, :cond_b

    invoke-virtual {v10}, Labcd/es;->VH()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Labcd/_m;->yS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/_m;->yS:I

    new-instance v2, Labcd/Zr;

    move-object v1, v7

    check-cast v1, Labcd/Gs;

    invoke-virtual {v1}, Labcd/qs;->J8()Labcd/Os;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v1

    invoke-static {v1}, Labcd/gs;->we(Labcd/Rs;)Labcd/es;

    move-result-object v1

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v2, v1, v3, v9, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    move-object v1, v2

    :goto_7
    const/4 v4, 0x0

    move-object v12, v1

    :goto_8
    const/16 v1, 0x29

    if-ne v6, v1, :cond_d

    invoke-virtual {v10}, Labcd/es;->v5()Labcd/Qs;

    move-result-object v1

    invoke-static {v1}, Labcd/Ks;->DW(Labcd/Qs;)Labcd/Ks;

    move-result-object v7

    :cond_5
    move-object v2, v10

    move-object v11, v7

    :goto_9
    invoke-virtual {p0}, Labcd/Fm;->v5()Labcd/cn;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Fm;->tp()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v2}, Labcd/es;->j6()Z

    move-result v7

    iget-boolean v8, p0, Labcd/_m;->BT:Z

    or-int/2addr v8, v7

    iput-boolean v8, p0, Labcd/_m;->BT:Z

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Labcd/cn;->size()I

    move-result v6

    if-nez v6, :cond_10

    new-instance v1, Labcd/Zr;

    sget-object v2, Labcd/gs;->j3:Labcd/es;

    const/4 v4, 0x0

    sget-object v5, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    const/4 v2, 0x0

    iput v2, p0, Labcd/_m;->er:I

    :goto_a
    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_6

    iget-object v1, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v13, :cond_7

    iget v1, p0, Labcd/_m;->yS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/_m;->yS:I

    new-instance v1, Labcd/Sr;

    sget-object v2, Labcd/gs;->J1:Labcd/es;

    invoke-virtual {v12}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v4

    invoke-static {v4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v4

    move-object v5, v13

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Labcd/Sr;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Ljava/util/ArrayList;Labcd/ms;)V

    iget-object v2, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_b
    return-void

    :cond_8
    new-instance v1, Labcd/js;

    sget-object v2, Labcd/gs;->XL:Labcd/es;

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    iget-object v5, p0, Labcd/_m;->a8:Labcd/Ss;

    new-instance v6, Labcd/Ks;

    invoke-direct {v6, v10}, Labcd/Ks;-><init>(Labcd/Qs;)V

    invoke-direct/range {v1 .. v6}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    goto/16 :goto_5

    :cond_9
    const/16 v1, 0xa8

    move/from16 v0, p3

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/_m;->gW:Z

    goto :goto_b

    :cond_a
    const/16 v1, 0xa9

    move/from16 v0, p3

    if-ne v0, v1, :cond_1b

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v1

    check-cast v1, Labcd/Wm;

    iput-object v1, p0, Labcd/_m;->vy:Labcd/Wm;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Argument to RET was not a ReturnAddress"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v10}, Labcd/es;->j6()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Labcd/_m;->yS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/_m;->yS:I

    new-instance v1, Labcd/Zr;

    invoke-virtual {v9}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v9, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    goto/16 :goto_7

    :cond_c
    const/4 v1, 0x0

    move-object v4, v9

    move-object v12, v1

    goto/16 :goto_8

    :cond_d
    if-nez v7, :cond_5

    const/4 v1, 0x2

    if-ne v11, v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-interface {v2}, Labcd/Rs;->a8()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-interface {v1}, Labcd/Rs;->a8()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_e
    iget-object v9, p0, Labcd/_m;->j3:Labcd/ls;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v13

    invoke-interface {v9, v10, v11, v13}, Labcd/ls;->j6(Labcd/es;Labcd/bs;Labcd/bs;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Labcd/Rs;->a8()Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v1, v2

    check-cast v1, Labcd/ms;

    invoke-virtual {v5}, Labcd/cs;->yS()Labcd/cs;

    move-result-object v5

    invoke-virtual {v10}, Labcd/es;->Hw()I

    move-result v7

    const/16 v9, 0xf

    if-ne v7, v9, :cond_1a

    check-cast v2, Labcd/ys;

    invoke-virtual {v2}, Labcd/ys;->rN()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v2

    const/16 v1, 0xe

    move v6, v1

    move-object v7, v2

    :goto_c
    invoke-static {v6, v8, v5, v7}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v2

    move-object v11, v7

    goto/16 :goto_9

    :cond_f
    check-cast v1, Labcd/ms;

    invoke-virtual {v5}, Labcd/cs;->er()Labcd/cs;

    move-result-object v2

    move-object v5, v2

    move-object v7, v1

    goto :goto_c

    :cond_10
    invoke-virtual {v1}, Labcd/cn;->er()Labcd/au;

    move-result-object v6

    new-instance v1, Labcd/is;

    invoke-direct/range {v1 .. v6}, Labcd/is;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/au;)V

    invoke-virtual {v6}, Labcd/au;->size()I

    move-result v2

    iput v2, p0, Labcd/_m;->er:I

    goto/16 :goto_a

    :cond_11
    const/16 v1, 0x21

    if-ne v6, v1, :cond_13

    invoke-virtual {v5}, Labcd/Xt;->size()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v4

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    new-instance v6, Labcd/Zr;

    invoke-static {v4}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8, v4}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v4

    invoke-direct {v6, v7, v3, v4, v1}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v1, Labcd/Zr;

    sget-object v4, Labcd/gs;->j3:Labcd/es;

    const/4 v5, 0x0

    sget-object v6, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v4, v3, v5, v6}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    const/4 v4, 0x0

    iput v4, p0, Labcd/_m;->er:I

    invoke-direct {p0, v2, v3}, Labcd/_m;->j6(Labcd/es;Labcd/hs;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/_m;->rN:Z

    goto/16 :goto_a

    :cond_13
    if-eqz v11, :cond_15

    if-eqz v7, :cond_14

    new-instance v6, Labcd/js;

    iget-object v10, p0, Labcd/_m;->a8:Labcd/Ss;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/_m;->lg:Z

    iget-object v1, p0, Labcd/_m;->a8:Labcd/Ss;

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v1

    iput v1, p0, Labcd/_m;->er:I

    move-object v1, v6

    goto/16 :goto_a

    :cond_14
    new-instance v1, Labcd/Yr;

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    goto/16 :goto_a

    :cond_15
    if-eqz v7, :cond_17

    new-instance v1, Labcd/ks;

    iget-object v4, p0, Labcd/_m;->a8:Labcd/Ss;

    invoke-direct {v1, v2, v3, v5, v4}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/_m;->lg:Z

    const/16 v2, 0xbf

    move/from16 v0, p3

    if-ne v0, v2, :cond_16

    const/4 v2, -0x1

    iput v2, p0, Labcd/_m;->er:I

    goto/16 :goto_a

    :cond_16
    iget-object v2, p0, Labcd/_m;->a8:Labcd/Ss;

    invoke-interface {v2}, Labcd/Ss;->size()I

    move-result v2

    iput v2, p0, Labcd/_m;->er:I

    goto/16 :goto_a

    :cond_17
    new-instance v1, Labcd/Zr;

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    goto/16 :goto_a

    :cond_18
    const/4 v5, 0x0

    iget-object v1, p0, Labcd/_m;->XL:Labcd/Zm;

    invoke-virtual {v1}, Labcd/Zm;->j6()I

    move-result v1

    new-array v6, v11, [Labcd/bs;

    :goto_d
    if-ge v5, v11, :cond_19

    invoke-virtual {v4, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v8

    invoke-virtual {v7, v1}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v9

    iget-object v10, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    new-instance v12, Labcd/Zr;

    invoke-static {v8}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v8

    invoke-direct {v12, v8, v3, v9, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v9, v6, v5

    invoke-virtual {v7}, Labcd/bs;->Hw()I

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_19
    invoke-virtual {p0}, Labcd/Fm;->VH()I

    move-result v4

    move v1, v2

    :goto_e
    if-eqz v4, :cond_7

    and-int/lit8 v2, v4, 0xf

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v6, v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v5

    iget-object v7, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    new-instance v8, Labcd/Zr;

    invoke-static {v5}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v9

    invoke-virtual {v2, v1}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v10

    invoke-direct {v8, v9, v3, v10, v2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/bs;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Qs;->Zo()I

    move-result v2

    add-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    move v4, v2

    goto :goto_e

    :cond_1a
    move-object v7, v1

    goto/16 :goto_c

    :cond_1b
    move-object v5, v4

    goto/16 :goto_6
.end method

.method public j6(Labcd/Ss;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Labcd/_m;->a8:Labcd/Ss;

    iget-object v0, p0, Labcd/_m;->U2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Labcd/_m;->lg:Z

    iput-boolean v1, p0, Labcd/_m;->rN:Z

    iput v1, p0, Labcd/_m;->er:I

    iput v1, p0, Labcd/_m;->yS:I

    iput-boolean v1, p0, Labcd/_m;->BT:Z

    iput-boolean v1, p0, Labcd/_m;->gW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_m;->vy:Labcd/Wm;

    return-void
.end method

.method public lg()Z
    .registers 2

    iget-boolean v0, p0, Labcd/_m;->lg:Z

    return v0
.end method
