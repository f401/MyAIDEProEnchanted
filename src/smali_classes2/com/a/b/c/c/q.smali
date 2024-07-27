.class Lcom/a/b/c/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final a:Lcom/a/b/c/c/p;


# direct methods
.method constructor <init>(Lcom/a/b/c/c/p;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/c/c/q;->a:Lcom/a/b/c/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/ad;Lcom/a/b/c/b/ad;)I
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/b/ad;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/a/b/c/b/ad;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/b/ad;

    check-cast p2, Lcom/a/b/c/b/ad;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/c/q;->a(Lcom/a/b/c/b/ad;Lcom/a/b/c/b/ad;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
