.class public final Lcom/a/b/c/c/am;
.super Lcom/a/b/c/c/af;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/c/y;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/y;)V
    .registers 3

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/b/c/c/am;->a:I

    iput-object p1, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    return-void
.end method

.method private b(Lcom/a/b/c/c/t;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v0}, Lcom/a/b/e/c/y;->i()Lcom/a/b/e/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v1}, Lcom/a/b/e/c/y;->k()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v1

    check-cast v0, Lcom/a/b/e/c/n;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/ab;->b(Lcom/a/b/e/c/n;)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v1}, Lcom/a/b/e/c/y;->l()Z

    move-result v1

    if-eqz v1, :cond_36

    instance-of v1, v0, Lcom/a/b/e/c/q;

    if-eqz v1, :cond_2b

    check-cast v0, Lcom/a/b/e/c/q;

    invoke-virtual {v0}, Lcom/a/b/e/c/q;->m()Lcom/a/b/e/c/z;

    move-result-object v0

    :cond_2b
    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v1

    check-cast v0, Lcom/a/b/e/c/f;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/ap;->b(Lcom/a/b/e/c/f;)I

    move-result v0

    goto :goto_18

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled invocation type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->i:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->n()Lcom/a/b/c/c/an;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/an;->a(Lcom/a/b/e/c/y;)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/a/b/c/c/am;->b(Lcom/a/b/c/c/t;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v1}, Lcom/a/b/e/c/y;->j()I

    move-result v1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_ca

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/am;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v3}, Lcom/a/b/e/c/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/e/c/y;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type:     "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reserved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v3}, Lcom/a/b/e/c/y;->i()Lcom/a/b/e/c/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/am;->b:Lcom/a/b/e/c/y;

    invoke-virtual {v3}, Lcom/a/b/e/c/y;->k()Z

    move-result v3

    if-eqz v3, :cond_db

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fieldId:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :goto_b4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reserved: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_ca
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v5}, Lcom/a/b/g/a;->c(I)V

    invoke-direct {p0, p1}, Lcom/a/b/c/c/am;->b(Lcom/a/b/c/c/t;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v5}, Lcom/a/b/g/a;->c(I)V

    return-void

    :cond_db
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "methodId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_b4
.end method

.method public e_()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
