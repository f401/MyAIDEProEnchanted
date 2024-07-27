.class public final Lcom/a/b/e/c/ab;
.super Lcom/a/b/e/c/ag;


# instance fields
.field private final a:Lcom/a/b/e/d/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/b/e/c/ag;-><init>()V

    iput-object p1, p0, Lcom/a/b/e/c/ab;->a:Lcom/a/b/e/d/a;

    return-void
.end method

.method public static a(Lcom/a/b/e/c/ad;)Lcom/a/b/e/c/ab;
    .registers 3

    new-instance v0, Lcom/a/b/e/c/ab;

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ab;-><init>(Lcom/a/b/e/d/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->p:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/ab;

    iget-object v0, p0, Lcom/a/b/e/c/ab;->a:Lcom/a/b/e/d/a;

    invoke-virtual {p1}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/a;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ab;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/a/b/e/c/ab;

    invoke-virtual {p0}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/d/a;->equals(Ljava/lang/Object;)Z

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

    const-string v0, "proto"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ab;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ab;->a:Lcom/a/b/e/d/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/c/ab;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/c/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
