.class public La/b/c/ax;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/k;


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/ax;->a:La/b/k;

    return-void
.end method

.method private b(I)I
    .registers 6

    iget-object v0, p0, La/b/c/ax;->a:La/b/k;

    iget v0, v0, La/b/k;->g:I

    iget-object v1, p0, La/b/c/ax;->a:La/b/k;

    iget-object v1, v1, La/b/k;->h:[I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_13

    aget v3, v1, v2

    if-ne v3, p1, :cond_10

    goto :goto_14

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v2, -0x1

    :goto_14
    return v2
.end method


# virtual methods
.method public a(I)V
    .registers 7

    invoke-direct {p0, p1}, La/b/c/ax;->b(I)I

    move-result v0

    if-gez v0, :cond_18

    iget-object v0, p0, La/b/c/ax;->a:La/b/k;

    iget-object v1, v0, La/b/k;->h:[I

    iget-object v2, p0, La/b/c/ax;->a:La/b/k;

    iget v3, v2, La/b/k;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, La/b/k;->g:I

    invoke-static {v1, v3, p1}, La/j/b;->a([III)[I

    move-result-object p1

    iput-object p1, v0, La/b/k;->h:[I

    :cond_18
    return-void
.end method
