.class public Lorg/c/a/a/b/d/c/c;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/c/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/c/a/a/d/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/c/o;->a(Lorg/c/a/a/b/d/c/c;)V

    return-void
.end method
