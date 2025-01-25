.class public Lcom/a/b/e/c/d;
.super Lcom/a/b/e/c/a;


# instance fields
.field private final a:Lcom/a/b/e/c/e;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/e;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/a/b/e/c/e;->m()V

    iput-object p1, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    check-cast p1, Lcom/a/b/e/c/d;

    iget-object v1, p1, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/e;->a(Lcom/a/b/e/c/e;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/b/e/c/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    check-cast p1, Lcom/a/b/e/c/d;

    iget-object v1, p1, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "array"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    invoke-virtual {v0}, Lcom/a/b/e/c/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/a/b/e/c/d;->a:Lcom/a/b/e/c/e;

    const-string v1, "array{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/b/e/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
