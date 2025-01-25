.class public Lorg/c/a/a/b/d/d/k;
.super Lorg/c/a/a/b/d/d/l;


# instance fields
.field protected a:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;Lorg/c/a/a/b/d/d/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/d/l;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/d/k;->a:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/k;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/k;->a:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
