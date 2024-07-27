.class public Lorg/c/a/a/c/e/a/a/c;
.super Lorg/c/a/a/b/f/a;


# static fields
.field static final c:Z


# instance fields
.field public a:I

.field final b:Lorg/c/a/a/c/e/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/e/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/e/a/a/c;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/c/a/a/c/e/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    invoke-direct {p0}, Lorg/c/a/a/b/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/e/a/a/c;->a:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/b;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/c;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/d;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/e;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/e/a/a/c;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/f/e;->a:Lorg/c/a/a/b/f/e;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected EndBlockToken.END_BLOCK at this step. Uses \'JavaFragmentFactory.addEnd***(fragments)\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/f;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/g;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/h;)V
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/b/f/h;->a()I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/c/a/a/c/e/a/a/c;->a:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/c/a/a/c/e/a/a/c;->a:I

    sub-int v1, v0, v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v1, v1, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    new-instance v2, Lorg/c/a/a/b/f/i;

    iget v3, p0, Lorg/c/a/a/c/e/a/a/c;->a:I

    sub-int/2addr v0, v3

    invoke-direct {v2, v0}, Lorg/c/a/a/b/f/i;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/b/f/h;->a()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/e/a/a/c;->a:I

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    sget-object v1, Lorg/c/a/a/b/f/i;->a:Lorg/c/a/a/b/f/i;

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    sget-object v1, Lorg/c/a/a/b/f/i;->b:Lorg/c/a/a/b/f/i;

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lorg/c/a/a/b/f/j;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/k;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/l;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/e/a/a/c;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/f/l;->a:Lorg/c/a/a/b/f/l;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected StartBlockToken.START_BLOCK at this step. Uses \'JavaFragmentFactory.addStart***(fragments)\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/m;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/n;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/o;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/e/a/a/c;->b:Lorg/c/a/a/c/e/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/c/e/a/a/a;->n:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method
