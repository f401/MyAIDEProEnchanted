.class Lcom/a/b/f/aw;
.super Lcom/a/b/f/ag;


# instance fields
.field final a:Lcom/a/b/f/au;


# direct methods
.method public constructor <init>(Lcom/a/b/f/au;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/aw;->a:Lcom/a/b/f/au;

    invoke-direct {p0}, Lcom/a/b/f/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/aw;->a:Lcom/a/b/f/au;

    invoke-static {v0}, Lcom/a/b/f/au;->c(Lcom/a/b/f/au;)Lcom/a/b/f/as;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/f/as;->a(Lcom/a/b/f/as;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/aw;->a:Lcom/a/b/f/au;

    invoke-static {v1}, Lcom/a/b/f/au;->a(Lcom/a/b/f/au;)[Lcom/a/b/e/b/u;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_3
.end method
