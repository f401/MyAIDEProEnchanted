.class public Lorg/c/a/a/b/c/p;
.super Lorg/c/a/a/b/b/g;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/g;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/p;)V

    return-void
.end method
