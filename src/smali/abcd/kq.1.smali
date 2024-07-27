.class public Labcd/kq;
.super Ljava/lang/Object;


# instance fields
.field protected final j6:Labcd/St;


# direct methods
.method public constructor <init>(Labcd/St;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/kq;->j6:Labcd/St;

    return-void
.end method

.method public constructor <init>(Labcd/jq;)V
    .registers 3

    invoke-virtual {p1}, Labcd/jq;->Hw()Labcd/St;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/kq;-><init>(Labcd/St;)V

    return-void
.end method

.method private j6(Labcd/St;I)I
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-interface {p1}, Labcd/St;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v0}, Labcd/eu;->DW(Labcd/St;)I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/kq;->FH(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/kq;->FH()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected DW(I)V
    .registers 2

    return-void
.end method

.method protected DW(II)V
    .registers 3

    return-void
.end method

.method public final FH()V
    .registers 6

    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-interface {v0}, Labcd/St;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x1f

    and-int/lit16 v2, v0, 0xe0

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v2, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    const/16 v4, 0x11

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Labcd/kq;->v5(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Labcd/kq;->Zo(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Labcd/kq;->DW(I)V

    invoke-virtual {p0}, Labcd/kq;->j6()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Labcd/kq;->Hw(I)V

    invoke-virtual {p0}, Labcd/kq;->DW()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->FH(II)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->DW(II)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->v5(II)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->Hw(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Labcd/kq;->j6(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected FH(I)V
    .registers 2

    return-void
.end method

.method protected FH(II)V
    .registers 3

    return-void
.end method

.method protected Hw(I)V
    .registers 2

    return-void
.end method

.method protected Hw(II)V
    .registers 3

    return-void
.end method

.method protected Zo(I)V
    .registers 2

    return-void
.end method

.method public final j6()V
    .registers 4

    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v0}, Labcd/eu;->DW(Labcd/St;)I

    move-result v0

    iget-object v1, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v1}, Labcd/eu;->DW(Labcd/St;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Labcd/kq;->j6(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v2}, Labcd/eu;->DW(Labcd/St;)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/kq;->j6(I)V

    invoke-virtual {p0}, Labcd/kq;->FH()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j6(I)V
    .registers 2

    return-void
.end method

.method protected j6(II)V
    .registers 3

    return-void
.end method

.method protected j6(IIII)V
    .registers 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Labcd/kq;->j6:Labcd/St;

    invoke-interface {v1}, Labcd/St;->readByte()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v5(I)V
    .registers 2

    return-void
.end method

.method protected v5(II)V
    .registers 3

    return-void
.end method
