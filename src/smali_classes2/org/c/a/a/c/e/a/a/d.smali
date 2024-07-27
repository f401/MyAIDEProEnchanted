.class public Lorg/c/a/a/c/e/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/f/q;


# static fields
.field static final b:Z


# instance fields
.field final a:Lorg/c/a/a/c/e/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/e/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/e/a/a/d;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/c/a/a/c/e/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/f/b;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/c;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/d;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/e;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/e/a/a/d;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/f/e;->a:Lorg/c/a/a/b/f/e;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected EndBlockToken.END_BLOCK at this step. Uses \'JavaFragmentFactory.addEnd***(fragments)\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/f;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/g;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/h;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/e/a/a/d;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/f/h;->a()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LineNumberToken cannot have a known line number. Uses \'LineNumberTokensFragment\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/a/b/f/i;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/j;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/k;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/l;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/e/a/a/d;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/f/l;->a:Lorg/c/a/a/b/f/l;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected StartBlockToken.START_BLOCK at this step. Uses \'JavaFragmentFactory.addStart***(fragments)\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/m;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/n;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/o;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/d;->a:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method
