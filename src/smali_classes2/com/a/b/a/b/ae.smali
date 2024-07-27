.class Lcom/a/b/a/b/ae;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/a/b/a/b/ab;

.field private final b:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/a/b/a/b/ab;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/a/b/ae;->a:Lcom/a/b/a/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/b/ae;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/ae;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ae;-><init>(Lcom/a/b/a/b/ab;)V

    return-void
.end method


# virtual methods
.method a(Lcom/a/b/e/d/c;)Lcom/a/b/a/b/af;
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/b/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/b/a/b/af;

    iget-object v1, p0, Lcom/a/b/a/b/ae;->a:Lcom/a/b/a/b/ab;

    invoke-static {v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;)Lcom/a/b/a/b/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/ag;->a()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/a/b/a/b/af;-><init>(Lcom/a/b/e/d/c;I)V

    iget-object v1, p0, Lcom/a/b/a/b/ae;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method a()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ae;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
