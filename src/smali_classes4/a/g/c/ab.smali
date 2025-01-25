.class public La/g/c/ab;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;


# instance fields
.field private final a:La/b/a/d/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/g/c/ab;-><init>(La/b/a/d/l;)V

    return-void
.end method

.method public constructor <init>(La/b/a/d/l;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/g/c/ab;->a:La/b/a/d/l;

    return-void
.end method

.method private a([La/b/a/h;I)I
    .registers 8

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_3
    if-ge v2, p2, :cond_17

    aget-object v3, p1, v2

    iget v0, v3, La/b/a/h;->a:I

    iget v4, v3, La/b/a/h;->b:I

    if-ge v0, v4, :cond_15

    add-int/lit8 v0, v1, 0x1

    aput-object v3, p1, v1

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_15
    move v0, v1

    goto :goto_11

    :cond_17
    return v1
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;II)Z
    .registers 9

    iget-object v0, p3, La/b/a/d;->f:[B

    :goto_2
    if-ge p4, p5, :cond_16

    invoke-static {v0, p4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v1

    invoke-virtual {v1}, La/b/d/c;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1, p4}, La/b/d/c;->a(I)I

    move-result v1

    add-int/2addr p4, v1

    goto :goto_2

    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    iget-object v0, p3, La/b/a/d;->h:[La/b/a/h;

    iget v1, p3, La/b/a/d;->g:I

    invoke-direct {p0, v0, v1}, La/g/c/ab;->a([La/b/a/h;I)I

    move-result v0

    iput v0, p3, La/b/a/d;->g:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 11

    iget v4, p4, La/b/a/h;->a:I

    iget v5, p4, La/b/a/h;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/c/ab;->a(La/b/c;La/b/j;La/b/a/d;II)Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p4, La/b/a/h;->a:I

    iput v0, p4, La/b/a/h;->b:I

    iget-object v0, p0, La/g/c/ab;->a:La/b/a/d/l;

    if-eqz v0, :cond_1b

    iget-object v0, p0, La/g/c/ab;->a:La/b/a/d/l;

    invoke-interface {v0, p1, p2, p3, p4}, La/b/a/d/l;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V

    :cond_1b
    return-void
.end method
