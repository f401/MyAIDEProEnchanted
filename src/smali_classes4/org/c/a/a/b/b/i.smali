.class public Lorg/c/a/a/b/b/i;
.super Lorg/c/a/a/b/b/d;


# instance fields
.field protected g:I


# direct methods
.method public constructor <init>(I)V
    .registers 8

    const/4 v1, 0x0

    const-string v5, "Start movable block"

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/b/d;-><init>(IIIILjava/lang/String;)V

    iput p1, p0, Lorg/c/a/a/b/b/i;->g:I

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/b/f;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/b/f;->a(Lorg/c/a/a/b/b/i;)V

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/i;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{start-movable-block}"

    return-object v0
.end method
