.class public La/b/c/bt;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private a:Z

.field private b:[Z

.field private c:[I

.field private final d:La/b/c/bu;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [Z

    iput-object v1, p0, La/b/c/bt;->b:[Z

    new-array v0, v0, [I

    iput-object v0, p0, La/b/c/bt;->c:[I

    new-instance v0, La/b/c/bu;

    invoke-direct {v0}, La/b/c/bu;-><init>()V

    iput-object v0, p0, La/b/c/bt;->d:La/b/c/bu;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, La/b/c/bt;->b:[Z

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_b

    new-array p1, p1, [Z

    iput-object p1, p0, La/b/c/bt;->b:[Z

    goto :goto_e

    :cond_b
    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_e
    iput-boolean v2, p0, La/b/c/bt;->a:Z

    return-void
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 9

    iget-boolean v0, p0, La/b/c/bt;->a:Z

    if-nez v0, :cond_5

    goto :goto_36

    :cond_5
    iget v0, p3, La/b/a/d;->d:I

    iget-object v1, p0, La/b/c/bt;->c:[I

    array-length v1, v1

    if-ge v1, v0, :cond_10

    new-array v1, v0, [I

    iput-object v1, p0, La/b/c/bt;->c:[I

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    if-ge v1, v0, :cond_28

    iget-object v3, p0, La/b/c/bt;->c:[I

    iget-object v4, p0, La/b/c/bt;->b:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_20

    const/4 v4, -0x1

    move v4, v2

    const/4 v2, -0x1

    goto :goto_22

    :cond_20
    add-int/lit8 v4, v2, 0x1

    :goto_22
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_12

    :cond_28
    iget-object v0, p0, La/b/c/bt;->d:La/b/c/bu;

    iget-object v1, p0, La/b/c/bt;->c:[I

    invoke-virtual {v0, v1}, La/b/c/bu;->a([I)V

    iget-object v0, p0, La/b/c/bt;->d:La/b/c/bu;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/bu;->a(La/b/c;La/b/j;La/b/a/d;)V

    iput v2, p3, La/b/a/d;->d:I

    :goto_36
    return-void
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, La/b/c/bt;->b:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iput-boolean v1, p0, La/b/c/bt;->a:Z

    return-void
.end method
