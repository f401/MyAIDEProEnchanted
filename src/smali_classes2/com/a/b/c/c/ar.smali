.class Lcom/a/b/c/c/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/at;Lcom/a/b/c/c/at;)I
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ah;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/at;

    check-cast p2, Lcom/a/b/c/c/at;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/c/ar;->a(Lcom/a/b/c/c/at;Lcom/a/b/c/c/at;)I

    move-result v0

    return v0
.end method
