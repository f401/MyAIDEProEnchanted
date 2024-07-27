.class public Lcom/a/b/f/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    return-void
.end method

.method private a()V
    .registers 4

    invoke-static {}, Lcom/a/b/f/aa;->b()Lcom/a/b/e/b/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    new-instance v2, Lcom/a/b/f/t;

    invoke-direct {v2, p0, v0}, Lcom/a/b/f/t;-><init>(Lcom/a/b/f/s;Lcom/a/b/e/b/ah;)V

    invoke-virtual {v1, v2}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    return-void
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/s;

    invoke-direct {v0, p0}, Lcom/a/b/f/s;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/s;->a()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/s;Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/f/s;->a(Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V

    return-void
.end method

.method private a(Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V
    .registers 11

    invoke-virtual {p1}, Lcom/a/b/f/z;->f()Lcom/a/b/e/b/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {p3, v0, p2, p4}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v1

    if-nez p4, :cond_0

    new-instance v0, Lcom/a/b/e/b/s;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    :goto_0
    new-instance v1, Lcom/a/b/f/z;

    invoke-virtual {p1}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    invoke-virtual {p1}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2, p1}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/an;)V

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;)V

    return-void

    :cond_0
    new-instance v0, Lcom/a/b/e/b/r;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/b/e/b/u;)Z
    .registers 2

    invoke-static {p0}, Lcom/a/b/f/s;->b(Lcom/a/b/e/b/u;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/b/f/s;Lcom/a/b/f/z;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/s;->a(Lcom/a/b/f/z;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/a/b/f/z;)Z
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/z;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    invoke-virtual {v3, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/a/b/e/d/d;->c()I

    move-result v3

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    check-cast v0, Lcom/a/b/e/c/a;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/a/b/f/s;->a(Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/s;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/z;

    sget-object v1, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/a/b/f/s;->a(Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/a/b/e/b/u;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    instance-of v2, v0, Lcom/a/b/e/c/v;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/a/b/e/c/v;

    invoke-virtual {v0}, Lcom/a/b/e/c/v;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
