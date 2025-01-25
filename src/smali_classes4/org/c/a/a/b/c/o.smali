.class public Lorg/c/a/a/b/c/o;
.super Lorg/c/a/a/b/c/q;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/o;)V

    return-void
.end method
