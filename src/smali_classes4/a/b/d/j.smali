.class public La/b/d/j;
.super La/b/d/i;


# instance fields
.field public a:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/d/i;-><init>()V

    return-void
.end method

.method public constructor <init>(BIII[I)V
    .registers 6

    invoke-direct {p0}, La/b/d/i;-><init>()V

    iput-byte p1, p0, La/b/d/j;->c:B

    iput p2, p0, La/b/d/j;->b:I

    iput p3, p0, La/b/d/j;->a:I

    iput p4, p0, La/b/d/j;->e:I

    iput-object p5, p0, La/b/d/j;->d:[I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, La/b/d/j;->e:I

    iget v2, p0, La/b/d/j;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public a()La/b/d/c;
    .registers 1

    return-object p0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/j;)V

    return-void
.end method

.method protected b([BI)V
    .registers 7

    neg-int v0, p2

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p2

    invoke-static {p1, v0}, La/b/d/j;->f([BI)I

    move-result v1

    iput v1, p0, La/b/d/j;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/b/d/j;->f([BI)I

    move-result v1

    iput v1, p0, La/b/d/j;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/b/d/j;->f([BI)I

    move-result v1

    iput v1, p0, La/b/d/j;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/b/d/j;->e:I

    iget v2, p0, La/b/d/j;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, La/b/d/j;->d:[I

    const/4 v1, 0x0

    :goto_28
    iget-object v2, p0, La/b/d/j;->d:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, La/b/d/j;->d:[I

    invoke-static {p1, v0}, La/b/d/j;->f([BI)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3a
    return-void
.end method

.method protected c([BI)V
    .registers 8

    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_b

    invoke-static {p1, p2, v1}, La/b/d/j;->c([BII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    iget v0, p0, La/b/d/j;->b:I

    invoke-static {p1, p2, v0}, La/b/d/j;->e([BII)V

    add-int/lit8 v0, p2, 0x4

    iget v2, p0, La/b/d/j;->a:I

    invoke-static {p1, v0, v2}, La/b/d/j;->e([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/b/d/j;->e:I

    invoke-static {p1, v0, v2}, La/b/d/j;->e([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/b/d/j;->e:I

    iget v3, p0, La/b/d/j;->a:I

    :goto_24
    sub-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_36

    iget-object v4, p0, La/b/d/j;->d:[I

    aget v4, v4, v1

    invoke-static {p1, v0, v4}, La/b/d/j;->e([BII)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_36
    return-void
.end method
