.class public abstract Lcom/a/b/c/c/at;
.super Lcom/a/b/c/c/ag;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private b:I

.field private c:Lcom/a/b/c/c/ax;

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/a/b/c/c/ag;-><init>()V

    invoke-static {p1}, Lcom/a/b/c/c/ax;->a(I)V

    if-ge p2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/a/b/c/c/at;->a:I

    iput p2, p0, Lcom/a/b/c/c/at;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/at;->c:Lcom/a/b/c/c/ax;

    iput v1, p0, Lcom/a/b/c/c/at;->d:I

    return-void
.end method

.method public static b(Lcom/a/b/c/c/at;)I
    .registers 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/c/c/at;->e()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/at;->b:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/a/b/c/c/at;->b:I

    return-void
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 3

    return-void
.end method

.method public final a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 6

    iget v0, p0, Lcom/a/b/c/c/at;->a:I

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->h(I)V

    :try_start_0
    iget v0, p0, Lcom/a/b/c/c/at;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while writing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/a/b/c/c/at;->e()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->b(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/c/at;->a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    return-void
.end method

.method protected abstract a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
.end method

.method public final b(Lcom/a/b/c/c/ax;I)I
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addedTo == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/c/c/at;->c:Lcom/a/b/c/c/ax;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already written"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/a/b/c/c/at;->a:I

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v1, v0, -0x1

    add-int/2addr v0, p2

    and-int/2addr v0, v1

    iput-object p1, p0, Lcom/a/b/c/c/at;->c:Lcom/a/b/c/c/ax;

    iput v0, p0, Lcom/a/b/c/c/at;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/ax;I)V

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final c(Lcom/a/b/c/c/at;)I
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ah;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/at;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/at;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/at;->c(Lcom/a/b/c/c/at;)I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/c/at;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/at;->c:Lcom/a/b/c/c/ax;

    iget v1, p0, Lcom/a/b/c/c/at;->d:I

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ax;->c(I)I

    move-result v0

    return v0
.end method

.method public final e_()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/c/at;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/at;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    check-cast p1, Lcom/a/b/c/c/at;

    invoke-virtual {p0}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/at;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/c/at;->a:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/c/c/at;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
