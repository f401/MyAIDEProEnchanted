.class public Labcd/hG;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Labcd/fG;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/fG;",
            ">;"
        }
    .end annotation
.end field

.field j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Labcd/fG;

    invoke-virtual {p0, p1}, Labcd/hG;->j6(Labcd/fG;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/fG;

    if-eqz v0, :cond_f

    iget v0, p0, Labcd/hG;->j6:I

    check-cast p1, Labcd/fG;

    iget p1, p1, Labcd/fG;->Hw:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Labcd/hG;

    if-eqz v0, :cond_11

    check-cast p1, Labcd/hG;

    iget p1, p1, Labcd/hG;->j6:I

    iget v0, p0, Labcd/hG;->j6:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/fG;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/gG;

    iget-object v1, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/gG;-><init>(Labcd/hG;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public j6(Labcd/fG;)Z
    .registers 6

    iget v0, p0, Labcd/hG;->j6:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    return v3

    :cond_a
    or-int/2addr v0, v1

    iput v0, p0, Labcd/hG;->j6:I

    :goto_d
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_27

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/fG;

    iget v0, v0, Labcd/fG;->Hw:I

    iget v1, p1, Labcd/fG;->Hw:I

    if-lt v0, v1, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_27
    :goto_27
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Labcd/fG;

    iget v0, p0, Labcd/hG;->j6:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Labcd/hG;->j6:I

    :goto_11
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/fG;

    iget v0, v0, Labcd/fG;->Hw:I

    iget v1, p1, Labcd/fG;->Hw:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
