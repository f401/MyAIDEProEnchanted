.class Lorg/c/a/a/c/d/b/e;
.super Lorg/c/a/a/c/d/c/b;


# instance fields
.field final a:Lorg/c/a/a/c/d/b/a;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/d/b/e;->a:Lorg/c/a/a/c/d/b/a;

    invoke-direct {p0}, Lorg/c/a/a/c/d/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 3

    iget-boolean v0, p0, Lorg/c/a/a/c/d/b/e;->f:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/d/b/e;->f:Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lorg/c/a/a/c/d/b/e;->g()V

    :cond_19
    iget v0, p0, Lorg/c/a/a/c/d/b/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/e;->c:I

    goto :goto_b
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 3

    iget-boolean v0, p0, Lorg/c/a/a/c/d/b/e;->f:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/e;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/e;->c:I

    :cond_10
    return-void
.end method
