.class public abstract Lorg/c/a/a/b/d/b/a;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/d/b;


# direct methods
.method protected constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/d/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/a;->a:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/a;->a:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
