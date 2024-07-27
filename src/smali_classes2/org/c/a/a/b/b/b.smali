.class public Lorg/c/a/a/b/b/b;
.super Lorg/c/a/a/b/b/d;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const-string v5, "End movable block"

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/b/d;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/b/f;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/b/f;->a(Lorg/c/a/a/b/b/b;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{end-movable-block}"

    return-object v0
.end method
