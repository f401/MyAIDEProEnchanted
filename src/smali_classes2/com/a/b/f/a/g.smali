.class Lcom/a/b/f/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/a/b/f/a/g;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/a/b/f/a/g;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/f/a/g;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 7

    const/4 v3, -0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v1

    :goto_0
    iget v3, p0, Lcom/a/b/f/a/g;->c:I

    if-lt v5, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/f/a/g;->b:[I

    aput v1, v0, v4

    return v2

    :cond_0
    iget-object v3, p0, Lcom/a/b/f/a/g;->b:[I

    aget v3, v3, v5

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/a/b/f/a/g;->a:[I

    aget v2, v0, v5

    iget-object v0, p0, Lcom/a/b/f/a/g;->b:[I

    aget v0, v0, v5

    move v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/a/b/f/a/g;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/b/f/a/g;->a:[I

    iget v1, p0, Lcom/a/b/f/a/g;->c:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/a/b/f/a/g;->b:[I

    iget v1, p0, Lcom/a/b/f/a/g;->c:I

    const/4 v2, 0x1

    aput v2, v0, v1

    iget v0, p0, Lcom/a/b/f/a/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/f/a/g;->c:I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/b/f/a/g;->a:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/a/b/f/a/g;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/a/g;->c:I

    return v0
.end method
