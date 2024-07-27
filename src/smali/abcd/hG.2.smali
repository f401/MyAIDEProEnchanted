.class public Labcd/hG;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Labcd/fG;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .registers 3

    check-cast p1, Labcd/fG;

    invoke-virtual {p0, p1}, Labcd/hG;->j6(Labcd/fG;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/fG;

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/hG;->j6:I

    check-cast p1, Labcd/fG;

    iget v1, p1, Labcd/fG;->Hw:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Labcd/hG;

    if-eqz v0, :cond_1

    check-cast p1, Labcd/hG;

    iget v0, p1, Labcd/hG;->j6:I

    iget v1, p0, Labcd/hG;->j6:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
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

    const/4 v0, 0x0

    iget v1, p0, Labcd/hG;->j6:I

    iget v2, p1, Labcd/fG;->Hw:I

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    or-int/2addr v1, v2

    iput v1, p0, Labcd/hG;->j6:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/fG;

    iget v0, v0, Labcd/fG;->Hw:I

    iget v2, p1, Labcd/fG;->Hw:I

    if-lt v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    check-cast p1, Labcd/fG;

    iget v1, p0, Labcd/hG;->j6:I

    iget v2, p1, Labcd/fG;->Hw:I

    and-int v3, v1, v2

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Labcd/hG;->j6:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/fG;

    iget v0, v0, Labcd/fG;->Hw:I

    iget v2, p1, Labcd/fG;->Hw:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/hG;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
