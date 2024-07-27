.class Lcom/a/b/a/b/ai;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/a/b/a/b/ab;

.field private b:Ljava/util/BitSet;

.field private c:Ljava/util/BitSet;

.field private d:I


# direct methods
.method constructor <init>(Lcom/a/b/a/b/ab;I)V
    .registers 5

    iput-object p1, p0, Lcom/a/b/a/b/ai;->a:Lcom/a/b/a/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/a/b/a/b/ai;->d:I

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ai;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Z)V

    return-void
.end method

.method constructor <init>(Lcom/a/b/a/b/ab;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/a/b/ai;-><init>(Lcom/a/b/a/b/ab;I)V

    invoke-virtual {p0, p3}, Lcom/a/b/a/b/ai;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/ai;)I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ai;->d:I

    return v0
.end method

.method static synthetic b(Lcom/a/b/a/b/ai;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ai;->c:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ai;->d:I

    return v0
.end method

.method a(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/ai;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method a(Lcom/a/b/a/b/q;[I)V
    .registers 11

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    :goto_0
    if-gez v6, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ai;->a:Lcom/a/b/a/b/ab;

    invoke-static {v0, v6}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    iget v0, p0, Lcom/a/b/a/b/ai;->d:I

    invoke-virtual {p1, v0, v6}, Lcom/a/b/a/b/q;->a(II)Lcom/a/b/a/b/q;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/a/b/a/b/ai;->a:Lcom/a/b/a/b/ab;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V

    :goto_1
    iget-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-static {p2, v6}, Lcom/a/b/g/d;->b([II)V

    goto :goto_1
.end method

.method b()Lcom/a/b/g/n;
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Lcom/a/b/g/n;

    iget-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/a/b/g/n;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-gez v0, :cond_0

    invoke-virtual {v1}, Lcom/a/b/g/n;->c_()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/a/b/a/b/ai;->a:Lcom/a/b/a/b/ab;

    invoke-static {v2, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->c(I)V

    iget-object v2, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0
.end method

.method b(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
