.class Lcom/a/b/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field a:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/f;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 4

    invoke-static {p1}, Lcom/a/b/f/e;->a(Lcom/a/b/f/an;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/f;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 4

    invoke-static {p1}, Lcom/a/b/f/e;->a(Lcom/a/b/f/an;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/f;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {p1}, Lcom/a/b/f/e;->a(Lcom/a/b/f/an;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/b/f/f;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method
