.class public Lorg/c/a/a/b/d/d/ac;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected b:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ac;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/ac;->b:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ac;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/ac;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ac;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public d()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ac;->b:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
