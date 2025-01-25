.class public abstract Lcom/a/b/e/c/x;
.super Lcom/a/b/e/c/ag;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:Lcom/a/b/e/c/aa;


# direct methods
.method constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V
    .registers 5

    invoke-direct {p0}, Lcom/a/b/e/c/ag;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    iput-object p2, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    return-void
.end method


# virtual methods
.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/x;

    iget-object v0, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    iget-object v1, p1, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ae;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v0

    iget-object v1, p1, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_c
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    check-cast p1, Lcom/a/b/e/c/x;

    iget-object v1, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    iget-object v2, p1, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    iget-object v2, p1, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/aa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final n()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/x;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public final o()Lcom/a/b/e/c/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/x;->b:Lcom/a/b/e/c/aa;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/c/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/c/x;->d()Ljava/lang/String;

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
