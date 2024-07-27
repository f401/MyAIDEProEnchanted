.class Lcom/a/b/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final a:Lcom/a/b/f/b;

.field private final b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/a/b/f/b;Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/f/c;->a:Lcom/a/b/f/b;

    iput-object p2, p0, Lcom/a/b/f/c;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/a;Lcom/a/b/e/c/a;)I
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/f/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/a/b/e/c/a;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/a;

    check-cast p2, Lcom/a/b/e/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/f/c;->a(Lcom/a/b/e/c/a;Lcom/a/b/e/c/a;)I

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
