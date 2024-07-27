.class public final Lcom/a/b/f/aj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private c:Ljava/util/BitSet;

.field private d:Ljava/util/BitSet;

.field private e:Lcom/a/b/g/n;

.field private f:I

.field private final g:I

.field private final h:Lcom/a/b/f/ap;

.field private final i:I

.field private final j:Ljava/util/ArrayList;

.field private k:I

.field private l:I

.field private m:Lcom/a/b/g/o;

.field private n:Lcom/a/b/g/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/f/ak;

    invoke-direct {v0}, Lcom/a/b/f/ak;-><init>()V

    sput-object v0, Lcom/a/b/f/aj;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILcom/a/b/f/ap;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/f/aj;->f:I

    iput v1, p0, Lcom/a/b/f/aj;->k:I

    iput v1, p0, Lcom/a/b/f/aj;->l:I

    iput-object p3, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    iput p1, p0, Lcom/a/b/f/aj;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iput p2, p0, Lcom/a/b/f/aj;->g:I

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0}, Lcom/a/b/g/n;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/aj;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/a/b/e/b/ab;ILcom/a/b/f/ap;)Lcom/a/b/f/aj;
    .registers 12

    invoke-virtual {p0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v2

    new-instance v3, Lcom/a/b/f/aj;

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-direct {v3, p1, v0, p2}, Lcom/a/b/f/aj;-><init>(IILcom/a/b/f/ap;)V

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v4

    iget-object v0, v3, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/a/b/e/b/m;->d_()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/a/b/e/b/m;->d_()I

    move-result v5

    :goto_0
    if-lt v0, v5, :cond_1

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/ab;->a(I)Lcom/a/b/g/n;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/d;Lcom/a/b/g/n;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/d;Lcom/a/b/g/n;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/f/ap;->b(Lcom/a/b/e/b/d;Lcom/a/b/g/n;)Lcom/a/b/g/n;

    move-result-object v0

    iput-object v0, v3, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    iget-object v0, v3, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->d()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    iput v0, v3, Lcom/a/b/f/aj;->f:I

    :cond_0
    return-object v3

    :cond_1
    iget-object v6, v3, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    new-instance v7, Lcom/a/b/f/z;

    invoke-virtual {v4, v0}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/a/b/e/b/d;->c(I)I

    move-result v0

    goto :goto_1
.end method

.method private static a(Ljava/util/BitSet;Lcom/a/b/e/b/u;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 13

    const/4 v5, 0x0

    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v7, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v5

    :goto_0
    if-lt v4, v2, :cond_0

    return-void

    :cond_0
    move v1, v4

    :goto_1
    if-lt v1, v2, :cond_1

    move v3, v4

    move v1, v4

    :goto_2
    if-lt v3, v2, :cond_2

    if-ne v4, v1, :cond_6

    move v3, v1

    :goto_3
    if-lt v3, v2, :cond_4

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/a/b/f/ap;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    new-instance v4, Lcom/a/b/f/z;

    new-instance v8, Lcom/a/b/e/b/s;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v9

    invoke-static {v9}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v9

    sget-object v10, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-direct {v8, v9, v10, v3, v0}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-direct {v4, v8, p0}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v3}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v1

    new-instance v3, Lcom/a/b/f/z;

    new-instance v4, Lcom/a/b/e/b/s;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v8

    invoke-static {v8}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v8

    sget-object v9, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-direct {v4, v8, v9, v2, v1}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-direct {v3, v4, p0}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    :goto_5
    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/a/b/f/aj;->a(Ljava/util/BitSet;Lcom/a/b/e/b/u;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/a/b/f/aj;->a(Ljava/util/BitSet;Lcom/a/b/e/b/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/a/b/f/aj;->b(Ljava/util/BitSet;Lcom/a/b/e/b/u;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v1, v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/a/b/f/aj;->b(Ljava/util/BitSet;Lcom/a/b/e/b/u;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/a/b/f/aj;->b(Ljava/util/BitSet;Lcom/a/b/e/b/u;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method private static b(Ljava/util/BitSet;Lcom/a/b/e/b/u;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/a/b/f/aj;)I
    .registers 2

    iget v0, p0, Lcom/a/b/f/aj;->g:I

    return v0
.end method

.method private t()I
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    instance-of v0, v0, Lcom/a/b/f/ac;

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/a/b/f/ac;

    invoke-direct {v2, p1, p0}, Lcom/a/b/f/ac;-><init>(ILcom/a/b/f/aj;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(II)V
    .registers 5

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Lcom/a/b/f/aj;->f:I

    if-ne v0, p1, :cond_1

    iput p2, p0, Lcom/a/b/f/aj;->f:I

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v0, v0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v0, v0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v1, v0, p2}, Lcom/a/b/g/n;->b(II)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/a/b/e/b/j;)V
    .registers 5

    invoke-static {p1, p0}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/a/b/f/aj;->t()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v1, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/u;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/a/b/f/ac;

    invoke-direct {v2, p1, p0}, Lcom/a/b/f/ac;-><init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inserting a move to a block with multiple successors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/z;

    invoke-virtual {v0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/f/aj;->b(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Lcom/a/b/f/z;

    new-instance v2, Lcom/a/b/e/b/s;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v4, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-direct {v1, v2, p0}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/a/b/f/aj;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/f/aj;->k:I

    goto :goto_0
.end method

.method public a(Lcom/a/b/f/ae;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    instance-of v3, v0, Lcom/a/b/f/ac;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/a/b/f/ac;

    invoke-interface {p1, v0}, Lcom/a/b/f/ae;->a(Lcom/a/b/f/ac;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/f/aj;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/aj;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/b/f/ao;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0, p1}, Lcom/a/b/f/an;->a(Lcom/a/b/f/ao;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;
    .registers 7

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->b()Lcom/a/b/f/aj;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v2, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/f/aj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not successor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/f/aj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v2, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v2, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    iget v2, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Lcom/a/b/g/n;->c(I)V

    iget v0, p1, Lcom/a/b/f/aj;->i:I

    iput v0, v1, Lcom/a/b/f/aj;->f:I

    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_2

    iget v0, p0, Lcom/a/b/f/aj;->f:I

    iget v2, p1, Lcom/a/b/f/aj;->i:I

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/a/b/f/aj;->i:I

    iput v0, p0, Lcom/a/b/f/aj;->f:I

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v2, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v2, v1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v2, v1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v2, p0, Lcom/a/b/f/aj;->i:I

    iget-object v3, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v4, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    iget v3, p1, Lcom/a/b/f/aj;->i:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    iget v3, v1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v2, v0, v3}, Lcom/a/b/g/n;->b(II)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/b/f/aj;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->d(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v0, v0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v2, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v2, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    iput v2, p0, Lcom/a/b/f/aj;->f:I

    goto :goto_1
.end method

.method public b(Lcom/a/b/e/b/j;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "last insn must branch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-static {p1, p0}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v2, v0}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/an;)V

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public b(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Lcom/a/b/f/z;

    new-instance v2, Lcom/a/b/e/b/s;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v4, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-direct {v1, v2, p0}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/a/b/f/aj;->t()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/a/b/f/aj;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/f/aj;->l:I

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/f/ai;->c(I)Lcom/a/b/g/o;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    invoke-interface {v0, p1}, Lcom/a/b/g/o;->a(I)V

    return-void
.end method

.method public c(Lcom/a/b/f/aj;)V
    .registers 4

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v1, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    iget v1, p1, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->c(I)V

    iget v0, p1, Lcom/a/b/f/aj;->i:I

    iput v0, p0, Lcom/a/b/f/aj;->f:I

    iget-object v0, p1, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/b/f/aj;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/aj;->m:Lcom/a/b/g/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/f/ai;->c(I)Lcom/a/b/g/o;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/aj;->m:Lcom/a/b/g/o;

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->m:Lcom/a/b/g/o;

    invoke-interface {v0, p1}, Lcom/a/b/g/o;->a(I)V

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/aj;->i:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/aj;->g:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/a/b/f/aj;->g:I

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    return-object v0
.end method

.method public i()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    return-object v0
.end method

.method public j()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/aj;->f:I

    return v0
.end method

.method public l()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    iget v1, p0, Lcom/a/b/f/aj;->f:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(I)I

    move-result v0

    return v0
.end method

.method public m()Lcom/a/b/f/aj;
    .registers 3

    iget v0, p0, Lcom/a/b/f/aj;->f:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/a/b/f/aj;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    goto :goto_0
.end method

.method public n()Lcom/a/b/g/n;
    .registers 6

    new-instance v1, Lcom/a/b/g/n;

    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/a/b/g/n;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    iget-object v4, p0, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    invoke-virtual {v4, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/a/b/f/ap;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public o()Lcom/a/b/f/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    return-object v0
.end method

.method public p()Lcom/a/b/f/aj;
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->b()Lcom/a/b/f/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iput-object v0, v2, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget-object v0, v2, Lcom/a/b/f/aj;->d:Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v2, Lcom/a/b/f/aj;->e:Lcom/a/b/g/n;

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->c(I)V

    iget v0, p0, Lcom/a/b/f/aj;->i:I

    iput v0, v2, Lcom/a/b/f/aj;->f:I

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    iget v1, v2, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v2, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget v3, p0, Lcom/a/b/f/aj;->i:I

    iget v4, v2, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v3, v4}, Lcom/a/b/f/aj;->a(II)V

    iget-object v0, v2, Lcom/a/b/f/aj;->c:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public q()Lcom/a/b/g/o;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/f/ai;->c(I)Lcom/a/b/g/o;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/aj;->n:Lcom/a/b/g/o;

    return-object v0
.end method

.method public r()Z
    .registers 3

    iget v0, p0, Lcom/a/b/f/aj;->i:I

    iget-object v1, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()V
    .registers 5

    const/4 v3, 0x1

    iget v0, p0, Lcom/a/b/f/aj;->l:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/b/f/aj;->l:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/aj;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/aj;->l:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/f/aj;->k:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/a/b/f/aj;->k:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/a/b/f/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/aj;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/aj;->h:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->i()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/b/f/aj;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/b/f/aj;->g:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
