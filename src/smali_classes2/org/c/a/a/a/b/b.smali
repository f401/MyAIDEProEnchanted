.class public Lorg/c/a/a/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/a/b/a;


# instance fields
.field protected a:Ljava/lang/StringBuilder;

.field protected b:Z

.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/a/b/b;->b:Z

    iput-boolean v2, p0, Lorg/c/a/a/a/b/b;->c:Z

    iput v2, p0, Lorg/c/a/a/a/b/b;->d:I

    iput v2, p0, Lorg/c/a/a/a/b/b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/c/a/a/a/b/b;->f:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(III)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput p2, p0, Lorg/c/a/a/a/b/b;->d:I

    iput p3, p0, Lorg/c/a/a/a/b/b;->e:I

    iput v1, p0, Lorg/c/a/a/a/b/b;->f:I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p3}, Lorg/c/a/a/a/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lorg/c/a/a/a/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/c/a/a/a/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/c/a/a/a/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget v0, p0, Lorg/c/a/a/a/b/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/a/b/b;->f:I

    return-void
.end method

.method public b(I)V
    .registers 4

    iget-boolean v0, p0, Lorg/c/a/a/a/b/b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    if-gtz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/c/a/a/a/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lorg/c/a/a/a/b/b;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/c/a/a/a/b/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/a/b/b;->f:I

    :cond_0
    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public d(I)V
    .registers 2

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 8

    const/16 v5, 0x9

    iget-boolean v0, p0, Lorg/c/a/a/a/b/b;->b:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v0, 0x7f

    if-le v3, v0, :cond_7

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v3, 0xc

    iget-object v4, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    if-gt v0, v5, :cond_3

    add-int/lit8 v0, v0, 0x30

    :goto_3
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v3, 0x8

    and-int/lit8 v0, v0, 0xf

    iget-object v4, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    if-gt v0, v5, :cond_4

    add-int/lit8 v0, v0, 0x30

    :goto_4
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v3, 0x4

    and-int/lit8 v0, v0, 0xf

    iget-object v4, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    if-gt v0, v5, :cond_5

    add-int/lit8 v0, v0, 0x30

    :goto_5
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v3, 0xf

    iget-object v3, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    if-gt v0, v5, :cond_6

    add-int/lit8 v0, v0, 0x30

    :goto_6
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x37

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x37

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x37

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x37

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public e()Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/a/b/b;->a:Ljava/lang/StringBuilder;

    return-object v0
.end method
