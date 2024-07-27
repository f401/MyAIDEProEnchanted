.class public Lorg/c/a/a/c/a/a/a/c/c;
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
.method public a(Lorg/c/a/a/c/a/a/a/c/a;Lorg/c/a/a/c/a/a/a/c/a;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/c/a;

    check-cast p2, Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/a/c/c;->a(Lorg/c/a/a/c/a/a/a/c/a;Lorg/c/a/a/c/a/a/a/c/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
