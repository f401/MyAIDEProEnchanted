.class public abstract Lorg/a/a/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/y;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/StringBuilder;

.field protected e:Lorg/a/a/a/ab;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/z;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/z;->j:Ljava/lang/String;

    sget-object v0, Lorg/a/a/a/m;->a:Lorg/a/a/a/ab;

    iput-object v0, p0, Lorg/a/a/a/z;->e:Lorg/a/a/a/ab;

    return-void
.end method

.method private i()V
    .registers 10

    const/4 v2, 0x0

    iget v0, p0, Lorg/a/a/a/z;->a:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/a/a/a/z;->c:I

    invoke-virtual {p0}, Lorg/a/a/a/z;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v2

    move v3, v2

    :goto_0
    if-lt v4, v6, :cond_0

    iput v0, p0, Lorg/a/a/a/z;->f:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/a/a/a/z;->g:I

    return-void

    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sparse-switch v7, :sswitch_data_0

    add-int/2addr v1, v8

    move v3, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v2

    goto :goto_1

    :sswitch_1
    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :sswitch_2
    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x85 -> :sswitch_0
        0x2028 -> :sswitch_0
        0x2029 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(I)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/a/z;->h:Ljava/lang/String;

    return-void
.end method

.method public abstract b()I
.end method

.method protected b(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/a/a/a/z;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->c(I)V

    return v1
.end method

.method public abstract c()I
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/z;->i:I

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/z;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/a/a/a/z;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/z;->i:I

    return v0
.end method

.method protected d(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->c(I)V

    const/4 v0, 0x0

    return v0
.end method

.method protected d(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/a/a/a/z;->a(I)V

    iget-object v0, p0, Lorg/a/a/a/z;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method protected e(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->a(I)V

    iget-object v0, p0, Lorg/a/a/a/z;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/a/a/a/z;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/z;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->b(Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/z;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/z;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/z;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Lorg/a/a/a/aa;
    .registers 10

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/z;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/z;->i:I

    invoke-virtual {p0}, Lorg/a/a/a/z;->j()I

    move-result v7

    invoke-virtual {p0}, Lorg/a/a/a/z;->k()I

    move-result v8

    invoke-virtual {p0}, Lorg/a/a/a/z;->h()I

    move-result v5

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/a/z;->c()I

    move-result v2

    invoke-direct {p0}, Lorg/a/a/a/z;->i()V

    invoke-virtual {p0}, Lorg/a/a/a/z;->h()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_0
    iget-object v0, p0, Lorg/a/a/a/z;->e:Lorg/a/a/a/ab;

    sget-object v1, Lorg/a/a/a/l;->a:Lorg/a/a/a/c/m;

    invoke-virtual {p0}, Lorg/a/a/a/z;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/a/a/a/z;->d()I

    move-result v4

    invoke-interface/range {v0 .. v8}, Lorg/a/a/a/ab;->b(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/aa;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    add-int/lit8 v6, v5, 0x1

    goto :goto_0
.end method

.method protected g()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/z;->c(I)V

    return-void
.end method

.method public h()I
    .registers 3

    iget v0, p0, Lorg/a/a/a/z;->b:I

    invoke-virtual {p0}, Lorg/a/a/a/z;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/z;->f:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/z;->g:I

    return v0
.end method
