.class public Lorg/c/a/a/b/a/b/b;
.super Lorg/c/a/a/b/a/b/a;


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/a;-><init>(B)V

    iput p1, p0, Lorg/c/a/a/b/a/b/b;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/b/b;->b:I

    return v0
.end method
