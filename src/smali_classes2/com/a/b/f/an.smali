.class public abstract Lcom/a/b/f/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/a/b/f/aj;

.field private b:Lcom/a/b/e/b/u;


# direct methods
.method protected constructor <init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/a/b/f/an;->a:Lcom/a/b/f/aj;

    iput-object p1, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    return-void
.end method

.method public static a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;
    .registers 3

    new-instance v0, Lcom/a/b/f/z;

    invoke-direct {v0, p0, p1}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/b/e/b/o;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    :cond_1
    return-void
.end method

.method public abstract a(Lcom/a/b/f/ag;)V
.end method

.method public abstract a(Lcom/a/b/f/ao;)V
.end method

.method public abstract b()Lcom/a/b/e/b/x;
.end method

.method protected b(Lcom/a/b/e/b/u;)V
    .registers 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    return-void
.end method

.method public final b(Lcom/a/b/f/ag;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    iget-object v1, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {p1, v1}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    iget-object v1, p0, Lcom/a/b/f/an;->a:Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->o()Lcom/a/b/f/ap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)V

    invoke-virtual {p0, p1}, Lcom/a/b/f/an;->a(Lcom/a/b/f/ag;)V

    return-void
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract c()Lcom/a/b/e/b/j;
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/f/an;->n()Lcom/a/b/f/an;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcom/a/b/e/b/aa;
.end method

.method public abstract f()Lcom/a/b/e/b/j;
.end method

.method public g()Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public n()Lcom/a/b/f/an;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public o()Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/an;->b:Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public p()Lcom/a/b/f/aj;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/an;->a:Lcom/a/b/f/aj;

    return-object v0
.end method
