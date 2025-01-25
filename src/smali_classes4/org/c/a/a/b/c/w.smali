.class public Lorg/c/a/a/b/c/w;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/c/a/a/d/c;

.field protected b:I


# direct methods
.method constructor <init>(Lorg/c/a/a/b/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/b/c/w;->a:Lorg/c/a/a/d/c;

    const v0, 0x7fffffff

    iput v0, p0, Lorg/c/a/a/b/c/w;->b:I

    iget-object v0, p0, Lorg/c/a/a/b/c/w;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    iget v0, p0, Lorg/c/a/a/b/c/w;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/c/a/a/b/c/w;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_13
    iget v0, p0, Lorg/c/a/a/b/c/w;->b:I

    return v0

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    iget v2, p0, Lorg/c/a/a/b/c/w;->b:I

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v3

    if-le v2, v3, :cond_d

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/b/c/w;->b:I

    goto :goto_d
.end method

.method a(Lorg/c/a/a/b/b/d;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/c/w;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method
