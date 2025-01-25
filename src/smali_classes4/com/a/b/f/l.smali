.class public Lcom/a/b/f/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/l;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/a/b/e/b/u;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-object v0, v0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private a(Lcom/a/b/f/an;)Lcom/a/b/f/an;
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

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

    check-cast v0, Lcom/a/b/f/an;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/f/l;)Lcom/a/b/f/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    return-object v0
.end method

.method private a()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-boolean v2, v0, Lcom/a/b/f/p;->e:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    sget-object v3, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    if-ne v2, v3, :cond_7

    iget-object v0, v0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;)Lcom/a/b/f/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/v;

    invoke-virtual {v0}, Lcom/a/b/e/c/v;->j()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/f/an;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v6}, Lcom/a/b/f/ap;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->l()V

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    iget v2, p0, Lcom/a/b/f/l;->b:I

    invoke-static {v0, v2}, Lcom/a/b/f/am;->a(Lcom/a/b/f/ap;I)V

    invoke-direct {p0}, Lcom/a/b/f/l;->b()V

    goto :goto_7

    :cond_78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/f/an;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5d
.end method

.method private a(Lcom/a/b/e/b/u;Lcom/a/b/f/an;Lcom/a/b/f/p;Ljava/util/ArrayList;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_e8

    :cond_d
    :goto_d
    return-void

    :sswitch_e
    iget-object v0, p3, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :sswitch_23
    iget-object v0, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    sget-object v1, Lcom/a/b/f/q;->c:Lcom/a/b/f/q;

    invoke-virtual {v0, v1}, Lcom/a/b/f/q;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_d

    sget-object v0, Lcom/a/b/f/q;->c:Lcom/a/b/f/q;

    iput-object v0, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto :goto_d

    :sswitch_32
    invoke-virtual {p2}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-nez v0, :cond_47

    iput-boolean v3, p3, Lcom/a/b/f/p;->e:Z

    :cond_47
    :sswitch_47
    invoke-virtual {p2}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->c()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    iput-boolean v3, p3, Lcom/a/b/f/p;->e:Z

    invoke-virtual {p2}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    if-ne v1, v2, :cond_9a

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    invoke-direct {p0, v0, p3}, Lcom/a/b/f/l;->a(Lcom/a/b/f/p;Lcom/a/b/f/p;)V

    iget-object v1, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iget-object v2, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    invoke-virtual {v1, v2}, Lcom/a/b/f/q;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_d

    iget-object v0, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iput-object v0, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto/16 :goto_d

    :cond_9a
    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    invoke-direct {p0, p3, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/f/p;Lcom/a/b/f/p;)V

    iget-object v1, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iget-object v2, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    invoke-virtual {v1, v2}, Lcom/a/b/f/q;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_d

    iget-object v1, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iput-object v1, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto/16 :goto_d

    :sswitch_c5
    invoke-virtual {p2}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-nez v0, :cond_d

    iput-boolean v3, p3, Lcom/a/b/f/p;->e:Z

    goto/16 :goto_d

    :sswitch_db
    sget-object v0, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    iput-object v0, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto/16 :goto_d

    :sswitch_e1
    sget-object v0, Lcom/a/b/f/q;->d:Lcom/a/b/f/q;

    iput-object v0, p3, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto/16 :goto_d

    nop

    :sswitch_data_e8
    .sparse-switch
        0x2 -> :sswitch_e
        0x7 -> :sswitch_23
        0x8 -> :sswitch_23
        0x21 -> :sswitch_e1
        0x23 -> :sswitch_e1
        0x26 -> :sswitch_c5
        0x27 -> :sswitch_32
        0x2b -> :sswitch_23
        0x2f -> :sswitch_47
        0x30 -> :sswitch_db
        0x31 -> :sswitch_e1
        0x32 -> :sswitch_e1
        0x33 -> :sswitch_e1
        0x34 -> :sswitch_e1
        0x35 -> :sswitch_e1
    .end sparse-switch
.end method

.method private a(Lcom/a/b/e/b/u;Lcom/a/b/f/p;)V
    .registers 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    iget-object v1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v4

    if-nez v4, :cond_3f

    invoke-direct {p0, v1, p2, v2}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/f/p;Ljava/util/ArrayList;)V

    goto :goto_29

    :cond_3f
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;Lcom/a/b/f/an;Lcom/a/b/f/p;Ljava/util/ArrayList;)V

    goto :goto_29
.end method

.method private a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Ljava/util/HashSet;)V
    .registers 16

    new-instance v5, Lcom/a/b/e/c/ae;

    sget-object v0, Lcom/a/b/e/b/h;->b:Lcom/a/b/e/d/c;

    invoke-direct {v5, v0}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    sget-object v2, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->m()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/a/b/f/an;

    iget-object v1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->n()I

    move-result v1

    invoke-static {v1, v5}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v9

    sget-object v8, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {v0}, Lcom/a/b/f/aj;->m()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    new-instance v7, Lcom/a/b/e/c/z;

    new-instance v0, Lcom/a/b/e/c/aa;

    new-instance v2, Lcom/a/b/e/c/ad;

    const-string v3, "<init>"

    invoke-direct {v2, v3}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/a/b/e/c/ad;

    const-string v4, "(I)V"

    invoke-direct {v3, v4}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    invoke-direct {v7, v5, v0}, Lcom/a/b/e/c/z;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    invoke-static {v9, p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/a/b/f/aj;->m()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-static {v9}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {v6}, Lcom/a/b/f/aj;->k()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/a/b/f/aj;->a(II)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V
    .registers 12

    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v2

    const/16 v0, 0x38

    if-ne p4, v0, :cond_39

    invoke-virtual {p3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/b/ac;->e(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v1

    :goto_10
    if-nez p5, :cond_3e

    new-instance v0, Lcom/a/b/e/b/s;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    :goto_1b
    new-instance v1, Lcom/a/b/f/z;

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;)V

    return-void

    :cond_39
    invoke-static {p4, p3, p2, p5}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v1

    goto :goto_10

    :cond_3e
    new-instance v0, Lcom/a/b/e/b/r;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    goto :goto_1b
.end method

.method private a(Lcom/a/b/f/an;Lcom/a/b/f/an;ILjava/util/ArrayList;)V
    .registers 13

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_a
    if-lt v6, p3, :cond_d

    return-void

    :cond_d
    invoke-virtual {v7}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/c/ah;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/a;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/a/b/e/c/ag;

    iget-object v1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->n()I

    move-result v1

    invoke-static {v1, v0}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_a
.end method

.method private a(Lcom/a/b/f/an;Lcom/a/b/f/an;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 15

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_fe

    :cond_14
    :goto_14
    return-void

    :sswitch_15
    invoke-direct {p0, p1}, Lcom/a/b/f/l;->b(Lcom/a/b/f/an;)Lcom/a/b/f/an;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/v;

    invoke-virtual {v0}, Lcom/a/b/e/c/v;->j()I

    move-result v0

    if-ge v0, v7, :cond_4b

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-static {v0}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    :goto_47
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_4b
    invoke-virtual {v2, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v1, v0, p4}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :sswitch_64
    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/v;

    invoke-virtual {v0}, Lcom/a/b/e/c/v;->j()I

    move-result v6

    if-ge v6, v7, :cond_9c

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-static {v1}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->n()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :cond_9c
    invoke-virtual {v2, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Ljava/util/HashSet;)V

    goto/16 :goto_14

    :sswitch_a5
    invoke-virtual {p2}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/a/b/f/l;->b(Lcom/a/b/f/an;)Lcom/a/b/f/an;

    move-result-object v1

    sget-object v2, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    check-cast v5, Lcom/a/b/e/c/a;

    move-object v0, p0

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :sswitch_c7
    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/i;

    invoke-virtual {v0}, Lcom/a/b/e/b/i;->c()Ljava/util/ArrayList;

    move-result-object v8

    move v6, v1

    :goto_d2
    if-ge v6, v7, :cond_14

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-static {v1, v0}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v3

    sget-object v2, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/a/b/e/c/a;

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V

    invoke-virtual {p3, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_d2

    nop

    :sswitch_data_fe
    .sparse-switch
        0x22 -> :sswitch_a5
        0x26 -> :sswitch_15
        0x27 -> :sswitch_64
        0x39 -> :sswitch_c7
    .end sparse-switch
.end method

.method private a(Lcom/a/b/f/an;Lcom/a/b/f/p;Ljava/util/ArrayList;)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;)I

    move-result v1

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_3b

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    if-eq v0, p2, :cond_3a

    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/a/b/f/p;->e:Z

    iget-object v2, p2, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    iget-object v3, v0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v2, p2, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iget-object v3, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    invoke-virtual {v2, v3}, Lcom/a/b/f/q;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_32

    iget-object v2, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iput-object v2, p2, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    :cond_32
    invoke-direct {p0, p2, v0}, Lcom/a/b/f/l;->b(Lcom/a/b/f/p;Lcom/a/b/f/p;)V

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p2, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/l;

    invoke-direct {v0, p0}, Lcom/a/b/f/l;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/l;->c()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/l;Lcom/a/b/f/an;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/l;->c(Lcom/a/b/f/an;)V

    return-void
.end method

.method private a(Lcom/a/b/f/p;Lcom/a/b/f/p;)V
    .registers 4

    iget-object v0, p2, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p2, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p1, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p1, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method private b(Lcom/a/b/f/an;)Lcom/a/b/f/an;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    if-lt v1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/aa;->a()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_28

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_28
    iget-object v3, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v3}, Lcom/a/b/f/ap;->m()[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    iget v6, p0, Lcom/a/b/f/l;->b:I

    if-ge v5, v6, :cond_4a

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    iget v6, p0, Lcom/a/b/f/l;->b:I

    if-lt v5, v6, :cond_24

    :cond_4a
    new-instance v5, Lcom/a/b/f/m;

    invoke-direct {v5, p0, v0, v4}, Lcom/a/b/f/m;-><init>(Lcom/a/b/f/l;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0, v5}, Lcom/a/b/f/an;->a(Lcom/a/b/f/ag;)V

    goto :goto_59
.end method

.method private b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;Lcom/a/b/e/b/u;ILcom/a/b/e/c/a;)V
    .registers 12

    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v2

    invoke-static {p4, p3, p2, p5}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v1

    if-nez p5, :cond_33

    new-instance v0, Lcom/a/b/e/b/ag;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    sget-object v3, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    :goto_15
    new-instance v1, Lcom/a/b/f/z;

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;)V

    return-void

    :cond_33
    new-instance v0, Lcom/a/b/e/b/af;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    sget-object v4, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    goto :goto_15
.end method

.method private b(Lcom/a/b/f/p;Lcom/a/b/f/p;)V
    .registers 6

    iget-object v0, p2, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p2, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    return-void

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-object v2, v0, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-object v2, v0, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/a/b/f/l;->a:Lcom/a/b/f/ap;

    new-instance v1, Lcom/a/b/f/n;

    invoke-direct {v1, p0}, Lcom/a/b/f/n;-><init>(Lcom/a/b/f/l;)V

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/al;)V

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/a/b/f/l;->a()V

    return-void

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-object v1, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    sget-object v3, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    if-eq v1, v3, :cond_10

    iget-object v1, v0, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/p;

    iget-object v4, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iget-object v5, v1, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    invoke-virtual {v4, v5}, Lcom/a/b/f/q;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_2c

    iget-object v4, v0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    iput-object v4, v1, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    goto :goto_2c
.end method

.method private c(Lcom/a/b/f/an;)V
    .registers 7

    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    const/16 v2, 0x38

    if-ne v0, v2, :cond_24

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/b/e/d/d;->c()I

    move-result v2

    if-ne v2, v3, :cond_24

    invoke-direct {p0, p1}, Lcom/a/b/f/l;->d(Lcom/a/b/f/an;)Lcom/a/b/f/p;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;Lcom/a/b/f/p;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 v2, 0x3

    if-ne v0, v2, :cond_47

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/b/e/d/d;->c()I

    move-result v2

    if-ne v2, v3, :cond_47

    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    iget v3, p0, Lcom/a/b/f/l;->b:I

    sget-object v4, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    invoke-direct {v0, v2, v3, v4}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    iget-object v2, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;Lcom/a/b/f/p;)V

    goto :goto_23

    :cond_47
    const/16 v2, 0x37

    if-ne v0, v2, :cond_23

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->c()I

    move-result v0

    if-ne v0, v3, :cond_23

    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    iget v3, p0, Lcom/a/b/f/l;->b:I

    sget-object v4, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    invoke-direct {v0, v2, v3, v4}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    iget-object v2, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;Lcom/a/b/f/p;)V

    goto :goto_23
.end method

.method private d(Lcom/a/b/f/an;)Lcom/a/b/f/p;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/a/b/f/l;->a(Lcom/a/b/f/an;)Lcom/a/b/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_b4

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :sswitch_16
    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    :goto_23
    iget-object v1, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :sswitch_29
    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/b/f/p;->e:Z

    goto :goto_23

    :cond_4c
    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    goto :goto_23

    :sswitch_5a
    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    goto :goto_23

    :sswitch_68
    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/l;->a(Lcom/a/b/e/b/u;)I

    move-result v2

    iget-object v3, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_8e

    iget-object v0, p0, Lcom/a/b/f/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/p;

    iget-object v2, v0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_15

    :cond_8e
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v2, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v0, v2, :cond_a4

    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    goto :goto_23

    :cond_a4
    new-instance v0, Lcom/a/b/f/p;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/l;->b:I

    sget-object v3, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/p;-><init>(IILcom/a/b/f/q;)V

    goto/16 :goto_23

    nop

    :sswitch_data_b4
    .sparse-switch
        0x5 -> :sswitch_16
        0x26 -> :sswitch_68
        0x28 -> :sswitch_16
        0x29 -> :sswitch_29
        0x2a -> :sswitch_29
        0x2b -> :sswitch_68
        0x2d -> :sswitch_68
        0x2e -> :sswitch_5a
    .end sparse-switch
.end method
