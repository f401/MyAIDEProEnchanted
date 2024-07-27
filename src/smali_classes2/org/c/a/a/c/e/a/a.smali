.class public Lorg/c/a/a/c/e/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/c/a/a/c/e/a/a/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Lorg/c/a/a/c/e/a/a/a;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/c/a/a/c/e/a/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/c/k;

    invoke-interface {v0, v1}, Lorg/c/a/a/b/c/k;->a(Lorg/c/a/a/b/c/l;)V

    goto :goto_0
.end method
