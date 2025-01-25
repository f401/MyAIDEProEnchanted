.class Lcom/a/b/f/y;
.super Lcom/a/b/f/ag;


# instance fields
.field final a:Lcom/a/b/f/x;

.field private final b:Lcom/a/b/e/b/u;

.field private final c:Lcom/a/b/e/b/u;


# direct methods
.method constructor <init>(Lcom/a/b/f/x;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/f/y;->a:Lcom/a/b/f/x;

    iput-object p2, p0, Lcom/a/b/f/y;->b:Lcom/a/b/e/b/u;

    iput-object p3, p0, Lcom/a/b/f/y;->c:Lcom/a/b/e/b/u;

    invoke-direct {p0}, Lcom/a/b/f/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/y;->a:Lcom/a/b/f/x;

    invoke-static {v0}, Lcom/a/b/f/x;->a(Lcom/a/b/f/x;)Lcom/a/b/f/w;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/f/w;->a(Lcom/a/b/f/w;)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/y;->b:Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    if-ne v0, v1, :cond_e

    iget-object p1, p0, Lcom/a/b/f/y;->c:Lcom/a/b/e/b/u;

    :cond_e
    return-object p1
.end method
