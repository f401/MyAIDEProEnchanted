.class public La/g/c/w;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;
.implements La/b/d/a/d;


# instance fields
.field private a:[Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x1fa0

    new-array v0, v0, [Z

    iput-object v0, p0, La/g/c/w;->a:[Z

    return-void
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;I)V
    .registers 6

    iget-boolean v0, p0, La/g/c/w;->b:Z

    invoke-direct {p0, p1, p2, p3, p4}, La/g/c/w;->b(La/b/c;La/b/j;La/b/a/d;I)V

    iput-boolean v0, p0, La/g/c/w;->b:Z

    return-void
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;I[I)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p5

    if-ge v0, v1, :cond_d

    aget v1, p5, v0

    add-int/2addr v1, p4

    invoke-direct {p0, p1, p2, p3, v1}, La/g/c/w;->b(La/b/c;La/b/j;La/b/a/d;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method private b(La/b/c;La/b/j;La/b/a/d;I)V
    .registers 14

    const/4 v8, 0x1

    iget-boolean v6, p0, La/g/c/w;->b:Z

    iget-object v7, p3, La/b/a/d;->f:[B

    move v4, p4

    :goto_6
    iget-object v0, p0, La/g/c/w;->a:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_21

    invoke-static {v7, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-object v1, p0, La/g/c/w;->a:[Z

    aput-boolean v8, v1, v4

    iput-boolean v8, p0, La/g/c/w;->b:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    iget-boolean v1, p0, La/g/c/w;->b:Z

    if-nez v1, :cond_24

    :cond_21
    iput-boolean v6, p0, La/g/c/w;->b:Z

    return-void

    :cond_24
    invoke-virtual {v0, v4}, La/b/d/c;->a(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    const/4 v2, 0x0

    iget v0, p3, La/b/a/d;->e:I

    iget-object v1, p0, La/g/c/w;->a:[Z

    array-length v1, v1

    if-ge v1, v0, :cond_19

    new-array v0, v0, [Z

    iput-object v0, p0, La/g/c/w;->a:[Z

    :goto_c
    invoke-direct {p0, p1, p2, p3, v2}, La/g/c/w;->b(La/b/c;La/b/j;La/b/a/d;I)V

    :cond_f
    iput-boolean v2, p0, La/g/c/w;->c:Z

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    iget-boolean v0, p0, La/g/c/w;->c:Z

    if-nez v0, :cond_f

    return-void

    :cond_19
    iget-object v1, p0, La/g/c/w;->a:[Z

    invoke-static {v1, v2, v0, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    goto :goto_c
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 8

    iget v0, p5, La/b/d/a;->a:I

    add-int/2addr v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, La/g/c/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    iget-byte v0, p5, La/b/d/a;->c:B

    const/16 v1, -0x59

    if-eq v0, v1, :cond_10

    const/16 v1, -0x38

    if-ne v0, v1, :cond_13

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/c/w;->b:Z

    :cond_13
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 8

    iget-byte v0, p5, La/b/d/h;->c:B

    const/16 v1, -0x54

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x53

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x52

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x51

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x50

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x4f

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x41

    if-ne v0, v1, :cond_21

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/c/w;->b:Z

    :cond_21
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/i;)V
    .registers 12

    iget v0, p5, La/b/d/i;->b:I

    add-int/2addr v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, La/g/c/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    iget-object v5, p5, La/b/d/i;->d:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, La/g/c/w;->a(La/b/c;La/b/j;La/b/a/d;I[I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/c/w;->b:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 8

    iget-byte v0, p5, La/b/d/k;->c:B

    const/16 v1, -0x57

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/c/w;->b:Z

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget v0, p4, La/b/a/h;->c:I

    invoke-virtual {p0, v0}, La/g/c/w;->a(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p4, La/b/a/h;->a:I

    iget v1, p4, La/b/a/h;->b:I

    invoke-virtual {p0, v0, v1}, La/g/c/w;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p4, La/b/a/h;->c:I

    invoke-direct {p0, p1, p2, p3, v0}, La/g/c/w;->b(La/b/c;La/b/j;La/b/a/d;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/w;->c:Z

    :cond_1a
    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, La/g/c/w;->a:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public a(II)Z
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_d

    iget-object v0, p0, La/g/c/w;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
