.class public Lorg/c/a/a/b/c/g;
.super Lorg/c/a/a/b/b/a;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected final g:Lorg/c/a/a/b/c/w;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/w;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/a;-><init>(IIIILjava/lang/String;)V

    iput-object p6, p0, Lorg/c/a/a/b/c/g;->g:Lorg/c/a/a/b/c/w;

    invoke-virtual {p6, p0}, Lorg/c/a/a/b/c/w;->a(Lorg/c/a/a/b/b/d;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/g;)V

    return-void
.end method

.method public h()Lorg/c/a/a/b/c/w;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/g;->g:Lorg/c/a/a/b/c/w;

    return-object v0
.end method
