.class public La/b/c/k;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/j;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/n;

.field private c:I


# direct methods
.method public constructor <init>(La/b/k;La/b/a/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/k;->a:La/b/c/ad;

    new-instance p1, La/b/c/n;

    invoke-direct {p1, p2}, La/b/c/n;-><init>(La/b/a/c;)V

    iput-object p1, p0, La/b/c/k;->b:La/b/c/n;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/c/k;->c:I

    return v0
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 9

    iget v0, p2, La/b/a/b;->b:I

    iget-object v1, p2, La/b/a/b;->c:[I

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_16

    iget-object v4, p0, La/b/c/k;->a:La/b/c/ad;

    aget v5, v1, v3

    invoke-virtual {v4, p1, v5}, La/b/c/ad;->a(La/b/c;I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    new-instance v1, La/b/a/b;

    iget-object v3, p0, La/b/c/k;->a:La/b/c/ad;

    iget p2, p2, La/b/a/b;->a:I

    invoke-virtual {v3, p1, p2}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    invoke-direct {v1, p1, v0, v2}, La/b/a/b;-><init>(II[I)V

    iget-object p1, p0, La/b/c/k;->b:La/b/c/n;

    invoke-virtual {p1, v1}, La/b/c/n;->a(La/b/a/b;)I

    move-result p1

    iput p1, p0, La/b/c/k;->c:I

    return-void
.end method
