.class public final Lcom/a/b/c/c/u;
.super Ljava/lang/Object;


# instance fields
.field a:[B


# virtual methods
.method public a(I)[B
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/c/u;->a:[B

    array-length v0, v0

    if-ge v0, p1, :cond_2e

    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DexFile storage too small  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/c/c/u;->a:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/a/b/c/c/u;->a:[B

    :cond_2e
    iget-object v0, p0, Lcom/a/b/c/c/u;->a:[B

    return-object v0
.end method
