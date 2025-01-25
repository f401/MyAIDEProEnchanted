.class public Lorg/c/a/a/c/a/a/a/b/c/f;
.super Lorg/c/a/a/b/d/d/ae;


# instance fields
.field protected e:Z

.field protected f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/a/b/d/d/ae;-><init>(Ljava/util/List;Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;)V

    iput-boolean p5, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->e:Z

    iput-boolean p6, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->f:Z

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;ZZ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/b/d/d/ae;-><init>(Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;)V

    iput-boolean p4, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->e:Z

    iput-boolean p5, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->a:Ljava/util/List;

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->a:Ljava/util/List;

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->e:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/b/c/f;->f:Z

    return v0
.end method
