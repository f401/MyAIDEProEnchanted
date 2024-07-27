.class public Lorg/c/a/a/c/a/a/c/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/a/a/a/b/a/k;Lorg/c/a/a/c/a/a/a/b/a/k;)I
    .registers 6

    const v0, 0x7fffffff

    invoke-interface {p1}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v2

    invoke-interface {p2}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v1

    if-nez v2, :cond_0

    move v2, v0

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    sub-int v0, v2, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/k;

    check-cast p2, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/u;->a(Lorg/c/a/a/c/a/a/a/b/a/k;Lorg/c/a/a/c/a/a/a/b/a/k;)I

    move-result v0

    return v0
.end method
