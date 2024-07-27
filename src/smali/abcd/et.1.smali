.class public Labcd/et;
.super Labcd/Ts;


# instance fields
.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Nt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/Ft;


# direct methods
.method public constructor <init>(Labcd/Ft;I)V
    .registers 4

    invoke-direct {p0, p2}, Labcd/Ts;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    iput-object p1, p0, Labcd/et;->Hw:Labcd/Ft;

    return-void
.end method

.method private j6(II)V
    .registers 6

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    new-instance v2, Labcd/Nt;

    invoke-direct {v2, v1}, Labcd/Nt;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Labcd/et;->Hw:Labcd/Ft;

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bu;

    invoke-virtual {v1, p2, v0}, Labcd/Ft;->j6(ILabcd/bu;)V

    return-void
.end method


# virtual methods
.method public DW(III)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Labcd/et;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bu;

    if-eqz v0, :cond_0

    if-ne p3, v2, :cond_2

    invoke-interface {v0, p1}, Labcd/bu;->j6(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Labcd/bu;->j6(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v0, v3}, Labcd/et;->DW(III)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public j6(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Labcd/Ts;->j6(III)V

    invoke-direct {p0, p2, p1}, Labcd/et;->j6(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p1}, Labcd/et;->j6(II)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/bs;I)Z
    .registers 5

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Labcd/et;->DW(III)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/cs;II)Z
    .registers 10

    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/Ts;->j6(I)I

    move-result v4

    if-eq v4, p2, :cond_1

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_1

    :cond_0
    if-ne p3, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
