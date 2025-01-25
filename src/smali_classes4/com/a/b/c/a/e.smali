.class public final Lcom/a/b/c/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/a/b/c/a/e;->a:I

    iput v0, p0, Lcom/a/b/c/a/e;->b:I

    iput v0, p0, Lcom/a/b/c/a/e;->c:I

    iput v0, p0, Lcom/a/b/c/a/e;->d:I

    iput v0, p0, Lcom/a/b/c/a/e;->e:I

    iput v0, p0, Lcom/a/b/c/a/e;->f:I

    iput v0, p0, Lcom/a/b/c/a/e;->g:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/a/b/c/a/e;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/b/c/a/e;->g:I

    return-void
.end method

.method public a(Lcom/a/b/c/b/j;Lcom/a/b/c/b/j;)V
    .registers 6

    iget v0, p0, Lcom/a/b/c/a/e;->e:I

    invoke-virtual {p2}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/m;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/c/b/m;->e()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/c/a/e;->e:I

    iget v0, p0, Lcom/a/b/c/a/e;->d:I

    invoke-virtual {p2}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/m;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/c/b/m;->f()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/c/a/e;->d:I

    iget v0, p0, Lcom/a/b/c/a/e;->f:I

    invoke-virtual {p2}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/m;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/c/a/e;->f:I

    return-void
.end method

.method public a(Lcom/a/b/e/b/ab;Lcom/a/b/e/b/ab;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/d;->e()I

    move-result v1

    invoke-virtual {p2}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/d;->g()I

    move-result v2

    sub-int v0, v2, v0

    iget v3, p0, Lcom/a/b/c/a/e;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/a/b/c/a/e;->b:I

    iget v0, p0, Lcom/a/b/c/a/e;->a:I

    invoke-virtual {p2}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/d;->e()I

    move-result v3

    sub-int v1, v3, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/c/a/e;->a:I

    iget v0, p0, Lcom/a/b/c/a/e;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/b/c/a/e;->c:I

    return-void
.end method
