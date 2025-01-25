.class public Lorg/c/a/a/b/d/e/p;
.super Lorg/c/a/a/b/d/e/v;

# interfaces
.implements Lorg/c/a/a/b/d/e/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/p;)V

    return-void
.end method
