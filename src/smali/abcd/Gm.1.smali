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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {p1}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Lm;->FH()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v1

    iput-object v1, p0, Labcd/Gm;->DW:[I

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v1

    iput-object v1, p0, Labcd/Gm;->FH:[I

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v1

    iput-object v1, p0, Labcd/Gm;->Hw:[I

    new-array v1, v0, [Labcd/au;

    iput-object v1, p0, Labcd/Gm;->v5:[Labcd/au;

    new-array v0, v0, [Labcd/Jm;

    iput-object v0, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    const/4 v0, -0x1

    iput v0, p0, Labcd/Gm;->VH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW()V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v2

    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->VH()Labcd/Jm;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    iget-object v0, p0, Labcd/Gm;->DW:[I

    invoke-static {v0, v1}, Labcd/Ot;->Hw([II)V

    iget-object v0, p0, Labcd/Gm;->Hw:[I

    invoke-static {v0, v1}, Labcd/Ot;->Hw([II)V

    :cond_0
    iget-object v0, p0, Labcd/Gm;->DW:[I

    invoke-static {v0}, Labcd/Ot;->FH([I)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Labcd/Gm;->DW:[I

    invoke-virtual {v2, v0, p0}, Labcd/Lm;->j6([ILabcd/Lm$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Jm$a;->Hw()I

    move-result v6

    invoke-virtual {v5}, Labcd/Jm$a;->j6()I

    move-result v7

    iget-object v8, p0, Labcd/Gm;->FH:[I

    invoke-static {v8, v6, v7}, Labcd/Ot;->j6([III)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Labcd/Gm;->Hw:[I

    invoke-static {v8, v6}, Labcd/Ot;->Hw([II)V

    iget-object v6, p0, Labcd/Gm;->Hw:[I

    invoke-static {v6, v7}, Labcd/Ot;->Hw([II)V

    invoke-virtual {v5}, Labcd/Jm$a;->FH()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Labcd/Gm;->j6(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/an;

    const-string v2, "flow of control falls off end of method"

    invoke-direct {v1, v2, v0}, Labcd/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method private DW(IIZ)V
    .registers 7

    add-int v0, p2, p1

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Labcd/Gm;->j6(IZ)V

    :cond_0
    iget-object v1, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v1}, Labcd/Mm;->VH()Labcd/Jm;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/Jm;->Hw(I)Labcd/Jm;

    move-result-object v1

    iget-object v2, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    aput-object v1, v2, p1

    iget-object v2, p0, Labcd/Gm;->v5:[Labcd/au;

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Labcd/Jm;->v5(I)Labcd/au;

    move-result-object v0

    aput-object v0, v2, p1

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private FH()Labcd/Im;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Labcd/Gm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->gn()Labcd/Lm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Lm;->FH()I

    move-result v0

    new-array v8, v0, [Labcd/Hm;

    move v1, v6

    move v7, v6

    :goto_0
    iget-object v0, p0, Labcd/Gm;->Hw:[I

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Labcd/Ot;->DW([II)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Labcd/Im;

    invoke-direct {v0, v7}, Labcd/Im;-><init>(I)V

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v1, v8, v6

    invoke-virtual {v0, v6, v1}, Labcd/Im;->j6(ILabcd/Hm;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {v0, v1}, Labcd/Ot;->FH([II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-lt v0, v1, :cond_3

    iget-object v2, p0, Labcd/Gm;->v5:[Labcd/au;

    aget-object v4, v2, v0

    if-eqz v4, :cond_2

    :goto_3
    if-nez v4, :cond_4

    invoke-static {v3}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v4

    sget-object v5, Labcd/Jm;->FH:Labcd/Jm;

    :cond_1
    :goto_4
    new-instance v0, Labcd/Hm;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Labcd/Hm;-><init>(IIILabcd/au;Labcd/Jm;)V

    aput-object v0, v8, v7

    add-int/lit8 v0, v7, 0x1

    :goto_5
    move v1, v3

    move v7, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Labcd/Gm;->Zo:[Labcd/Jm;

    aget-object v5, v2, v0

    if-nez v5, :cond_1

    sget-object v5, Labcd/Jm;->FH:Labcd/Jm;

    goto :goto_4

    :cond_5
    return-object v0

    :cond_6
    move v0, v7

    goto :goto_5
.end method

.method public static j6(Labcd/Mm;)Labcd/Im;
    .registers 2

    new-instance v0, Labcd/Gm;

    invoke-direct {v0, p0}, Labcd/Gm;-><init>(Labcd/Mm;)V

    invoke-direct {v0}, Labcd/Gm;->DW()V

    invoke-direct {v0}, Labcd/Gm;->FH()Labcd/Im;

    move-result-object v0

    return-object v0
.end method

.method private j6(IIZ)V
    .registers 6

    iget-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {v0, p1}, Labcd/Ot;->Hw([II)V

    if-eqz p3, :cond_0

    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Labcd/Gm;->j6(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/Gm;->Hw:[I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Labcd/Ot;->Hw([II)V

    goto :goto_0
.end method

.method private j6(IZ)V
    .registers 4

    iget-object v0, p0, Labcd/Gm;->FH:[I

    invoke-static {v0, p1}, Labcd/Ot;->FH([II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Gm;->DW:[I

    invoke-static {v0, p1}, Labcd/Ot;->Hw([II)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Labcd/Gm;->Hw:[I

    invoke-static {v0, p1}, Labcd/Ot;->Hw([II)V

    :cond_1
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
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    return-void
.end method

.method public j6(IIII)V
    .registers 8

    const/4 v2, 0x1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    :goto_0
    add-int v0, p2, p3

    invoke-direct {p0, p2, p3, v2}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, v0, v2}, Labcd/Gm;->j6(IZ)V

    iget-object v1, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-static {v0, p4}, Labcd/au;->DW(II)Labcd/au;

    move-result-object v0

    aput-object v0, v1, p2

    :goto_1
    invoke-direct {p0, p4, v2}, Labcd/Gm;->j6(IZ)V

    return-void

    :cond_0
    invoke-direct {p0, p2, v2}, Labcd/Gm;->j6(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    iget-object v0, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-static {p4}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_1
.end method

.method public j6(IIIILabcd/Qs;I)V
    .registers 9

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    iget-object v0, p0, Labcd/Gm;->v5:[Labcd/au;

    sget-object v1, Labcd/au;->DW:Labcd/au;

    aput-object v1, v0, p2

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    goto :goto_0
.end method

.method public j6(IIILabcd/Qs;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x70

    if-eq p1, v0, :cond_4

    const/16 v0, 0xac

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p3, v2}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p2, p3, v2}, Labcd/Gm;->DW(IIZ)V

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->DW(IIZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3, v2}, Labcd/Gm;->j6(IIZ)V

    iget-object v0, p0, Labcd/Gm;->v5:[Labcd/au;

    sget-object v1, Labcd/au;->DW:Labcd/au;

    aput-object v1, v0, p2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    if-eq p4, v0, :cond_5

    sget-object v0, Labcd/Qs;->gn:Labcd/Qs;

    if-ne p4, v0, :cond_0

    :cond_5
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->DW(IIZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public j6(IIILabcd/cn;I)V
    .registers 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Labcd/Gm;->j6(IIZ)V

    invoke-virtual {p4}, Labcd/cn;->lg()I

    move-result v1

    invoke-direct {p0, v1, v3}, Labcd/Gm;->j6(IZ)V

    invoke-virtual {p4}, Labcd/cn;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p4, v0}, Labcd/cn;->DW(I)I

    move-result v2

    invoke-direct {p0, v2, v3}, Labcd/Gm;->j6(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/Gm;->v5:[Labcd/au;

    invoke-virtual {p4}, Labcd/cn;->rN()Labcd/au;

    move-result-object v1

    aput-object v1, v0, p2

    return-void
.end method

.method public j6(IIILabcd/ms;I)V
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->j6(IIZ)V

    instance-of v0, p4, Labcd/Fs;

    if-nez v0, :cond_0

    instance-of v0, p4, Labcd/Ks;

    if-nez v0, :cond_0

    instance-of v0, p4, Labcd/Js;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p2, p3, v1}, Labcd/Gm;->DW(IIZ)V

    :cond_1
    return-void
.end method

.method public j6(IILabcd/Ks;Ljava/util/ArrayList;)V
    .registers 6
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

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Labcd/Gm;->j6(IIZ)V

    invoke-direct {p0, p1, p2, v0}, Labcd/Gm;->DW(IIZ)V

    return-void
.end method
