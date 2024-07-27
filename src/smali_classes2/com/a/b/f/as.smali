.class public Lcom/a/b/f/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private b:I

.field private final c:I

.field private d:I

.field private final e:[[Lcom/a/b/e/b/u;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/a/b/f/ap;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    iput v1, p0, Lcom/a/b/f/as;->c:I

    iput-object p1, p0, Lcom/a/b/f/as;->a:Lcom/a/b/f/ap;

    iget v1, p0, Lcom/a/b/f/as;->c:I

    iput v1, p0, Lcom/a/b/f/as;->b:I

    iput v0, p0, Lcom/a/b/f/as;->d:I

    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Lcom/a/b/e/b/u;

    iput-object v1, p0, Lcom/a/b/f/as;->e:[[Lcom/a/b/e/b/u;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/as;->c:I

    new-array v1, v1, [Lcom/a/b/e/b/u;

    :goto_0
    iget v2, p0, Lcom/a/b/f/as;->c:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/a/b/f/as;->e:[[Lcom/a/b/e/b/u;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->c()I

    move-result v2

    aput-object v1, v0, v2

    return-void

    :cond_0
    sget-object v2, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-static {v0, v2}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/a/b/f/ap;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/as;-><init>(Lcom/a/b/f/ap;)V

    iput p2, p0, Lcom/a/b/f/as;->d:I

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/as;)I
    .registers 2

    iget v0, p0, Lcom/a/b/f/as;->b:I

    return v0
.end method

.method private a(I)Lcom/a/b/e/b/o;
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/o;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/b/f/as;I)Lcom/a/b/e/b/o;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/as;->a(I)Lcom/a/b/e/b/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/b/e/b/u;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v2, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/f/as;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/b/f/as;Lcom/a/b/e/b/u;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/as;->a(Lcom/a/b/e/b/u;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/a/b/f/as;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a([Lcom/a/b/e/b/u;)[Lcom/a/b/e/b/u;
    .registers 2

    invoke-static {p0}, Lcom/a/b/f/as;->b([Lcom/a/b/e/b/u;)[Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .registers 3

    iget v0, p0, Lcom/a/b/f/as;->d:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/b/f/as;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/as;->b(I)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private static b([Lcom/a/b/e/b/u;)[Lcom/a/b/e/b/u;
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/b/e/b/u;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/f/as;)[[Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/as;->e:[[Lcom/a/b/e/b/u;

    return-object v0
.end method

.method static synthetic c(Lcom/a/b/f/as;)I
    .registers 2

    iget v0, p0, Lcom/a/b/f/as;->d:I

    return v0
.end method

.method static synthetic c(Lcom/a/b/f/as;I)V
    .registers 2

    iput p1, p0, Lcom/a/b/f/as;->b:I

    return-void
.end method

.method private c(I)Z
    .registers 3

    iget v0, p0, Lcom/a/b/f/as;->c:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/a/b/f/as;)Lcom/a/b/f/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/as;->a:Lcom/a/b/f/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/a/b/f/as;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/as;->c(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/as;->a:Lcom/a/b/f/ap;

    new-instance v1, Lcom/a/b/f/at;

    invoke-direct {v1, p0}, Lcom/a/b/f/at;-><init>(Lcom/a/b/f/as;)V

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/al;)V

    iget-object v0, p0, Lcom/a/b/f/as;->a:Lcom/a/b/f/ap;

    iget v1, p0, Lcom/a/b/f/as;->b:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->e(I)V

    iget-object v0, p0, Lcom/a/b/f/as;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->l()V

    return-void
.end method
