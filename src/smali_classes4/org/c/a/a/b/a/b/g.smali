.class public Lorg/c/a/a/b/a/b/g;
.super Lorg/c/a/a/b/a/b/a;


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/a;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/g;->b:I

    iput p2, p0, Lorg/c/a/a/b/a/b/g;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/b/g;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/b/g;->c:I

    return v0
.end method
