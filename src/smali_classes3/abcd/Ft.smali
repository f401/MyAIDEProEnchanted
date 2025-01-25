.class public Labcd/Ft;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/bu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_19

    iget-object v1, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-static {p1}, Labcd/st;->DW(I)Labcd/bu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method

.method private j6(I)V
    .registers 5

    iget-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_b
    if-ge v0, p1, :cond_19

    iget-object v1, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-static {p1}, Labcd/st;->DW(I)Labcd/bu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method


# virtual methods
.method public j6(II)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Labcd/Ft;->j6(I)V

    iget-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bu;

    invoke-interface {v0, p2}, Labcd/bu;->add(I)V

    iget-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/bu;

    invoke-interface {p2, p1}, Labcd/bu;->add(I)V

    return-void
.end method

.method public j6(ILabcd/bu;)V
    .registers 4

    iget-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Labcd/Ft;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/bu;

    invoke-interface {p2, p1}, Labcd/bu;->j6(Labcd/bu;)V

    :cond_13
    return-void
.end method
