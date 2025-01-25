.class La/g/a/q;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/j;


# direct methods
.method private constructor <init>(La/g/a/j;)V
    .registers 2

    iput-object p1, p0, La/g/a/q;->a:La/g/a/j;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/j;La/g/a/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/q;-><init>(La/g/a/j;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, La/g/a/q;->a:La/g/a/j;

    invoke-static {v0}, La/g/a/j;->a(La/g/a/j;)La/g/a/v;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v2

    move v0, v1

    :goto_10
    if-ge v0, v2, :cond_2a

    iget-object v3, p0, La/g/a/q;->a:La/g/a/j;

    invoke-virtual {v3, p4, v0}, La/g/a/j;->a(II)Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, p0, La/g/a/q;->a:La/g/a/j;

    invoke-virtual {v3, p4, v0}, La/g/a/j;->b(II)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, La/g/a/q;->a:La/g/a/j;

    invoke-static {v3, p4, v0, v1}, La/g/a/j;->a(La/g/a/j;IIZ)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2a
    return-void
.end method
