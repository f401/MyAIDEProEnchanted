.class public Lcom/a/b/f/a/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_b
    if-lt v0, p1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/a/b/f/ai;->b(I)Lcom/a/b/g/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_b
    if-lt v0, p1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/a/b/f/ai;->b(I)Lcom/a/b/g/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public a(II)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/f/a/i;->a(I)V

    iget-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/o;

    invoke-interface {v0, p2}, Lcom/a/b/g/o;->a(I)V

    iget-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/o;

    invoke-interface {v0, p1}, Lcom/a/b/g/o;->a(I)V

    return-void
.end method

.method public a(ILcom/a/b/g/o;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/a/b/f/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/o;

    invoke-interface {p2, v0}, Lcom/a/b/g/o;->a(Lcom/a/b/g/o;)V

    :cond_13
    return-void
.end method
