.class Lcom/a/b/f/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/ap;


# direct methods
.method constructor <init>(Lcom/a/b/f/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/aq;->a:Lcom/a/b/f/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/aq;->a:Lcom/a/b/f/ap;

    invoke-static {v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ap;)[Lcom/a/b/f/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/aq;->a:Lcom/a/b/f/ap;

    invoke-static {v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ap;)[Lcom/a/b/f/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/a/b/f/aq;->a:Lcom/a/b/f/ap;

    invoke-static {v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ap;)[Lcom/a/b/f/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    aput-object p1, v0, v1

    :cond_16
    return-void
.end method
