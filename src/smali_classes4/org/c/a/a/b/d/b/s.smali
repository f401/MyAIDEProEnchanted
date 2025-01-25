.class public Lorg/c/a/a/b/d/b/s;
.super Lorg/c/a/a/b/d/b/b;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected c:Lorg/c/a/a/b/d/e/l;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/e/l;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/s;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p3, p0, Lorg/c/a/a/b/d/b/s;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/s;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/s;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/s;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    sget-object v0, Lorg/c/a/a/b/d/e/k;->a:Lorg/c/a/a/b/d/e/k;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/s;->c:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method
