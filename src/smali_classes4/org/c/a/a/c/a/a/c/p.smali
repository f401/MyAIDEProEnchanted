.class public Lorg/c/a/a/c/a/a/c/p;
.super Lorg/c/a/a/b/d/b/d;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/l;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/w;)V
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/p;->a:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/c/a;->c(Lorg/c/a/a/b/d/e/l;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/l;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/p;->a:Lorg/c/a/a/b/d/e/l;

    return-void
.end method
