.class public La/b/c/bh;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/b/c/bh;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/b/c/bh;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(La/b/c;)V
    .registers 2

    return-void
.end method

.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;)V
    .registers 4

    new-instance v0, La/b/c/r;

    invoke-direct {v0, p1}, La/b/c/r;-><init>(La/b/k;)V

    iget-object p1, p0, La/b/c/bh;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/j;

    invoke-virtual {v0, v1}, La/b/c/r;->b(La/b/j;)V

    goto :goto_b

    :cond_1b
    iget-object p1, p0, La/b/c/bh;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, La/b/c/bh;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/d;

    invoke-virtual {v0, v1}, La/b/c/r;->b(La/b/d;)V

    goto :goto_26

    :cond_36
    iget-object p1, p0, La/b/c/bh;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 3

    iget-object p1, p0, La/b/c/bh;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    iget-object p1, p0, La/b/c/bh;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
