.class La/b/f/e;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/a/d/i;


# direct methods
.method public constructor <init>(La/b/a/d/i;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/f/e;->a:La/b/a/d/i;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p3, La/b/a/d;->e:I

    if-ge v0, v2, :cond_13

    iget-object v2, p3, La/b/a/d;->f:[B

    invoke-static {v2, v0}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v2

    iget-byte v3, v2, La/b/d/c;->c:B

    const/16 v4, -0x44

    if-ne v3, v4, :cond_1b

    const/4 v1, 0x1

    :cond_13
    if-eqz v1, :cond_1a

    iget-object v0, p0, La/b/f/e;->a:La/b/a/d/i;

    invoke-interface {v0, p1, p2, p3}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_1a
    return-void

    :cond_1b
    invoke-virtual {v2, v0}, La/b/d/c;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method
