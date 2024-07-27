.class public Lorg/a/a/a/a/be;
.super Lorg/a/a/a/a/bd;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/a/a/a/a/bd;-><init>()V

    iput v0, p0, Lorg/a/a/a/a/be;->b:I

    iput v0, p0, Lorg/a/a/a/a/be;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/a/be;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lorg/a/a/a/a/be;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/a/a/a/a/be;

    iget v2, p0, Lorg/a/a/a/a/be;->b:I

    iget v3, p1, Lorg/a/a/a/a/be;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/a/a/a/a/be;->c:I

    iget v3, p1, Lorg/a/a/a/a/be;->c:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/a/a/a/a/be;->d:Z

    iget-boolean v3, p1, Lorg/a/a/a/a/be;->d:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/be;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/be;->c:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v1

    iget-boolean v0, p0, Lorg/a/a/a/a/be;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/a/a/a/a/be;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/a/be;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
