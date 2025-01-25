.class public Lorg/c/a/a/c/c/a/b/e;
.super Lorg/c/a/a/d/c;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/c/a/b/k;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/c/c/a/b/k;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lorg/c/a/a/c/c/a/b/k;->b()I

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lorg/c/a/a/b/c/z;

    invoke-direct {v0, p1}, Lorg/c/a/a/b/c/z;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    return-void

    :cond_15
    new-instance v0, Lorg/c/a/a/b/c/m;

    invoke-direct {v0, p1}, Lorg/c/a/a/b/c/m;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method
