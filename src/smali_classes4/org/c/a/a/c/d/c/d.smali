.class public Lorg/c/a/a/c/d/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/b/f;


# instance fields
.field protected a:Lorg/c/a/a/d/c;

.field protected b:Lorg/c/a/a/d/c;

.field protected c:I

.field protected d:Lorg/c/a/a/b/b/g;

.field protected e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/d;->a:Lorg/c/a/a/d/c;

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/d;->b:Lorg/c/a/a/d/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/a/c/d/c/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    iput v1, p0, Lorg/c/a/a/c/d/c/d;->e:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/a;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 4

    iget v0, p0, Lorg/c/a/a/c/d/c/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->b:Lorg/c/a/a/d/c;

    iget-object v1, p0, Lorg/c/a/a/c/d/c/d;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/g;

    iput-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/i;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/i;->h()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/d/c/d;->c:I

    :cond_25
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/d/c/d;->e:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/c;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/d;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/g;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/h;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/c/a/a/c/d/c/d;->c:I

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Lorg/c/a/a/b/b/i;->h()I

    move-result v0

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    invoke-virtual {v0, v2}, Lorg/c/a/a/b/b/g;->a(I)V

    :cond_15
    :goto_15
    iget v0, p0, Lorg/c/a/a/c/d/c/d;->e:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->b:Lorg/c/a/a/d/c;

    iget-object v1, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    :cond_28
    invoke-virtual {p1}, Lorg/c/a/a/b/b/i;->h()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/d/c/d;->c:I

    iput v2, p0, Lorg/c/a/a/c/d/c/d;->e:I

    return-void

    :cond_31
    iget-object v0, p0, Lorg/c/a/a/c/d/c/d;->d:Lorg/c/a/a/b/b/g;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/b/g;->a(I)V

    goto :goto_15
.end method
