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
    .registers 6

    invoke-direct {p0}, Lc/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v1

    instance-of v2, v1, Lc/n;

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    check-cast v1, Lc/n;

    iput-object v1, p0, Lc/aq;->a:Lc/n;

    invoke-virtual {p0, p1, v3}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v1

    const/4 v0, 0x1

    :cond_16
    instance-of v2, v1, Lc/k;

    if-eqz v2, :cond_24

    check-cast v1, Lc/k;

    iput-object v1, p0, Lc/aq;->b:Lc/k;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v1

    :cond_24
    instance-of v2, v1, Lc/z;

    if-nez v2, :cond_30

    iput-object v1, p0, Lc/aq;->c:Lc/s;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/aq;->o(Lc/f;I)Lc/s;

    move-result-object v1

    :cond_30
    invoke-virtual {p1}, Lc/f;->d()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_69

    instance-of p1, v1, Lc/z;

    if-eqz p1, :cond_61

    check-cast v1, Lc/z;

    .line 1
    iget p1, v1, Lc/z;->a:I

    if-ltz p1, :cond_4d

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4d

    .line 2
    iput p1, p0, Lc/aq;->h:I

    .line 3
    invoke-virtual {v1}, Lc/z;->k()Lc/s;

    move-result-object p1

    iput-object p1, p0, Lc/aq;->k:Lc/s;

    return-void

    .line 4
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid encoding value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input vector too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 5

    instance-of v0, p1, Lc/aq;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    check-cast p1, Lc/aq;

    iget-object v0, p0, Lc/aq;->a:Lc/n;

    if-eqz v0, :cond_1b

    iget-object v2, p1, Lc/aq;->a:Lc/n;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    return v1

    :cond_1b
    iget-object v0, p0, Lc/aq;->b:Lc/k;

    if-eqz v0, :cond_2a

    iget-object v2, p1, Lc/aq;->b:Lc/k;

    if-eqz v2, :cond_29

    invoke-virtual {v2, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_29
    return v1

    :cond_2a
    iget-object v0, p0, Lc/aq;->c:Lc/s;

    if-eqz v0, :cond_39

    iget-object v2, p1, Lc/aq;->c:Lc/s;

    if-eqz v2, :cond_38

    invoke-virtual {v2, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_38
    return v1

    :cond_39
    iget-object v0, p0, Lc/aq;->k:Lc/s;

    iget-object p1, p1, Lc/aq;->k:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lc/aq;->a:Lc/n;

    const-string v2, "DER"

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_12
    iget-object v1, p0, Lc/aq;->b:Lc/k;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1d
    iget-object v1, p0, Lc/aq;->c:Lc/s;

    if-eqz v1, :cond_28

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_28
    new-instance v1, Lc/bf;

    iget v3, p0, Lc/aq;->h:I

    iget-object v4, p0, Lc/aq;->k:Lc/s;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3, v4}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v1, v2}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1, v0}, Lc/q;->f(II[B)V

    return-void
.end method

.method public final f()I
    .registers 2

    invoke-virtual {p0}, Lc/m;->m()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lc/aq;->a:Lc/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lc/n;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lc/aq;->b:Lc/k;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lc/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lc/aq;->c:Lc/s;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lc/s;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lc/aq;->k:Lc/s;

    invoke-virtual {v1}, Lc/s;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final o(Lc/f;I)Lc/s;
    .registers 4

    invoke-virtual {p1}, Lc/f;->d()I

    move-result v0

    if-le v0, p2, :cond_f

    invoke-virtual {p1, p2}, Lc/f;->c(I)Lc/e;

    move-result-object p1

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few objects in input vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
