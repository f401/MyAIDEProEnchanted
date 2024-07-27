.class public Lorg/c/a/a/b/d/e/c;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/c;)V

    return-void
.end method
