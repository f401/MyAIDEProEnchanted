.class public abstract Lorg/c/a/a/b/d/b/b;
.super Lorg/c/a/a/b/d/b/n;


# instance fields
.field protected b:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/b/d/b/b;->b:I

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/b/b;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/b/b;->b:I

    return v0
.end method
