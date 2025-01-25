.class Lcom/a/b/f/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/al;


# instance fields
.field final a:Lcom/a/b/f/i;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/a/b/f/i;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/f/k;->a:Lcom/a/b/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/f/k;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/f/i;Lcom/a/b/f/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/k;-><init>(Lcom/a/b/f/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V
    .registers 6

    new-instance v0, Lcom/a/b/f/j;

    invoke-direct {v0}, Lcom/a/b/f/j;-><init>()V

    iget v1, p0, Lcom/a/b/f/k;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/b/f/k;->b:I

    iput v1, v0, Lcom/a/b/f/j;->a:I

    iput-object p1, v0, Lcom/a/b/f/j;->c:Lcom/a/b/f/aj;

    iput-object p2, v0, Lcom/a/b/f/j;->b:Lcom/a/b/f/aj;

    iget-object v1, p0, Lcom/a/b/f/k;->a:Lcom/a/b/f/i;

    invoke-static {v1}, Lcom/a/b/f/i;->a(Lcom/a/b/f/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/a/b/f/k;->a:Lcom/a/b/f/i;

    invoke-static {v1}, Lcom/a/b/f/i;->b(Lcom/a/b/f/i;)[Lcom/a/b/f/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v2

    aput-object v0, v1, v2

    return-void
.end method
