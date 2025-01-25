.class La/g/r;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/bb;


# instance fields
.field final a:La/b/d/a/c;

.field final b:La/g/m;


# direct methods
.method constructor <init>(La/g/m;La/b/d/a/c;)V
    .registers 3

    iput-object p1, p0, La/g/r;->b:La/g/m;

    iput-object p2, p0, La/g/r;->a:La/b/d/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/b/g/s;
    .registers 13

    new-instance v0, La/d/a/ab;

    invoke-direct {v0}, La/d/a/ab;-><init>()V

    new-instance v1, La/b/g/d;

    new-instance v2, La/b/a/d/a;

    new-instance v3, La/b/a/d/k;

    const-string v4, "Simplifying code"

    new-instance v5, La/g/b/z;

    new-instance v6, La/g/a/h;

    new-instance v7, La/g/a/v;

    new-instance v8, La/g/a/t;

    iget-object v9, p0, La/g/r;->b:La/g/m;

    invoke-static {v9}, La/g/m;->c(La/g/m;)Z

    move-result v9

    iget-object v10, p0, La/g/r;->b:La/g/m;

    invoke-static {v10}, La/g/m;->d(La/g/m;)Z

    move-result v10

    iget-object v11, p0, La/g/r;->b:La/g/m;

    invoke-static {v11}, La/g/m;->f(La/g/m;)Z

    move-result v11

    invoke-direct {v8, v0, v9, v10, v11}, La/g/a/t;-><init>(La/d/a/be;ZZZ)V

    const/4 v9, 0x0

    invoke-direct {v7, v0, v8, v9}, La/g/a/v;-><init>(La/d/a/be;La/d/f;Z)V

    iget-object v0, p0, La/g/r;->a:La/b/d/a/c;

    invoke-direct {v6, v7, v0}, La/g/a/h;-><init>(La/g/a/v;La/b/d/a/d;)V

    invoke-direct {v5, v6}, La/g/b/z;-><init>(La/b/a/d/i;)V

    invoke-direct {v3, v4, v5}, La/b/a/d/k;-><init>(Ljava/lang/String;La/b/a/d/i;)V

    invoke-direct {v2, v3}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v1, v2}, La/b/g/d;-><init>(La/b/g/aq;)V

    return-object v1
.end method
