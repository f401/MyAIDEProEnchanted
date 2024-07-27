.class public Lorg/c/a/a/b/d/d/x;
.super Lorg/c/a/a/b/d/d/z;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/x;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DefaultLabel"

    return-object v0
.end method
