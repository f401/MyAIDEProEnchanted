.class public final Lcom/a/b/e/c/q;
.super Lcom/a/b/e/c/f;


# instance fields
.field private a:Lcom/a/b/e/c/z;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/e/c/f;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/e/c/q;->a:Lcom/a/b/e/c/z;

    return-void
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "ifaceMethod"

    return-object v0
.end method

.method public m()Lcom/a/b/e/c/z;
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/q;->a:Lcom/a/b/e/c/z;

    if-nez v0, :cond_13

    new-instance v0, Lcom/a/b/e/c/z;

    invoke-virtual {p0}, Lcom/a/b/e/c/q;->n()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/c/q;->o()Lcom/a/b/e/c/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/c/z;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    iput-object v0, p0, Lcom/a/b/e/c/q;->a:Lcom/a/b/e/c/z;

    :cond_13
    iget-object v0, p0, Lcom/a/b/e/c/q;->a:Lcom/a/b/e/c/z;

    return-object v0
.end method
