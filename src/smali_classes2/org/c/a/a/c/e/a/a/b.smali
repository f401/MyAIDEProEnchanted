.class public Lorg/c/a/a/c/e/a/a/b;
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
.method public a(Lorg/c/a/a/b/c/i;Lorg/c/a/a/b/c/i;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/b/c/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/c/a/a/b/c/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/b/c/i;

    check-cast p2, Lorg/c/a/a/b/c/i;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/e/a/a/b;->a(Lorg/c/a/a/b/c/i;Lorg/c/a/a/b/c/i;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/e/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
