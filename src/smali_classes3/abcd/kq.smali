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
    .registers 2

    invoke-virtual {p1}, Labcd/jq;->Hw()Labcd/St;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/kq;-><init>(Labcd/St;)V

    return-void
.end method

.method private j6(Labcd/St;I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v0, p2, :cond_12

    invoke-interface {p1}, Labcd/St;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v0}, Labcd/eu;->DW(Labcd/St;)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/kq;->FH(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_12

    invoke-virtual {p0}, Labcd/kq;->FH()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
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

    if-eqz v1, :cond_68

    const/4 v4, 0x6

    if-eq v1, v4, :cond_68

    const/4 v4, 0x2

    if-eq v1, v4, :cond_68

    const/4 v4, 0x3

    if-eq v1, v4, :cond_68

    const/4 v4, 0x4

    if-eq v1, v4, :cond_68

    const/16 v4, 0x10

    if-eq v1, v4, :cond_68

    const/16 v4, 0x11

    if-eq v1, v4, :cond_68

    packed-switch v1, :pswitch_data_6c

    goto :goto_6b

    :pswitch_2a  #0x1f
    invoke-virtual {p0, v0}, Labcd/kq;->v5(I)V

    goto :goto_6b

    :pswitch_2e  #0x1e
    invoke-virtual {p0, v0}, Labcd/kq;->Zo(I)V

    goto :goto_6b

    :pswitch_32  #0x1d
    invoke-virtual {p0, v0}, Labcd/kq;->DW(I)V

    invoke-virtual {p0}, Labcd/kq;->j6()V

    goto :goto_6b

    :pswitch_39  #0x1c
    invoke-virtual {p0, v0}, Labcd/kq;->Hw(I)V

    invoke-virtual {p0}, Labcd/kq;->DW()V

    goto :goto_6b

    :pswitch_40  #0x1a
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->FH(II)V

    goto :goto_6b

    :pswitch_4a  #0x19, 0x1b
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->DW(II)V

    goto :goto_6b

    :pswitch_54  #0x18
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->v5(II)V

    goto :goto_6b

    :pswitch_5e  #0x17
    iget-object v0, p0, Labcd/kq;->j6:Labcd/St;

    invoke-direct {p0, v0, v3}, Labcd/kq;->j6(Labcd/St;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Labcd/kq;->Hw(II)V

    goto :goto_6b

    :cond_68
    invoke-virtual {p0, v0, v1, v2, v3}, Labcd/kq;->j6(IIII)V

    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x17
        :pswitch_5e  #00000017
        :pswitch_54  #00000018
        :pswitch_4a  #00000019
        :pswitch_40  #0000001a
        :pswitch_4a  #0000001b
        :pswitch_39  #0000001c
        :pswitch_32  #0000001d
        :pswitch_2e  #0000001e
        :pswitch_2a  #0000001f
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

    :goto_10
    if-ge v0, v1, :cond_21

    iget-object v2, p0, Labcd/kq;->j6:Labcd/St;

    invoke-static {v2}, Labcd/eu;->DW(Labcd/St;)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/kq;->j6(I)V

    invoke-virtual {p0}, Labcd/kq;->FH()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
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
    .registers 5

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p4, :cond_b

    iget-object p2, p0, Labcd/kq;->j6:Labcd/St;

    invoke-interface {p2}, Labcd/St;->readByte()B

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
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
