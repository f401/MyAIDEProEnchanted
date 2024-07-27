.class public Lcom/a/b/f/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:Ljava/util/ArrayList;

.field private final c:[Lcom/a/b/f/h;


# direct methods
.method public constructor <init>(Lcom/a/b/f/ap;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/g;->a:Lcom/a/b/f/ap;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/a/b/f/h;

    iput-object v0, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    new-instance v3, Lcom/a/b/f/h;

    invoke-direct {v3}, Lcom/a/b/f/h;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    aget-object v0, v0, v2

    iget v1, v0, Lcom/a/b/f/h;->b:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    iget v0, v0, Lcom/a/b/f/h;->b:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v1, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/aj;)V

    goto :goto_1
.end method

.method private c()V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v1, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    aget-object v5, v1, v2

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_1
    if-gez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    iget v7, v5, Lcom/a/b/f/h;->b:I

    if-ne v0, v7, :cond_4

    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    iget-object v7, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    aget-object v0, v7, v0

    iget-object v7, v0, Lcom/a/b/f/h;->a:Lcom/a/b/g/o;

    invoke-interface {v7, v2}, Lcom/a/b/g/o;->b(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/a/b/f/h;->a:Lcom/a/b/g/o;

    invoke-interface {v7, v2}, Lcom/a/b/g/o;->a(I)V

    iget v0, v0, Lcom/a/b/f/h;->b:I

    goto :goto_2
.end method


# virtual methods
.method public a()[Lcom/a/b/f/h;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/f/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/f/g;->a:Lcom/a/b/f/ap;

    iget-object v3, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    invoke-static {v2, v3, v0}, Lcom/a/b/f/i;->a(Lcom/a/b/f/ap;[Lcom/a/b/f/h;Z)Lcom/a/b/f/i;

    invoke-direct {p0}, Lcom/a/b/f/g;->b()V

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/b/f/g;->c()V

    iget-object v0, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/a/b/f/g;->c:[Lcom/a/b/f/h;

    aget-object v2, v2, v0

    invoke-static {v1}, Lcom/a/b/f/ai;->a(I)Lcom/a/b/g/o;

    move-result-object v3

    iput-object v3, v2, Lcom/a/b/f/h;->a:Lcom/a/b/g/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
