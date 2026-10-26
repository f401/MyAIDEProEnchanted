.class public Lorg/c/a/a/b/a/b/d;
.super Lorg/c/a/a/b/a/b/m;


# instance fields
.field protected b:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/m;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/d;->b:F

    return-void
.end method


# virtual methods
.method public b()F
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/b/d;->b:F

    return v0
.end method
