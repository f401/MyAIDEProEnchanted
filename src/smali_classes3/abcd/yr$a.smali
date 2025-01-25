.class final Labcd/yr$a;
.super Labcd/kq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/Tt;

.field final FH:Labcd/yr;


# direct methods
.method public constructor <init>(Labcd/yr;Labcd/jq;Labcd/Tt;)V
    .registers 4

    iput-object p1, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-direct {p0, p2}, Labcd/kq;-><init>(Labcd/jq;)V

    iput-object p3, p0, Labcd/yr$a;->DW:Labcd/Tt;

    return-void
.end method

.method private Zo(II)V
    .registers 6

    const/16 v0, 0xff

    invoke-static {p2, v0}, Labcd/nu;->j6(II)I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_21

    :cond_a
    const v0, 0xffff

    invoke-static {p2, v0}, Labcd/nu;->j6(II)I

    move-result v0

    if-gtz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_21

    :cond_15
    const v0, 0xffffff

    invoke-static {p2, v0}, Labcd/nu;->j6(II)I

    move-result v0

    if-gtz v0, :cond_20

    const/4 v0, 0x3

    goto :goto_21

    :cond_20
    const/4 v0, 0x4

    :goto_21
    iget-object v1, p0, Labcd/yr$a;->DW:Labcd/Tt;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Labcd/Tt;->writeByte(I)V

    const/4 p1, 0x0

    :goto_2c
    if-ge p1, v0, :cond_3a

    iget-object v1, p0, Labcd/yr$a;->DW:Labcd/Tt;

    and-int/lit16 v2, p2, 0xff

    invoke-interface {v1, v2}, Labcd/Tt;->writeByte(I)V

    ushr-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    :cond_3a
    return-void
.end method

.method private j6(Labcd/St;Labcd/Tt;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    invoke-interface {p1}, Labcd/St;->readByte()B

    move-result v1

    invoke-interface {p2, v1}, Labcd/Tt;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method


# virtual methods
.method protected DW(I)V
    .registers 3

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-interface {v0, p1}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method protected DW(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v0, p2}, Labcd/yr;->Zo(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Labcd/yr$a;->Zo(II)V

    return-void
.end method

.method protected FH(I)V
    .registers 3

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-static {v0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    return-void
.end method

.method protected FH(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v0, p2}, Labcd/yr;->VH(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Labcd/yr$a;->Zo(II)V

    return-void
.end method

.method protected Hw(I)V
    .registers 3

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-interface {v0, p1}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method protected Hw(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v0, p2}, Labcd/yr;->u7(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Labcd/yr$a;->Zo(II)V

    return-void
.end method

.method protected Zo(I)V
    .registers 3

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-interface {v0, p1}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method protected j6(I)V
    .registers 4

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    iget-object v1, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v1, p1}, Labcd/yr;->u7(I)I

    move-result p1

    invoke-static {v0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    return-void
.end method

.method protected j6(II)V
    .registers 5

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    iget-object v1, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v1, p1}, Labcd/yr;->tp(I)I

    move-result p1

    invoke-static {v0, p1}, Labcd/eu;->DW(Labcd/Tt;I)V

    iget-object p1, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-static {p1, p2}, Labcd/eu;->DW(Labcd/Tt;I)V

    return-void
.end method

.method protected j6(IIII)V
    .registers 5

    iget-object p2, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-interface {p2, p1}, Labcd/Tt;->writeByte(I)V

    iget-object p1, p0, Labcd/kq;->j6:Labcd/St;

    iget-object p2, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-direct {p0, p1, p2, p4}, Labcd/yr$a;->j6(Labcd/St;Labcd/Tt;I)V

    return-void
.end method

.method protected v5(I)V
    .registers 3

    iget-object v0, p0, Labcd/yr$a;->DW:Labcd/Tt;

    invoke-interface {v0, p1}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method protected v5(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr$a;->FH:Labcd/yr;

    invoke-virtual {v0, p2}, Labcd/yr;->tp(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Labcd/yr$a;->Zo(II)V

    return-void
.end method
