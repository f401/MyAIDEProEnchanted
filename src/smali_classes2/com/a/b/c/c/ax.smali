.class public abstract Lcom/a/b/c/c/ax;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/a/b/c/c/t;

.field private final c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3}, Lcom/a/b/c/c/ax;->a(I)V

    iput-object p1, p0, Lcom/a/b/c/c/ax;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/c/c/ax;->b:Lcom/a/b/c/c/t;

    iput p3, p0, Lcom/a/b/c/c/ax;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/c/c/ax;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/c/c/ax;->e:Z

    return-void
.end method

.method public static a(I)V
    .registers 3

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/a/b/c/c/ag;)I
.end method

.method protected abstract a_(Lcom/a/b/g/a;)V
.end method

.method public final b(I)I
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/ax;->d:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/b/c/c/ax;->c:I

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v1, v0, -0x1

    add-int/2addr v0, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/c/c/ax;->d:I

    return v0
.end method

.method public abstract b()Ljava/util/Collection;
.end method

.method public final c(I)I
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relative < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/ax;->d:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/b/c/c/ax;->d:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract c()V
.end method

.method public final c(Lcom/a/b/g/a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/c/ax;->j()V

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/ax;->d(Lcom/a/b/g/a;)V

    invoke-interface {p1}, Lcom/a/b/g/a;->g()I

    move-result v0

    iget v1, p0, Lcom/a/b/c/c/ax;->d:I

    if-gez v1, :cond_2

    iput v0, p0, Lcom/a/b/c/c/ax;->d:I

    :cond_0
    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/b/c/c/ax;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/c/c/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/a/b/c/c/ax;->a_(Lcom/a/b/g/a;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/a/b/c/c/ax;->d:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alignment mismatch: for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/a/b/c/c/ax;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v0, :cond_1

    const-string v0, "\n"

    invoke-interface {p1, v2, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final d(Lcom/a/b/g/a;)V
    .registers 3

    iget v0, p0, Lcom/a/b/c/c/ax;->c:I

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->h(I)V

    return-void
.end method

.method public final f()Lcom/a/b/c/c/t;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/ax;->b:Lcom/a/b/c/c/t;

    return-object v0
.end method

.method public abstract f_()I
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/c/ax;->c:I

    return v0
.end method

.method public final h()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/c/ax;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/ax;->d:I

    return v0
.end method

.method public final i()V
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/c/ax;->k()V

    invoke-virtual {p0}, Lcom/a/b/c/c/ax;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/c/c/ax;->e:Z

    return-void
.end method

.method protected final j()V
    .registers 3

    iget-boolean v0, p0, Lcom/a/b/c/c/ax;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final k()V
    .registers 3

    iget-boolean v0, p0, Lcom/a/b/c/c/ax;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
