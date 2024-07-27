.class Lcom/a/b/f/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/al;


# instance fields
.field final a:Lcom/a/b/f/a/m;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/a/b/f/a/m;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/f/a/n;->a:Lcom/a/b/f/a/m;

    iput-object p2, p0, Lcom/a/b/f/a/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    :goto_0
    if-gez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/a/b/f/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/f/aj;->k()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/a/b/f/aj;->a(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    goto :goto_0
.end method
