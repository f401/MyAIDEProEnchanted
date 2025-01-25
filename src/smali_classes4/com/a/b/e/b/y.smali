.class Lcom/a/b/e/b/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/BitSet;

.field private final b:Lcom/a/b/e/b/x;

.field private c:I

.field private final d:Lcom/a/b/e/b/x;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/a/b/e/b/x;Ljava/util/BitSet;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/e/b/y;->b:Lcom/a/b/e/b/x;

    iput-object p2, p0, Lcom/a/b/e/b/y;->a:Ljava/util/BitSet;

    iput p3, p0, Lcom/a/b/e/b/y;->c:I

    new-instance v0, Lcom/a/b/e/b/x;

    invoke-virtual {p1}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/e/b/x;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/e/b/y;->d:Lcom/a/b/e/b/x;

    iput-boolean p4, p0, Lcom/a/b/e/b/y;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/e/b/x;Ljava/util/BitSet;IZLcom/a/b/e/b/y;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/e/b/y;-><init>(Lcom/a/b/e/b/x;Ljava/util/BitSet;IZ)V

    return-void
.end method

.method private a()Lcom/a/b/e/b/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/y;->b:Lcom/a/b/e/b/x;

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/a/b/e/b/y;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    :cond_d
    iget-object v0, p0, Lcom/a/b/e/b/y;->d:Lcom/a/b/e/b/x;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/b/y;)Lcom/a/b/e/b/x;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/e/b/y;->a()Lcom/a/b/e/b/x;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/y;->b:Lcom/a/b/e/b/x;

    invoke-static {v0, p1}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/x;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    invoke-direct {p0, p1, v0}, Lcom/a/b/e/b/y;->a(ILcom/a/b/e/b/u;)V

    return-void
.end method

.method private a(ILcom/a/b/e/b/u;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/a/b/e/b/y;->a:Ljava/util/BitSet;

    if-nez v2, :cond_23

    :cond_6
    :goto_6
    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/a/b/e/b/y;->c:I

    invoke-virtual {p2, v0}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object p2

    iget-boolean v0, p0, Lcom/a/b/e/b/y;->e:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/a/b/e/b/y;->c:I

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->k()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/b/e/b/y;->c:I

    :cond_1b
    iput-boolean v1, p0, Lcom/a/b/e/b/y;->e:Z

    iget-object v0, p0, Lcom/a/b/e/b/y;->d:Lcom/a/b/e/b/x;

    invoke-static {v0, p1, p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/x;ILjava/lang/Object;)V

    return-void

    :cond_23
    iget-object v2, p0, Lcom/a/b/e/b/y;->a:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method static synthetic a(Lcom/a/b/e/b/y;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/y;->a(I)V

    return-void
.end method
