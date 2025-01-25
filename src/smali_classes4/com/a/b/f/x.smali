.class Lcom/a/b/f/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/w;

.field private final b:[Lcom/a/b/e/b/u;

.field private final c:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/a/b/f/w;[Lcom/a/b/e/b/u;Ljava/util/HashSet;)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/f/x;->a:Lcom/a/b/f/w;

    iput-object p2, p0, Lcom/a/b/f/x;->b:[Lcom/a/b/e/b/u;

    iput-object p3, p0, Lcom/a/b/f/x;->c:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/x;)Lcom/a/b/f/w;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/x;->a:Lcom/a/b/f/w;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/f/z;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/a/b/f/x;->a:Lcom/a/b/f/w;

    invoke-static {v0, p1}, Lcom/a/b/f/w;->a(Lcom/a/b/f/w;Lcom/a/b/f/z;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/x;->b:[Lcom/a/b/e/b/u;

    aget-object v1, v1, v0

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/a/b/f/x;->b:[Lcom/a/b/e/b/u;

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_b

    :cond_21
    iget-object v1, p0, Lcom/a/b/f/x;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v1, v0

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v1

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    if-nez v1, :cond_66

    :goto_33
    iget-object v1, p0, Lcom/a/b/f/x;->a:Lcom/a/b/f/w;

    invoke-static {v1}, Lcom/a/b/f/w;->a(Lcom/a/b/f/w;)Lcom/a/b/f/ap;

    move-result-object v1

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/o;)V

    new-instance v4, Lcom/a/b/f/y;

    invoke-direct {v4, p0, v3, v2}, Lcom/a/b/f/y;-><init>(Lcom/a/b/f/x;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/f/x;->a:Lcom/a/b/f/w;

    invoke-static {v0}, Lcom/a/b/f/w;->a(Lcom/a/b/f/w;)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5e
    if-gez v1, :cond_72

    iget-object v0, p0, Lcom/a/b/f/x;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_66
    if-nez v0, :cond_6a

    move-object v0, v1

    goto :goto_33

    :cond_6a
    invoke-virtual {v1, v0}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_33

    :cond_72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0, v4}, Lcom/a/b/f/an;->a(Lcom/a/b/f/ag;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5e
.end method
