.class public final Lcom/a/b/e/c/c;
.super Lcom/a/b/e/c/a;


# instance fields
.field private final a:Lcom/a/b/e/a/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/a/a;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/a/a;->m()V

    iput-object p1, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/a/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    check-cast p1, Lcom/a/b/e/c/c;

    iget-object v1, p1, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/a;->a(Lcom/a/b/e/a/a;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    check-cast p1, Lcom/a/b/e/c/c;

    iget-object v1, p1, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/c;->a:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
