.class public final Lcom/a/b/e/c/m;
.super Lcom/a/b/e/c/x;


# instance fields
.field private a:Lcom/a/b/e/c/n;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/aa;)V
    .registers 4

    new-instance v0, Lcom/a/b/e/c/ae;

    invoke-virtual {p1}, Lcom/a/b/e/c/aa;->c()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    invoke-direct {p0, v0, p1}, Lcom/a/b/e/c/x;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/e/c/m;->a:Lcom/a/b/e/c/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/m;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "enum"

    return-object v0
.end method

.method public i()Lcom/a/b/e/c/n;
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/m;->a:Lcom/a/b/e/c/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/b/e/c/n;

    invoke-virtual {p0}, Lcom/a/b/e/c/m;->n()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/c/m;->o()Lcom/a/b/e/c/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/c/n;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    iput-object v0, p0, Lcom/a/b/e/c/m;->a:Lcom/a/b/e/c/n;

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/c/m;->a:Lcom/a/b/e/c/n;

    return-object v0
.end method
