.class La/g/q;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/bb;


# instance fields
.field final a:La/g/m;


# direct methods
.method constructor <init>(La/g/m;)V
    .registers 2

    iput-object p1, p0, La/g/q;->a:La/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/b/g/s;
    .registers 14

    const/4 v1, 0x0

    new-instance v2, La/d/a/ao;

    invoke-direct {v2}, La/d/a/ao;-><init>()V

    iget-object v0, p0, La/g/q;->a:La/g/m;

    invoke-static {v0}, La/g/m;->c(La/g/m;)Z

    move-result v3

    iget-object v0, p0, La/g/q;->a:La/g/m;

    invoke-static {v0}, La/g/m;->d(La/g/m;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, La/g/q;->a:La/g/m;

    invoke-static {v0}, La/g/m;->e(La/g/m;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    new-instance v4, La/b/g/f;

    const/16 v5, 0x1000

    new-instance v6, La/b/g/d;

    new-instance v7, La/b/a/d/a;

    new-instance v8, La/b/a/d/k;

    const-string v9, "Filling out fields, method parameters, and return values"

    new-instance v10, La/g/a/v;

    new-instance v11, La/g/a/ah;

    iget-object v12, p0, La/g/q;->a:La/g/m;

    invoke-static {v12}, La/g/m;->f(La/g/m;)Z

    move-result v12

    invoke-direct {v11, v2, v3, v0, v12}, La/g/a/ah;-><init>(La/d/a/be;ZZZ)V

    invoke-direct {v10, v2, v11, v1}, La/g/a/v;-><init>(La/d/a/be;La/d/f;Z)V

    invoke-direct {v8, v9, v10}, La/b/a/d/k;-><init>(Ljava/lang/String;La/b/a/d/i;)V

    invoke-direct {v7, v8}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v6, v7}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-direct {v4, v1, v5, v6}, La/b/g/f;-><init>(IILa/b/g/s;)V

    return-object v4

    :cond_46
    move v0, v1

    goto :goto_1d
.end method
