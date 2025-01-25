.class Lcom/a/b/f/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/as;

.field private final b:Lcom/a/b/f/aj;

.field private final c:[Lcom/a/b/e/b/u;

.field private final d:Ljava/util/HashSet;

.field private final e:Ljava/util/HashMap;

.field private final f:Lcom/a/b/f/aw;


# direct methods
.method constructor <init>(Lcom/a/b/f/as;Lcom/a/b/f/aj;)V
    .registers 6

    iput-object p1, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-static {p1}, Lcom/a/b/f/as;->b(Lcom/a/b/f/as;)[[Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/b/f/aj;->e()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/au;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/au;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/a/b/f/aw;

    invoke-direct {v0, p0}, Lcom/a/b/f/aw;-><init>(Lcom/a/b/f/au;)V

    iput-object v0, p0, Lcom/a/b/f/au;->f:Lcom/a/b/f/aw;

    invoke-static {p1}, Lcom/a/b/f/as;->b(Lcom/a/b/f/as;)[[Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/b/f/aj;->e()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private a(ILcom/a/b/e/b/u;)V
    .registers 9

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-gez v0, :cond_16

    if-nez v2, :cond_27

    :cond_15
    return-void

    :cond_16
    iget-object v3, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    if-ne v1, v3, :cond_24

    iget-object v3, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    aput-object p2, v3, v0

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_27
    iget-object v0, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v0, p2}, Lcom/a/b/f/as;->a(Lcom/a/b/f/as;Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_31
    if-ltz v0, :cond_15

    iget-object v3, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    if-eq v1, v4, :cond_50

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v3

    aput-object v3, v4, v0

    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_31
.end method

.method static synthetic a(Lcom/a/b/f/au;)[Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/f/au;)Lcom/a/b/f/aj;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    return-object v0
.end method

.method private b()V
    .registers 5

    new-instance v2, Lcom/a/b/f/av;

    invoke-direct {v2, p0}, Lcom/a/b/f/av;-><init>(Lcom/a/b/f/au;)V

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_11
    if-gez v1, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v0}, Lcom/a/b/f/as;->d(Lcom/a/b/f/as;)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0, v2}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/ae;)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_11
.end method

.method static synthetic c(Lcom/a/b/f/au;)Lcom/a/b/f/as;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-virtual {v0, p0}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/ao;)V

    invoke-direct {p0}, Lcom/a/b/f/au;->b()V

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_15
    if-gez v2, :cond_2a

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    return-void

    :cond_2a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v1, p0, Lcom/a/b/f/au;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    if-eqz v1, :cond_41

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_15

    :cond_41
    invoke-virtual {v0}, Lcom/a/b/f/an;->i()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/a/b/f/au;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3d

    :cond_53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v3, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    if-eq v0, v3, :cond_23

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    :goto_61
    iget-object v3, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v3}, Lcom/a/b/f/as;->b(Lcom/a/b/f/as;)[[Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aput-object v1, v3, v0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_23

    :cond_70
    iget-object v1, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    invoke-static {v1}, Lcom/a/b/f/as;->a([Lcom/a/b/e/b/u;)[Lcom/a/b/e/b/u;

    move-result-object v1

    goto :goto_61
.end method

.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/a/b/f/au;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method a(Lcom/a/b/f/an;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v1, v0}, Lcom/a/b/f/as;->b(Lcom/a/b/f/as;I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v1}, Lcom/a/b/f/as;->a(Lcom/a/b/f/as;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/b/f/an;->c(I)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/f/au;->a(ILcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v0}, Lcom/a/b/f/as;->a(Lcom/a/b/f/as;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/a/b/f/as;->c(Lcom/a/b/f/as;I)V

    goto :goto_6
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    invoke-virtual {p1}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/au;->f:Lcom/a/b/f/aw;

    invoke-virtual {p1, v1}, Lcom/a/b/f/z;->a(Lcom/a/b/f/ag;)V

    invoke-virtual {p1}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    iget-object v1, p0, Lcom/a/b/f/au;->c:[Lcom/a/b/e/b/u;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v1

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    if-nez v0, :cond_35

    move-object v0, v1

    :cond_35
    iget-object v6, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v6, v5}, Lcom/a/b/f/as;->a(Lcom/a/b/f/as;I)Lcom/a/b/e/b/o;

    move-result-object v6

    if-eqz v6, :cond_67

    if-eqz v0, :cond_67

    invoke-virtual {v0, v6}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    :goto_45
    invoke-virtual {v3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-static {}, Lcom/a/b/f/aa;->a()Z

    move-result v5

    if-eqz v5, :cond_63

    if-eqz v2, :cond_69

    invoke-static {v0, v1}, Lcom/a/b/f/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    iget-object v5, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v5}, Lcom/a/b/f/as;->c(Lcom/a/b/f/as;)I

    move-result v5

    if-nez v5, :cond_69

    :cond_63
    invoke-direct {p0, v4, v3}, Lcom/a/b/f/au;->a(ILcom/a/b/e/b/u;)V

    :goto_66
    return-void

    :cond_67
    const/4 v2, 0x1

    goto :goto_45

    :cond_69
    if-eqz v2, :cond_a0

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/a/b/f/au;->a:Lcom/a/b/f/as;

    invoke-static {v1}, Lcom/a/b/f/as;->c(Lcom/a/b/f/as;)I

    move-result v1

    if-nez v1, :cond_a0

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Lcom/a/b/e/b/s;

    invoke-static {v3}, Lcom/a/b/e/b/ac;->s(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v2

    sget-object v5, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6, v0}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    iget-object v0, p0, Lcom/a/b/f/au;->b:Lcom/a/b/f/aj;

    invoke-static {v1, v0}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/au;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4, v3}, Lcom/a/b/f/au;->a(ILcom/a/b/e/b/u;)V

    goto :goto_66

    :cond_a0
    invoke-virtual {p0, p1}, Lcom/a/b/f/au;->a(Lcom/a/b/f/an;)V

    iget-object v0, p0, Lcom/a/b/f/au;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/au;->f:Lcom/a/b/f/aw;

    invoke-virtual {p1, v0}, Lcom/a/b/f/z;->a(Lcom/a/b/f/ag;)V

    invoke-virtual {p0, p1}, Lcom/a/b/f/au;->a(Lcom/a/b/f/an;)V

    return-void
.end method
