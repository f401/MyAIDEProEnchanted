.class public Lorg/c/a/a/b/d/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/l;


# instance fields
.field protected a:Z

.field protected b:Lorg/c/a/a/b/d/e/l;

.field protected c:Lorg/c/a/a/b/d/a/f;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/b/d/a/w;->a:Z

    iput-object p1, p0, Lorg/c/a/a/b/d/a/w;->b:Lorg/c/a/a/b/d/e/l;

    iput-object p2, p0, Lorg/c/a/a/b/d/a/w;->c:Lorg/c/a/a/b/d/a/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/w;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/c/a/a/b/d/a/w;->a:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/a/w;->a:Z

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/w;->b:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/a/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/w;->c:Lorg/c/a/a/b/d/a/f;

    return-object v0
.end method
