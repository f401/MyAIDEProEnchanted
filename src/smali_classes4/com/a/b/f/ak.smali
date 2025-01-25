.class public final Lcom/a/b/f/ak;
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
.method public a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)I
    .registers 5

    invoke-static {p1}, Lcom/a/b/f/aj;->d(Lcom/a/b/f/aj;)I

    move-result v0

    invoke-static {p2}, Lcom/a/b/f/aj;->d(Lcom/a/b/f/aj;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/f/aj;

    check-cast p2, Lcom/a/b/f/aj;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/f/ak;->a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)I

    move-result v0

    return v0
.end method
