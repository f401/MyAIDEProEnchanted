.class public Lorg/c/a/a/b/a/b/j;
.super Lorg/c/a/a/b/a/b/a;


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/a;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/j;->b:I

    iput p2, p0, Lorg/c/a/a/b/a/b/j;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/b/j;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/b/j;->c:I

    return v0
.end method
