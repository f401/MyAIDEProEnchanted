.class public Lorg/c/a/a/b/d/a/c;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/a/aj;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/l;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/l;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/c;->a:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/c;->a:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/c;)V

    return-void
.end method
