.class public Lorg/c/a/a/c/f/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 8

    const-string v0, "printer"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a/b/a;

    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v3, Lorg/c/a/a/c/f/a/a;

    invoke-direct {v3}, Lorg/c/a/a/c/f/a/a;-><init>()V

    const-string v2, "maxLineNumber"

    invoke-virtual {p1, v2}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v2, "majorVersion"

    invoke-virtual {p1, v2}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v2, "minorVersion"

    invoke-virtual {p1, v2}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v4, v5, v2}, Lorg/c/a/a/a/b/a;->a(III)V

    invoke-virtual {v3, v0, v1}, Lorg/c/a/a/c/f/a/a;->a(Lorg/c/a/a/a/b/a;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Lorg/c/a/a/c/f/a/a;->a()V

    invoke-interface {v0}, Lorg/c/a/a/a/b/a;->a()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/f/p;

    invoke-interface {v1, v3}, Lorg/c/a/a/b/f/p;->a(Lorg/c/a/a/b/f/q;)V

    goto :goto_0
.end method
