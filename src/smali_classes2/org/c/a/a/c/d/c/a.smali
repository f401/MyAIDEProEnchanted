.class public abstract Lorg/c/a/a/c/d/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/b/f;


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/a;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/c;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/d;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/g;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/h;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/d/c/a;->c:I

    return v0
.end method
