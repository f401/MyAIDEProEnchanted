.class public Lcom/a/b/f/r;
.super Lcom/a/b/f/a;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lcom/a/b/f/a/i;


# direct methods
.method public constructor <init>(Lcom/a/b/f/a/i;I)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/a/b/f/a;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/a/b/f/r;->b:Lcom/a/b/f/a/i;

    return-void
.end method

.method private a(II)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/a/b/f/r;->b:Lcom/a/b/f/a/i;

    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/o;

    invoke-virtual {v1, p2, v0}, Lcom/a/b/f/a/i;->a(ILcom/a/b/g/o;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/g/b;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Lcom/a/b/g/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/a/b/f/a;->a(III)V

    invoke-direct {p0, p2, p1}, Lcom/a/b/f/r;->a(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p1}, Lcom/a/b/f/r;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/e/b/u;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/a/b/f/r;->b(III)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/e/b/x;II)Z
    .registers 10

    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/a/b/f/r;->a(I)I

    move-result v4

    if-eq v4, p2, :cond_2

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->k()I

    move-result v3

    if-ne v3, v5, :cond_1

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2

    :cond_1
    if-ne p3, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(III)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/o;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    invoke-interface {v0, p1}, Lcom/a/b/g/o;->b(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Lcom/a/b/g/o;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/a/b/f/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
