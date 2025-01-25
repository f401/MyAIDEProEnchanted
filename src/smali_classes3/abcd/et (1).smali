.class public Labcd/et;
.super Labcd/Ts;


# instance fields
.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Nt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/Ft;


# direct methods
.method public constructor <init>(Labcd/Ft;I)V
    .registers 3

    invoke-direct {p0, p2}, Labcd/Ts;-><init>(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    iput-object p1, p0, Labcd/et;->Hw:Labcd/Ft;

    return-void
.end method

.method private j6(II)V
    .registers 6

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_7
    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1a

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    new-instance v2, Labcd/Nt;

    invoke-direct {v2, v1}, Labcd/Nt;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1a
    iget-object v0, p0, Labcd/et;->Hw:Labcd/Ft;

    iget-object v1, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/bu;

    invoke-virtual {v0, p2, p1}, Labcd/Ft;->j6(ILabcd/bu;)V

    return-void
.end method


# virtual methods
.method public DW(III)Z
    .registers 7

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bu;

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1d

    invoke-interface {v0, p1}, Labcd/bu;->j6(I)Z

    move-result p1

    return p1

    :cond_1d
    invoke-interface {v0, p1}, Labcd/bu;->j6(I)Z

    move-result v0

    if-nez v0, :cond_2b

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Labcd/et;->DW(III)Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public j6(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Labcd/Ts;->j6(III)V

    invoke-direct {p0, p2, p1}, Labcd/et;->j6(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2, p1}, Labcd/et;->j6(II)V

    :cond_e
    return-void
.end method

.method public j6(Labcd/bs;I)Z
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Labcd/et;->DW(III)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/cs;II)Z
    .registers 10

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2d

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/Ts;->j6(I)I

    move-result v4

    if-eq v4, p2, :cond_2b

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_21

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2b

    :cond_21
    if-ne p3, v5, :cond_28

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1

    :cond_2d
    return v1
.end method
