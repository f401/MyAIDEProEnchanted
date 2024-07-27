.class public final Lcom/a/b/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a;
.implements Lcom/a/b/g/a;


# instance fields
.field private final a:Z

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/a/b/g/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    new-array v0, p1, [B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/g/h;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/h;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p2, p0, Lcom/a/b/g/h;->a:Z

    iput-object p1, p0, Lcom/a/b/g/h;->b:[B

    iput v1, p0, Lcom/a/b/g/h;->c:I

    iput-boolean v1, p0, Lcom/a/b/g/h;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    iput v1, p0, Lcom/a/b/g/h;->f:I

    iput v1, p0, Lcom/a/b/g/h;->g:I

    return-void
.end method

.method private static i()V
    .registers 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/g/h;->b:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, p1, 0x2

    add-int/lit16 v0, v0, 0x3e8

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    iget v2, p0, Lcom/a/b/g/h;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/a/b/g/h;->b:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iput v1, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/g/h;->c()V

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/a/b/g/h;->c:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/a/b/g/h;->c:I

    :cond_1
    iget-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/a/b/g/i;

    add-int v3, v0, p1

    invoke-direct {v2, v0, v3, p2}, Lcom/a/b/g/i;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/i;

    invoke-virtual {v0}, Lcom/a/b/g/i;->b()I

    move-result v0

    goto :goto_1
.end method

.method public a(IZ)V
    .registers 6

    const/16 v0, 0xa

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/a/b/g/h;->c:I

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot enable annotations"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x28

    if-ge p1, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "annotationWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, p1, -0x7

    div-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, -0x2

    if-ge v1, v2, :cond_4

    move v0, v2

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    iput p1, p0, Lcom/a/b/g/h;->f:I

    iput v0, p0, Lcom/a/b/g/h;->g:I

    iput-boolean p2, p0, Lcom/a/b/g/h;->d:Z

    return-void

    :cond_4
    if-gt v1, v0, :cond_3

    move v0, v1

    goto :goto_0
.end method

.method public a(J)V
    .registers 10

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v1, v0, 0x8

    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    long-to-int v2, p1

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x4

    int-to-byte v5, v2

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x5

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v4, v0, 0x6

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    iput v1, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public a(Lcom/a/b/g/e;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/g/e;->a()I

    move-result v0

    iget v1, p0, Lcom/a/b/g/h;->c:I

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    invoke-virtual {p1, v2, v1}, Lcom/a/b/g/e;->a([BI)V

    iput v0, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public a(Ljava/io/Writer;)V
    .registers 15

    const/4 v5, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/g/h;->d()I

    move-result v1

    new-instance v9, Lcom/a/b/g/x;

    iget v2, p0, Lcom/a/b/g/h;->f:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    const-string v3, "|"

    invoke-direct {v9, p1, v2, v1, v3}, Lcom/a/b/g/x;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    invoke-virtual {v9}, Lcom/a/b/g/x;->a()Ljava/io/Writer;

    move-result-object v10

    invoke-virtual {v9}, Lcom/a/b/g/x;->b()Ljava/io/Writer;

    move-result-object v11

    iget-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v1, v0

    move v7, v0

    :goto_0
    iget v0, p0, Lcom/a/b/g/h;->c:I

    if-ge v1, v0, :cond_0

    if-lt v7, v12, :cond_2

    :cond_0
    iget v0, p0, Lcom/a/b/g/h;->c:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/a/b/g/h;->b:[B

    iget v2, p0, Lcom/a/b/g/h;->c:I

    sub-int/2addr v2, v1

    iget v4, p0, Lcom/a/b/g/h;->g:I

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/a/b/g/k;->a([BIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-lt v7, v12, :cond_4

    invoke-virtual {v9}, Lcom/a/b/g/x;->c()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/i;

    invoke-virtual {v0}, Lcom/a/b/g/i;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    const-string v0, ""

    move v6, v2

    move-object v8, v0

    :goto_2
    iget-object v0, p0, Lcom/a/b/g/h;->b:[B

    sub-int v2, v6, v1

    iget v4, p0, Lcom/a/b/g/h;->g:I

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/a/b/g/k;->a([BIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/a/b/g/x;->c()V

    move v1, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/a/b/g/i;->b()I

    move-result v6

    invoke-virtual {v0}, Lcom/a/b/g/i;->c()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v7, v7, 0x1

    move v1, v2

    move-object v8, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/i;

    invoke-virtual {v0}, Lcom/a/b/g/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/g/h;->c()V

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/g/i;

    iget v2, p0, Lcom/a/b/g/h;->c:I

    invoke-direct {v1, v2, p1}, Lcom/a/b/g/i;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/b/g/h;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .registers 8

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    if-ltz v2, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes.length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/a/b/g/h;->i(I)V

    :cond_2
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .registers 5

    iget v0, p0, Lcom/a/b/g/h;->c:I

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected cursor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/b/g/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/g/h;->d:Z

    return v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/i;

    iget v1, p0, Lcom/a/b/g/h;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/i;->a(I)V

    goto :goto_0
.end method

.method public c(I)V
    .registers 6

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iput v1, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public d()I
    .registers 4

    iget v0, p0, Lcom/a/b/g/h;->g:I

    iget v1, p0, Lcom/a/b/g/h;->g:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/a/b/g/h;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    sub-int v0, v2, v0

    return v0
.end method

.method public d(I)V
    .registers 7

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iput v1, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/b/g/h;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public e(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget v0, p0, Lcom/a/b/g/h;->c:I

    invoke-static {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/a/a;I)V

    iget v1, p0, Lcom/a/b/g/h;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method public e()[B
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/h;->b:[B

    return-object v0
.end method

.method public f(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/a/b/g/h;->i(I)V

    :cond_0
    iget v0, p0, Lcom/a/b/g/h;->c:I

    invoke-static {p0, p1}, Lcom/a/a/e;->b(Lcom/a/a/a/a;I)V

    iget v1, p0, Lcom/a/b/g/h;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method public f()[B
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/a/b/g/h;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    iget v2, p0, Lcom/a/b/g/h;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/h;->c:I

    return v0
.end method

.method public g(I)V
    .registers 6

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/g/h;->c:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/a/b/g/h;->i(I)V

    :cond_1
    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    iget v2, p0, Lcom/a/b/g/h;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iput v0, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method

.method public h()V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/g/h;->c()V

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-gtz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/i;

    invoke-virtual {v0}, Lcom/a/b/g/i;->a()I

    move-result v2

    iget v3, p0, Lcom/a/b/g/h;->c:I

    if-le v2, v3, :cond_2

    iget-object v0, p0, Lcom/a/b/g/h;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/g/i;->b()I

    move-result v1

    iget v2, p0, Lcom/a/b/g/h;->c:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/a/b/g/h;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/i;->b(I)V

    goto :goto_1
.end method

.method public h(I)V
    .registers 6

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_0

    and-int v1, v0, p1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    xor-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/a/b/g/h;->c:I

    add-int/2addr v0, v2

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/a/b/g/h;->a:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/a/b/g/h;->i(I)V

    :cond_2
    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    iget v2, p0, Lcom/a/b/g/h;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iput v0, p0, Lcom/a/b/g/h;->c:I

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/a/b/g/h;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/a/b/g/h;->i()V

    goto :goto_0
.end method
