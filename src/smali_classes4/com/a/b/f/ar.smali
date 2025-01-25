.class Lcom/a/b/f/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/ap;


# direct methods
.method constructor <init>(Lcom/a/b/f/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/ar;->a:Lcom/a/b/f/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/a/b/f/an;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v2, :cond_c

    return-void

    :cond_c
    iget-object v3, p0, Lcom/a/b/f/ar;->a:Lcom/a/b/f/ap;

    invoke-static {v3}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/ap;)[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/ar;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/ar;->a(Lcom/a/b/f/an;)V

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/f/ar;->a(Lcom/a/b/f/an;)V

    return-void
.end method
