.class public final Labcd/Gm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Lm$c;


# instance fields
.field private final DW:[I

.field private final FH:[I

.field private final Hw:[I

.field private VH:I

.field private final Zo:[Labcd/Jm;

.field private final j6:Labcd/Mm;

.field private final v5:[Labcd/au;


# direct methods
.method private constructor <init>(Labcd/Mm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2f

    iput-object p1, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {p1}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Lm;->FH()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iput-object v0, p0, Labcd/Gm;->DW:[I

    invoke-static {p1}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iput-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {p1}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iput-object v0, p0, Labcd/Gm;->Hw:[I

    new-array v0, p1, [Labcd/au;

    iput-object v0, p0, Labcd/Gm;->v5:[Labcd/au;

    new-array p1, p1, [Labcd/Jm;

    iput-object p1, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    const/4 p1, -0x1

    iput p1, p0, Labcd/Gm;->VH:I

    return-void

    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW()V
    .registers 10

    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v0

    iget-object v1, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v1}, Labcd/Mm;->VH()Labcd/Jm;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    iget-object v3, p0, Labcd/Gm;->DW:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Labcd/Ot;->Hw([II)V

    iget-object v3, p0, Labcd/Gm;->Hw:[I

    invoke-static {v3, v4}, Labcd/Ot;->Hw([II)V

    :cond_1b
    iget-object v3, p0, Labcd/Gm;->DW:[I

    invoke-static {v3}, Labcd/Ot;->FH([I)Z

    move-result v3

    if-nez v3, :cond_5d

    :try_start_23
    iget-object v3, p0, Labcd/Gm;->DW:[I

    invoke-virtual {v0, v3, p0}, Labcd/Lm;->j6([ILabcd/Lm$c;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_28} :catch_54

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_1b

    invoke-virtual {v1, v3}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Jm$a;->Hw()I

    move-result v6

    invoke-virtual {v5}, Labcd/Jm$a;->j6()I

    move-result v7

    iget-object v8, p0, Labcd/Gm;->FH:[I

    invoke-static {v8, v6, v7}, Labcd/Ot;->j6([III)Z

    move-result v8

    if-eqz v8, :cond_51

    iget-object v8, p0, Labcd/Gm;->Hw:[I

    invoke-static {v8, v6}, Labcd/Ot;->Hw([II)V

    iget-object v6, p0, Labcd/Gm;->Hw:[I

    invoke-static {v6, v7}, Labcd/Ot;->Hw([II)V

    invoke-virtual {v5}, Labcd/Jm$a;->FH()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Labcd/Gm;->j6(IZ)V

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :catch_54
    move-exception v0

    new-instance v1, Labcd/an;

    const-string v2, "flow of control falls off end of method"

    invoke-direct {v1, v2, v0}, Labcd/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5d
    return-void
.end method

.method private DW(IIZ)V
    .registers 6

    add-int/2addr p2, p1

    if-eqz p3, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Labcd/Gm;->j6(IZ)V

    :cond_7
    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->VH()Labcd/Jm;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Jm;->Hw(I)Labcd/Jm;

    move-result-object v0

    iget-object v1, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    aput-object v0, v1, p1

    iget-object v1, p0, Labcd/Gm;->v5:[Labcd/au;

    if-eqz p3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p2, -0x1

    :goto_1b
    invoke-virtual {v0, p2}, Labcd/Jm;->v5(I)Labcd/au;

    move-result-object p2

    aput-object p2, v1, p1

    return-void
.end method

.method private FH()Labcd/Im;
    .registers 12

    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Lm;->FH()I

    move-result v0

    new-array v0, v0, [Labcd/Hm;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_f
    iget-object v2, p0, Labcd/Gm;->Hw:[I

    add-int/lit8 v3, v4, 0x1

    invoke-static {v2, v3}, Labcd/Ot;->DW([II)I

    move-result v9

    if-gez v9, :cond_29

    new-instance v2, Labcd/Im;

    invoke-direct {v2, v8}, Labcd/Im;-><init>(I)V

    :goto_1e
    if-ge v1, v8, :cond_28

    aget-object v3, v0, v1

    invoke-virtual {v2, v1, v3}, Labcd/Im;->j6(ILabcd/Hm;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_28
    return-object v2

    :cond_29
    iget-object v2, p0, Labcd/Gm;->FH:[I

    invoke-static {v2, v4}, Labcd/Ot;->FH([II)Z

    move-result v2

    if-eqz v2, :cond_62

    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    :goto_34
    if-lt v2, v4, :cond_40

    iget-object v3, p0, Labcd/Gm;->v5:[Labcd/au;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    :cond_40
    const/4 v2, -0x1

    :goto_41
    if-nez v3, :cond_4c

    invoke-static {v9}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v2

    sget-object v3, Labcd/Jm;->FH:Labcd/Jm;

    move-object v6, v2

    move-object v7, v3

    goto :goto_56

    :cond_4c
    iget-object v5, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    aget-object v2, v5, v2

    if-nez v2, :cond_54

    sget-object v2, Labcd/Jm;->FH:Labcd/Jm;

    :cond_54
    move-object v7, v2

    move-object v6, v3

    :goto_56
    new-instance v10, Labcd/Hm;

    move-object v2, v10

    move v3, v4

    move v5, v9

    invoke-direct/range {v2 .. v7}, Labcd/Hm;-><init>(IIILabcd/au;Labcd/Jm;)V

    aput-object v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    :cond_62
    move v4, v9

    goto :goto_f
.end method

.method public static j6(Labcd/Mm;)Labcd/Im;
    .registers 2

    new-instance v0, Labcd/Gm;

    invoke-direct {v0, p0}, Labcd/Gm;-><init>(Labcd/Mm;)V

    invoke-direct {v0}, Labcd/Gm;->DW()V

    invoke-direct {v0}, Labcd/Gm;->FH()Labcd/Im;

    move-result-object p0

    return-object p0
.end method

.method private j6(IIZ)V
    .registers 5

    iget-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {v0, p1}, Labcd/Ot;->Hw([II)V

    if-eqz p3, :cond_d

    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Labcd/Gm;->j6(IZ)V

    goto :goto_13

    :cond_d
    iget-object p3, p0, Labcd/Gm;->Hw:[I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Labcd/Ot;->Hw([II)V

    :goto_13
    return-void
.end method

.method private j6(IZ)V
    .registers 4

    iget-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {v0, p1}, Labcd/Ot;->FH([II)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/Gm;->DW:[I

    invoke-static {v0, p1}, Labcd/Ot;->Hw([II)V

    :cond_d
    if-eqz p2, :cond_14

    iget-object p2, p0, Labcd/Gm;->Hw:[I

    invoke-static {p2, p1}, Labcd/Ot;->Hw([II)V

    :cond_14
    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Gm;->VH:I

    return v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/Gm;->VH:I

    return-void
.end method

.method public j6(III)V
    .registers 4

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    return-void
.end method

.method public j6(IIII)V
    .registers 7

    const/16 v0, 0xa7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-direct {p0, p2, v1}, Labcd/Gm;->j6(IZ)V

    :goto_d
    add-int p1, p2, p3

    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p1, v1}, Labcd/Gm;->j6(IZ)V

    iget-object p3, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-static {p1, p4}, Labcd/au;->DW(II)Labcd/au;

    move-result-object p1

    aput-object p1, p3, p2

    goto :goto_2a

    :cond_1e
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    iget-object p1, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-static {p4}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_2a
    invoke-direct {p0, p4, v1}, Labcd/Gm;->j6(IZ)V

    return-void
.end method

.method public j6(IIIILabcd/Qs;I)V
    .registers 7

    const/16 p4, 0xa9

    if-ne p1, p4, :cond_f

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    iget-object p1, p0, Labcd/Gm;->v5:[Labcd/au;

    sget-object p3, Labcd/au;->DW:Labcd/au;

    aput-object p3, p1, p2

    goto :goto_13

    :cond_f
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    :goto_13
    return-void
.end method

.method public j6(IIILabcd/Qs;)V
    .registers 7

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_41

    const/16 v0, 0x70

    if-eq p1, v0, :cond_41

    const/16 p4, 0xac

    const/4 v0, 0x0

    if-eq p1, p4, :cond_37

    const/16 p4, 0xb1

    if-eq p1, p4, :cond_37

    const/16 p4, 0xbe

    if-eq p1, p4, :cond_33

    const/16 p4, 0xbf

    if-eq p1, p4, :cond_2c

    const/16 p4, 0xc2

    if-eq p1, p4, :cond_33

    const/16 p4, 0xc3

    if-eq p1, p4, :cond_33

    packed-switch p1, :pswitch_data_50

    packed-switch p1, :pswitch_data_64

    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    goto :goto_4f

    :cond_2c
    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->DW(IIZ)V

    goto :goto_4f

    :cond_33
    :pswitch_33  #0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    goto :goto_4c

    :cond_37
    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    iget-object p1, p0, Labcd/Gm;->v5:[Labcd/au;

    sget-object p3, Labcd/au;->DW:Labcd/au;

    aput-object p3, p1, p2

    goto :goto_4f

    :cond_41
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    sget-object p1, Labcd/Qs;->VH:Labcd/Qs;

    if-eq p4, p1, :cond_4c

    sget-object p1, Labcd/Qs;->gn:Labcd/Qs;

    if-ne p4, p1, :cond_4f

    :cond_4c
    :goto_4c
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->DW(IIZ)V

    :cond_4f
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x2e
        :pswitch_33  #0000002e
        :pswitch_33  #0000002f
        :pswitch_33  #00000030
        :pswitch_33  #00000031
        :pswitch_33  #00000032
        :pswitch_33  #00000033
        :pswitch_33  #00000034
        :pswitch_33  #00000035
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x4f
        :pswitch_33  #0000004f
        :pswitch_33  #00000050
        :pswitch_33  #00000051
        :pswitch_33  #00000052
        :pswitch_33  #00000053
        :pswitch_33  #00000054
        :pswitch_33  #00000055
        :pswitch_33  #00000056
    .end packed-switch
.end method

.method public j6(IIILabcd/cn;I)V
    .registers 7

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    invoke-virtual {p4}, Labcd/cn;->lg()I

    move-result p3

    const/4 p5, 0x1

    invoke-direct {p0, p3, p5}, Labcd/Gm;->j6(IZ)V

    invoke-virtual {p4}, Labcd/cn;->size()I

    move-result p3

    :goto_10
    if-ge p1, p3, :cond_1c

    invoke-virtual {p4, p1}, Labcd/cn;->DW(I)I

    move-result v0

    invoke-direct {p0, v0, p5}, Labcd/Gm;->j6(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_1c
    iget-object p1, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-virtual {p4}, Labcd/cn;->rN()Labcd/au;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method

.method public j6(IIILabcd/ms;I)V
    .registers 6

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->j6(IIZ)V

    instance-of p5, p4, Labcd/Fs;

    if-nez p5, :cond_10

    instance-of p5, p4, Labcd/Ks;

    if-nez p5, :cond_10

    instance-of p4, p4, Labcd/Js;

    if-eqz p4, :cond_13

    :cond_10
    invoke-direct {p0, p2, p3, p1}, Labcd/Gm;->DW(IIZ)V

    :cond_13
    return-void
.end method

.method public j6(IILabcd/Ks;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Labcd/Ks;",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Gm;->DW(IIZ)V

    return-void
.end method
