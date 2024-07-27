.class public final Lcom/a/b/c/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Lcom/a/b/c/b/ab;

.field private c:Lcom/a/b/c/b/c;

.field private d:Lcom/a/b/c/b/f;

.field private e:Lcom/a/b/c/b/ac;

.field private f:Lcom/a/b/c/b/s;

.field private g:Lcom/a/b/c/b/m;


# direct methods
.method public constructor <init>(ILcom/a/b/c/b/ab;Lcom/a/b/c/b/c;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedInsns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedCatches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/a/b/c/b/j;->a:I

    iput-object p2, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    iput-object p3, p0, Lcom/a/b/c/b/j;->c:Lcom/a/b/c/b/c;

    iput-object v0, p0, Lcom/a/b/c/b/j;->d:Lcom/a/b/c/b/f;

    iput-object v0, p0, Lcom/a/b/c/b/j;->e:Lcom/a/b/c/b/ac;

    iput-object v0, p0, Lcom/a/b/c/b/j;->f:Lcom/a/b/c/b/s;

    iput-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    return-void
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    invoke-virtual {v0}, Lcom/a/b/c/b/ab;->d()Lcom/a/b/c/b/m;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    iget-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    iget v1, p0, Lcom/a/b/c/b/j;->a:I

    invoke-static {v0, v1}, Lcom/a/b/c/b/ac;->a(Lcom/a/b/c/b/m;I)Lcom/a/b/c/b/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/j;->e:Lcom/a/b/c/b/ac;

    iget-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    invoke-static {v0}, Lcom/a/b/c/b/s;->a(Lcom/a/b/c/b/m;)Lcom/a/b/c/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/j;->f:Lcom/a/b/c/b/s;

    iget-object v0, p0, Lcom/a/b/c/b/j;->c:Lcom/a/b/c/b/c;

    invoke-interface {v0}, Lcom/a/b/c/b/c;->a()Lcom/a/b/c/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/j;->d:Lcom/a/b/c/b/f;

    iput-object v2, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    iput-object v2, p0, Lcom/a/b/c/b/j;->c:Lcom/a/b/c/b/c;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/k;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/k;)V

    return-void
.end method

.method public a()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/a/b/c/b/j;->a:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    invoke-virtual {v1}, Lcom/a/b/c/b/ab;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    invoke-virtual {v0}, Lcom/a/b/c/b/ab;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/j;->c:Lcom/a/b/c/b/c;

    invoke-interface {v0}, Lcom/a/b/c/b/c;->b()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/j;->c:Lcom/a/b/c/b/c;

    invoke-interface {v0}, Lcom/a/b/c/b/c;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/j;->b:Lcom/a/b/c/b/ab;

    invoke-virtual {v0}, Lcom/a/b/c/b/ab;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/a/b/c/b/m;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/b/j;->j()V

    iget-object v0, p0, Lcom/a/b/c/b/j;->g:Lcom/a/b/c/b/m;

    return-object v0
.end method

.method public g()Lcom/a/b/c/b/f;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/b/j;->j()V

    iget-object v0, p0, Lcom/a/b/c/b/j;->d:Lcom/a/b/c/b/f;

    return-object v0
.end method

.method public h()Lcom/a/b/c/b/ac;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/b/j;->j()V

    iget-object v0, p0, Lcom/a/b/c/b/j;->e:Lcom/a/b/c/b/ac;

    return-object v0
.end method

.method public i()Lcom/a/b/c/b/s;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/b/j;->j()V

    iget-object v0, p0, Lcom/a/b/c/b/j;->f:Lcom/a/b/c/b/s;

    return-object v0
.end method
