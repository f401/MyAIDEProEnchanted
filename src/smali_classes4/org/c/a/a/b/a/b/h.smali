.class public Lorg/c/a/a/b/a/b/h;
.super Lorg/c/a/a/b/a/b/a;


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/a;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/h;->b:I

    iput p2, p0, Lorg/c/a/a/b/a/b/h;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/b/h;->c:I

    return v0
.end method
