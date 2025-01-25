.class La/b/c/d;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# instance fields
.field final a:La/b/c/a;


# direct methods
.method private constructor <init>(La/b/c/a;)V
    .registers 2

    iput-object p1, p0, La/b/c/d;->a:La/b/c/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/b/c/a;La/b/c/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/c/d;-><init>(La/b/c/a;)V

    return-void
.end method


# virtual methods
.method public a(La/b/e;La/b/g;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;La/b/m;)V
    .registers 8

    invoke-virtual {p2}, La/b/m;->a()I

    move-result v0

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_64

    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v2, 0x0

    goto :goto_58

    :cond_19
    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v4

    invoke-static {v3, p1, v4}, La/b/c/a;->a(La/b/c/a;La/b/c;La/b/c;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x1

    goto :goto_58

    :cond_27
    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->b(La/b/c/a;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_58

    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->c(La/b/c/a;)La/b/c;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v3

    iget-object v4, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v4}, La/b/c/a;->c(La/b/c/a;)La/b/c;

    move-result-object v4

    invoke-interface {v3, v4}, La/b/c;->b(La/b/c;)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_4b
    iget-object v3, p0, La/b/c/d;->a:La/b/c/a;

    invoke-static {v3}, La/b/c/a;->a(La/b/c/a;)La/b/c;

    move-result-object v3

    invoke-interface {v3, p1}, La/b/c;->b(La/b/c;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 v2, 0x2

    :cond_58
    :goto_58
    if-ge v1, v2, :cond_64

    invoke-static {v2}, La/b/f/a;->b(I)I

    move-result p1

    invoke-static {v0, p1}, La/b/f/a;->a(II)I

    move-result p1

    iput p1, p2, La/b/m;->b:I

    :cond_64
    return-void
.end method
