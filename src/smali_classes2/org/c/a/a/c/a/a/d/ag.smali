.class public Lorg/c/a/a/c/a/a/d/ag;
.super Lorg/c/a/a/b/d/e/a;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/a/c/h;

.field protected b:Lorg/c/a/a/b/a/a/ai;


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/h;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/a;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/d/ag;->a:Lorg/c/a/a/c/a/a/a/c/h;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/a/a/ai;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/g;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ag;->a:Lorg/c/a/a/c/a/a/a/c/h;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v1}, Lorg/c/a/a/b/a/a/ai;->e()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/ai;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/c/a/a/c/a/a/a/c/h;->a(IILorg/c/a/a/b/d/e/g;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/h;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ag;->a:Lorg/c/a/a/c/a/a/a/c/h;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v1}, Lorg/c/a/a/b/a/a/ai;->e()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/ai;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/c/a/a/c/a/a/a/c/h;->a(IILorg/c/a/a/b/d/e/i;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/i;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ag;->a:Lorg/c/a/a/c/a/a/a/c/h;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v1}, Lorg/c/a/a/b/a/a/ai;->e()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/d/ag;->b:Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/ai;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/c/a/a/c/a/a/a/c/h;->a(IILorg/c/a/a/b/d/e/i;)V

    return-void
.end method
