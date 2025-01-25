.class Lcom/a/b/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/a/a;


# direct methods
.method constructor <init>(Lcom/a/b/f/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/a/b/f/an;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/f/an;->g()Lcom/a/b/e/b/u;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-static {v0}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-static {v3}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/a/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v0, p1, Lcom/a/b/f/z;

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-static {v0}, Lcom/a/b/f/a/a;->b(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/a/b/f/z;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    return-void

    :cond_45
    invoke-static {}, Lcom/a/b/f/aa;->b()Lcom/a/b/e/b/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/a/b/e/b/ah;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/x;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-static {v0}, Lcom/a/b/f/a/a;->c(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/a/b/f/z;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_67
    instance-of v0, p1, Lcom/a/b/f/ac;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/a/b/f/a/b;->a:Lcom/a/b/f/a/a;

    invoke-static {v0}, Lcom/a/b/f/a/a;->d(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/a/b/f/ac;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/a/b;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/a/b;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/a/b;->a(Lcom/a/b/f/an;)V

    return-void
.end method
