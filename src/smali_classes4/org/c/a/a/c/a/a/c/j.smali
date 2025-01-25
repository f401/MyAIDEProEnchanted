.class public Lorg/c/a/a/c/a/a/c/j;
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
.method public a(Lorg/c/a/a/c/a/a/a/a/h;Lorg/c/a/a/c/a/a/a/a/h;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/a/h;

    check-cast p2, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/j;->a(Lorg/c/a/a/c/a/a/a/a/h;Lorg/c/a/a/c/a/a/a/a/h;)I

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
