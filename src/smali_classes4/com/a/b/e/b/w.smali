.class Lcom/a/b/e/b/w;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/a/b/e/d/d;

.field private c:Lcom/a/b/e/b/o;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/e/b/w;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/b/e/b/w;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/e/b/w;)I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/w;->a:I

    return v0
.end method

.method static synthetic b(Lcom/a/b/e/b/w;)Lcom/a/b/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/w;->b:Lcom/a/b/e/d/d;

    return-object v0
.end method

.method static synthetic c(Lcom/a/b/e/b/w;)Lcom/a/b/e/b/o;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/w;->c:Lcom/a/b/e/b/o;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/b/u;
    .registers 6

    new-instance v0, Lcom/a/b/e/b/u;

    iget v1, p0, Lcom/a/b/e/b/w;->a:I

    iget-object v2, p0, Lcom/a/b/e/b/w;->b:Lcom/a/b/e/d/d;

    iget-object v3, p0, Lcom/a/b/e/b/w;->c:Lcom/a/b/e/b/o;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/b/e/b/u;-><init>(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;Lcom/a/b/e/b/u;)V

    return-object v0
.end method

.method public a(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V
    .registers 4

    iput p1, p0, Lcom/a/b/e/b/w;->a:I

    iput-object p2, p0, Lcom/a/b/e/b/w;->b:Lcom/a/b/e/d/d;

    iput-object p3, p0, Lcom/a/b/e/b/w;->c:Lcom/a/b/e/b/o;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/a/b/e/b/u;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/e/b/u;

    iget v0, p0, Lcom/a/b/e/b/w;->a:I

    iget-object v1, p0, Lcom/a/b/e/b/w;->b:Lcom/a/b/e/d/d;

    iget-object v2, p0, Lcom/a/b/e/b/w;->c:Lcom/a/b/e/b/o;

    invoke-static {p1, v0, v1, v2}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/w;->a:I

    iget-object v1, p0, Lcom/a/b/e/b/w;->b:Lcom/a/b/e/d/d;

    iget-object v2, p0, Lcom/a/b/e/b/w;->c:Lcom/a/b/e/b/o;

    invoke-static {v0, v1, v2}, Lcom/a/b/e/b/u;->c(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)I

    move-result v0

    return v0
.end method
