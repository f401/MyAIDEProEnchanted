.class final Lcom/a/b/a/d/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/d/e;

.field private final b:I

.field private final c:I

.field private final d:Lcom/a/b/a/d/b;

.field private final e:Lcom/a/b/a/e/k;

.field private f:I

.field private g:Lcom/a/b/a/e/j;


# direct methods
.method public constructor <init>(Lcom/a/b/a/d/e;IILcom/a/b/a/d/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iput-object p1, p0, Lcom/a/b/a/d/c;->a:Lcom/a/b/a/d/e;

    iput p2, p0, Lcom/a/b/a/d/c;->b:I

    iput p3, p0, Lcom/a/b/a/d/c;->c:I

    iput-object p4, p0, Lcom/a/b/a/d/c;->d:Lcom/a/b/a/d/b;

    new-instance v1, Lcom/a/b/a/e/k;

    invoke-direct {v1, v0}, Lcom/a/b/a/e/k;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/a/d/c;->e:Lcom/a/b/a/e/k;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/d/c;->f:I

    return-void
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/a/b/a/d/c;->f:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/a/b/a/d/c;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/d/c;->e:Lcom/a/b/a/e/k;

    invoke-virtual {v0}, Lcom/a/b/a/e/k;->d_()I

    move-result v2

    iget v0, p0, Lcom/a/b/a/d/c;->c:I

    iget-object v3, p0, Lcom/a/b/a/d/c;->a:Lcom/a/b/a/d/e;

    invoke-virtual {v3}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    iget v5, p0, Lcom/a/b/a/d/c;->c:I

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attributes_count: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v5, v6, v7}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    :goto_0
    if-lt v1, v2, :cond_1

    iput v0, p0, Lcom/a/b/a/d/c;->f:I

    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\nattributes["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]:\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v0, v6, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/a/b/a/e/j;->a(I)V

    :cond_2
    iget-object v4, p0, Lcom/a/b/a/d/c;->d:Lcom/a/b/a/d/b;

    iget-object v5, p0, Lcom/a/b/a/d/c;->a:Lcom/a/b/a/d/e;

    iget v6, p0, Lcom/a/b/a/d/c;->b:I

    iget-object v7, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/a/b/a/d/b;->a(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/b/a/e/a;->a()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/a/b/a/d/c;->e:Lcom/a/b/a/e/k;

    invoke-virtual {v5, v1, v4}, Lcom/a/b/a/e/k;->a(ILcom/a/b/a/e/a;)V

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/a/b/a/e/j;->a(I)V

    iget-object v4, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "end attributes["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v0, v6, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/a/b/a/e/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/a/b/a/e/i;

    invoke-direct {v2, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/c;->c()V

    iget v0, p0, Lcom/a/b/a/d/c;->f:I

    return v0
.end method

.method public a(Lcom/a/b/a/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/a/d/c;->g:Lcom/a/b/a/e/j;

    return-void
.end method

.method public b()Lcom/a/b/a/e/k;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/c;->c()V

    iget-object v0, p0, Lcom/a/b/a/d/c;->e:Lcom/a/b/a/e/k;

    return-object v0
.end method
