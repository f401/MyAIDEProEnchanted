.class Lcom/a/b/c/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/c/c/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/a;Lcom/a/b/c/c/a;)I
    .registers 5

    invoke-static {p1}, Lcom/a/b/c/c/a;->a(Lcom/a/b/c/c/a;)Lcom/a/b/c/c/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/c/bd;->g()I

    move-result v0

    invoke-static {p2}, Lcom/a/b/c/c/a;->a(Lcom/a/b/c/c/a;)Lcom/a/b/c/c/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/c/bd;->g()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, -0x1

    :goto_13
    return v0

    :cond_14
    if-le v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_13

    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/a;

    check-cast p2, Lcom/a/b/c/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/c/b;->a(Lcom/a/b/c/c/a;Lcom/a/b/c/c/a;)I

    move-result v0

    return v0
.end method
