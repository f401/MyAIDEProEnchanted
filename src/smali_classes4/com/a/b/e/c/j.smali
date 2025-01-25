.class public Lcom/a/b/e/c/j;
.super Lcom/a/b/e/c/a;


# instance fields
.field private final a:Lcom/a/b/e/c/r;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/a/b/e/c/r;I)V
    .registers 5

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invokeDynamic == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    iput p2, p0, Lcom/a/b/e/c/j;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    invoke-virtual {v0}, Lcom/a/b/e/c/r;->f()Lcom/a/b/e/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/j;

    iget-object v0, p0, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    iget-object v1, p1, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/r;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lcom/a/b/e/c/j;->b:I

    iget v1, p1, Lcom/a/b/e/c/j;->b:I

    sub-int/2addr v0, v1

    goto :goto_c
.end method

.method public b()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    invoke-virtual {v0}, Lcom/a/b/e/c/r;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/b/e/c/i;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/j;->a:Lcom/a/b/e/c/r;

    invoke-virtual {v0}, Lcom/a/b/e/c/r;->k()Lcom/a/b/e/c/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/j;->c()Lcom/a/b/e/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "CallSiteRef"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/j;->c()Lcom/a/b/e/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
