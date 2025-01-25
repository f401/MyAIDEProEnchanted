.class Lcom/a/b/f/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ae;


# instance fields
.field final a:Lcom/a/b/f/au;


# direct methods
.method constructor <init>(Lcom/a/b/f/au;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/av;->a:Lcom/a/b/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/ac;->h()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/av;->a:Lcom/a/b/f/au;

    invoke-static {v1}, Lcom/a/b/f/au;->c(Lcom/a/b/f/au;)Lcom/a/b/f/as;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/b/f/as;->b(Lcom/a/b/f/as;I)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/a/b/f/av;->a:Lcom/a/b/f/au;

    invoke-static {v1}, Lcom/a/b/f/au;->a(Lcom/a/b/f/au;)[Lcom/a/b/e/b/u;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/a/b/f/av;->a:Lcom/a/b/f/au;

    invoke-static {v1}, Lcom/a/b/f/au;->c(Lcom/a/b/f/au;)Lcom/a/b/f/as;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v1, v2}, Lcom/a/b/f/as;->d(Lcom/a/b/f/as;I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/a/b/f/av;->a:Lcom/a/b/f/au;

    invoke-static {v1}, Lcom/a/b/f/au;->b(Lcom/a/b/f/au;)Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/b/f/ac;->a(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V

    goto :goto_10
.end method
