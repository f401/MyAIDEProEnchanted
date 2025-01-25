.class La/b/c/c;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/m;
.implements La/b/g/s;


# instance fields
.field final a:La/b/c/a;


# direct methods
.method private constructor <init>(La/b/c/a;)V
    .registers 2

    iput-object p1, p0, La/b/c/c;->a:La/b/c/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/b/c/a;La/b/c/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/c/c;-><init>(La/b/c/a;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/k;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/k;->a(La/b/c;La/b/a/d/m;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/l;)V
    .registers 8

    iget v0, p2, La/b/a/l;->a:I

    if-eqz v0, :cond_34

    invoke-interface {p1, v0}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p2, La/b/a/l;->d:I

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_34

    iget-object v3, p0, La/b/c/c;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v4

    invoke-static {v3, p1, v4}, La/b/c/a;->a(La/b/c/a;La/b/c;La/b/c;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v2, 0x1

    :cond_28
    if-ge v1, v2, :cond_34

    invoke-static {v2}, La/b/f/a;->b(I)I

    move-result p1

    invoke-static {v0, p1}, La/b/f/a;->a(II)I

    move-result p1

    iput p1, p2, La/b/a/l;->d:I

    :cond_34
    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 7

    invoke-virtual {p1}, La/b/k;->a()I

    move-result v0

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_24

    iget-object v3, p0, La/b/c/c;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v4

    invoke-static {v3, p1, v4}, La/b/c/a;->a(La/b/c/a;La/b/c;La/b/c;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    if-ge v1, v2, :cond_24

    invoke-static {v2}, La/b/f/a;->b(I)I

    move-result v1

    invoke-static {v0, v1}, La/b/f/a;->a(II)I

    move-result v0

    iput v0, p1, La/b/k;->d:I

    :cond_24
    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    return-void
.end method
