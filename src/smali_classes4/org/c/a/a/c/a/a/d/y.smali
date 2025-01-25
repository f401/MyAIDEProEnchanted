.class public Lorg/c/a/a/c/a/a/d/y;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:I

.field protected b:Z


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/d/y;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/d/y;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/w;)V
    .registers 5

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/b/b;

    iget-boolean v1, p0, Lorg/c/a/a/c/a/a/d/y;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v0

    iget v2, p0, Lorg/c/a/a/c/a/a/d/y;->a:I

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_11
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/d/y;->b:Z

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/d/y;->b:Z

    return v0
.end method
