.class Lorg/c/a/a/c/d/b/d;
.super Lorg/c/a/a/c/d/c/b;


# instance fields
.field final a:Lorg/c/a/a/c/d/b/a;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/d/b/d;->a:Lorg/c/a/a/c/d/b/a;

    invoke-direct {p0}, Lorg/c/a/a/c/d/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 3

    iget-boolean v0, p0, Lorg/c/a/a/c/d/b/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/d;->c:I

    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 3

    iget-boolean v0, p0, Lorg/c/a/a/c/d/b/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/d/b/d;->f:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/d;->b:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/c/a/a/c/d/b/d;->g()V

    :cond_2
    iget v0, p0, Lorg/c/a/a/c/d/b/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/d;->c:I

    goto :goto_0
.end method
