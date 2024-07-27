.class public Lorg/c/a/a/b/c/v;
.super Lorg/c/a/a/b/b/h;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected g:Lorg/c/a/a/b/c/w;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/h;-><init>(IIIILjava/lang/String;)V

    new-instance v0, Lorg/c/a/a/b/c/w;

    invoke-direct {v0, p0}, Lorg/c/a/a/b/c/w;-><init>(Lorg/c/a/a/b/b/d;)V

    iput-object v0, p0, Lorg/c/a/a/b/c/v;->g:Lorg/c/a/a/b/c/w;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/w;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/h;-><init>(IIIILjava/lang/String;)V

    iput-object p6, p0, Lorg/c/a/a/b/c/v;->g:Lorg/c/a/a/b/c/w;

    invoke-virtual {p6, p0}, Lorg/c/a/a/b/c/w;->a(Lorg/c/a/a/b/b/d;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/v;)V

    return-void
.end method

.method public h()Lorg/c/a/a/b/c/w;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/v;->g:Lorg/c/a/a/b/c/w;

    return-object v0
.end method
