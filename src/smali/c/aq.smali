.class public final Lc/aq;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public a:Lc/n;

.field public b:Lc/k;

.field public c:Lc/s;

.field public h:I

.field public k:Lc/s;


# direct methods
.method public constructor <init>(Lc/f;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-virtual {p0, p1, v2}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v0

    instance-of v3, v0, Lc/n;

    if-eqz v3, :cond_5

    check-cast v0, Lc/n;

    iput-object v0, p0, Lc/aq;->a:Lc/n;

    invoke-virtual {p0, p1, v1}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lc/k;

    if-eqz v2, :cond_0

    check-cast v0, Lc/k;

    iput-object v0, p0, Lc/aq;->b:Lc/k;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v0

    :cond_0
    instance-of v2, v0, Lc/z;

    if-nez v2, :cond_1

    iput-object v0, p0, Lc/aq;->c:Lc/s;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_4

    instance-of v1, v0, Lc/z;

    if-eqz v1, :cond_3

    check-cast v0, Lc/z;

    .line 1
    iget v1, v0, Lc/z;->a:I

    if-ltz v1, :cond_2

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 2
    iput v1, p0, Lc/aq;->h:I

    .line 3
    invoke-virtual {v0}, Lc/z;->k()Lc/s;

    move-result-object v0

    iput-object v0, p0, Lc/aq;->k:Lc/s;

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid encoding value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lc/aq;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Lc/aq;

    iget-object v1, p0, Lc/aq;->a:Lc/n;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lc/aq;->a:Lc/n;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lc/aq;->b:Lc/k;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lc/aq;->b:Lc/k;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lc/aq;->c:Lc/s;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lc/aq;->c:Lc/s;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p0, Lc/aq;->k:Lc/s;

    iget-object v1, p1, Lc/aq;->k:Lc/s;

    invoke-virtual {v0, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lc/aq;->a:Lc/n;

    if-eqz v1, :cond_0

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lc/aq;->b:Lc/k;

    if-eqz v1, :cond_1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lc/aq;->c:Lc/s;

    if-eqz v1, :cond_2

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    new-instance v1, Lc/bf;

    const/4 v2, 0x1

    iget v3, p0, Lc/aq;->h:I

    iget-object v4, p0, Lc/aq;->k:Lc/s;

    invoke-direct {v1, v2, v3, v4}, Lc/bf;-><init>(ZILc/e;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lc/q;->f(II[B)V

    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lc/m;->m()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lc/aq;->a:Lc/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/n;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lc/aq;->b:Lc/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lc/aq;->c:Lc/s;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/s;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lc/aq;->k:Lc/s;

    invoke-virtual {v1}, Lc/s;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o(Lc/f;I)Lc/s;
    .locals 2

    invoke-virtual {p1}, Lc/f;->d()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lc/f;->c(I)Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
