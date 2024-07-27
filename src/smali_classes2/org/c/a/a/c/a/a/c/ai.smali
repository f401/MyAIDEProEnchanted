.class public Lorg/c/a/a/c/a/a/c/ai;
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
.method public a(Lorg/c/a/a/c/a/a/a/a/e;Lorg/c/a/a/c/a/a/a/a/e;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/e;->a()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/e;->a()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/a/e;

    check-cast p2, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/ai;->a(Lorg/c/a/a/c/a/a/a/a/e;Lorg/c/a/a/c/a/a/a/a/e;)I

    move-result v0

    return v0
.end method
