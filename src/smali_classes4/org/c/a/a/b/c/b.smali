.class public Lorg/c/a/a/b/c/b;
.super Lorg/c/a/a/b/c/a;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lorg/c/a/a/b/c/a;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/b;)V

    return-void
.end method
