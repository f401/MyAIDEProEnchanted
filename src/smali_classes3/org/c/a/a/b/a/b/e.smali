.class public Lorg/c/a/a/b/a/b/e;
.super Lorg/c/a/a/b/a/b/m;


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/m;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/e;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/b/e;->b:I

    return v0
.end method
