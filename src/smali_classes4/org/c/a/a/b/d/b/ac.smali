.class public Lorg/c/a/a/b/d/b/ac;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/c;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/ac;->a:Lorg/c/a/a/b/d/a/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ac;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/a/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ac;->a:Lorg/c/a/a/b/d/a/c;

    return-object v0
.end method
