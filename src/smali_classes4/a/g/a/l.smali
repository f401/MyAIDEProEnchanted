.class La/g/a/l;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/j;


# direct methods
.method private constructor <init>(La/g/a/j;)V
    .registers 2

    iput-object p1, p0, La/g/a/l;->a:La/g/a/j;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/j;La/g/a/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/l;-><init>(La/g/a/j;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 10

    iget-object v0, p0, La/g/a/l;->a:La/g/a/j;

    invoke-static {v0}, La/g/a/j;->a(La/g/a/j;)La/g/a/v;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v1

    invoke-virtual {p5, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    sub-int v0, v1, v0

    :goto_14
    if-ge v0, v1, :cond_42

    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    invoke-virtual {v2, p4, v0}, La/g/a/j;->a(II)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    invoke-virtual {v2, p4, v0}, La/g/a/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    invoke-static {v2, p5}, La/g/a/j;->a(La/g/a/j;La/b/d/c;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    invoke-static {v2, p4}, La/g/a/j;->a(La/g/a/j;I)V

    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    const/4 v3, 0x0

    invoke-static {v2, p4, v0, v3}, La/g/a/j;->a(La/g/a/j;IIZ)V

    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3c
    iget-object v2, p0, La/g/a/l;->a:La/g/a/j;

    invoke-static {v2, p4}, La/g/a/j;->b(La/g/a/j;I)V

    goto :goto_39

    :cond_42
    return-void
.end method
