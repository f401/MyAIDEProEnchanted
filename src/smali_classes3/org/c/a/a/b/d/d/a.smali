.class public Lorg/c/a/a/b/d/d/a;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected b:Lorg/c/a/a/b/d/b/n;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/a;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/a;->b:Lorg/c/a/a/b/d/b/n;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/d/a;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/a;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/a;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/a;->b:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method
