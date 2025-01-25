.class public Lorg/c/a/a/c/a/a/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/a/a/w;Lorg/c/a/a/b/a/a/w;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lorg/c/a/a/b/a/a/w;->b()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/b/a/a/w;->b()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/b/a/a/w;

    check-cast p2, Lorg/c/a/a/b/a/a/w;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/l;->a(Lorg/c/a/a/b/a/a/w;Lorg/c/a/a/b/a/a/w;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
