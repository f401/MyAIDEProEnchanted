.class La/i/t;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# instance fields
.field final a:La/i/n;


# direct methods
.method private constructor <init>(La/i/n;)V
    .registers 2

    iput-object p1, p0, La/i/t;->a:La/i/n;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/i/n;La/i/o;)V
    .registers 3

    invoke-direct {p0, p1}, La/i/t;-><init>(La/i/n;)V

    return-void
.end method


# virtual methods
.method public a(La/b/k;La/b/l;)V
    .registers 5

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->f(La/b/o;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->a(La/b/o;)V

    iget-object v0, p0, La/i/t;->a:La/i/n;

    iget v1, p2, La/b/l;->c:I

    invoke-static {v0, p1, v1}, La/i/n;->a(La/i/n;La/b/c;I)V

    iget-object v0, p0, La/i/t;->a:La/i/n;

    iget v1, p2, La/b/l;->d:I

    invoke-static {v0, p1, v1}, La/i/n;->a(La/i/n;La/b/c;I)V

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {p2, p1, v0}, La/b/l;->a(La/b/k;La/b/a/d/i;)V

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {p2, v0}, La/b/l;->a(La/b/g/s;)V

    :cond_25
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->f(La/b/o;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->a(La/b/o;)V

    iget-object v0, p0, La/i/t;->a:La/i/n;

    invoke-virtual {v0, p1, p2}, La/i/n;->b(La/b/k;La/b/n;)V

    :cond_12
    return-void
.end method
