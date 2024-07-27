.class public Lcom/a/b/f/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/w;->a:Lcom/a/b/f/ap;

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/w;Lcom/a/b/f/z;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/w;->a(Lcom/a/b/f/z;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/a/b/f/z;)I
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/f/z;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/b/f/w;)Lcom/a/b/f/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/w;->a:Lcom/a/b/f/ap;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/w;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->h()I

    move-result v0

    new-array v0, v0, [Lcom/a/b/e/b/u;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/a/b/f/w;->a:Lcom/a/b/f/ap;

    new-instance v3, Lcom/a/b/f/x;

    invoke-direct {v3, p0, v0, v1}, Lcom/a/b/f/x;-><init>(Lcom/a/b/f/w;[Lcom/a/b/e/b/u;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    iget-object v0, p0, Lcom/a/b/f/w;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Ljava/util/Set;)V

    return-void
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/w;

    invoke-direct {v0, p0}, Lcom/a/b/f/w;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/w;->a()V

    return-void
.end method
