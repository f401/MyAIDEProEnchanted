.class public La/b/b/a/e;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private final a:I

.field private final b:La/b/b/a/f;


# direct methods
.method public constructor <init>(ILa/b/b/a/f;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iput p1, p0, La/b/b/a/e;->a:I

    iput-object p2, p0, La/b/b/a/e;->b:La/b/b/a/f;

    return-void
.end method

.method public constructor <init>([ILa/b/b/a/f;)V
    .registers 7

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_11

    aget v2, p1, v0

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    iput v1, p0, La/b/b/a/e;->a:I

    iput-object p2, p0, La/b/b/a/e;->b:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p2}, La/b/b/b;->a()I

    move-result v1

    shl-int/2addr v0, v1

    iget v1, p0, La/b/b/a/e;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, La/b/b/a/e;->b:La/b/b/a/f;

    invoke-virtual {p2, p1, v0}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    :cond_10
    return-void
.end method
