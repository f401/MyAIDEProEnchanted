.class Lcom/a/b/c/b/ah;
.super Lcom/a/b/c/b/ai;


# instance fields
.field final a:Lcom/a/b/c/b/af;

.field private final c:Lcom/a/b/e/b/q;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/af;Lcom/a/b/c/b/aa;Lcom/a/b/e/b/q;)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/c/b/ah;->a:Lcom/a/b/c/b/af;

    invoke-direct {p0, p1, p2}, Lcom/a/b/c/b/ai;-><init>(Lcom/a/b/c/b/af;Lcom/a/b/c/b/aa;)V

    iput-object p3, p0, Lcom/a/b/c/b/ah;->c:Lcom/a/b/e/b/q;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/ae;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/ae;)V

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/af;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/af;)V

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/ag;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/ag;)V

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/j;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/ah;->c:Lcom/a/b/e/b/q;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/q;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/a/b/c/b/x;

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/b/c/b/x;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;)V

    invoke-virtual {p0, v1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/c/b/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/e/b/r;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/r;)V

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/s;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/s;)V

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ah;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method
