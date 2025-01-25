.class public La/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)La/e;
    .registers 3

    iget-object v0, p0, La/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/e;

    return-object v0
.end method

.method public a()Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, La/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, La/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/e;

    invoke-virtual {v0}, La/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a(La/e;)Z
    .registers 3

    iget-object v0, p0, La/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, La/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
