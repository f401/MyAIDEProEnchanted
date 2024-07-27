.class public final Lcom/a/b/c/c/av;
.super Lcom/a/b/c/c/af;


# instance fields
.field private final a:Lcom/a/b/e/d/a;

.field private final b:Lcom/a/b/e/c/ad;

.field private c:Lcom/a/b/c/c/bf;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/a;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-static {p1}, Lcom/a/b/c/c/av;->a(Lcom/a/b/e/d/a;)Lcom/a/b/e/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/av;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {p1}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->d_()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/a/b/c/c/av;->c:Lcom/a/b/c/c/bf;

    return-void

    :cond_1
    new-instance v0, Lcom/a/b/c/c/bf;

    invoke-direct {v0, v1}, Lcom/a/b/c/c/bf;-><init>(Lcom/a/b/e/d/e;)V

    goto :goto_0
.end method

.method private static a(Lcom/a/b/e/d/c;)C
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4c

    :cond_0
    return v0
.end method

.method private static a(Lcom/a/b/e/d/a;)Lcom/a/b/e/c/ad;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->d_()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/c/av;->a(Lcom/a/b/e/d/c;)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/a/b/e/d/b;->a(I)Lcom/a/b/e/d/c;

    move-result-object v4

    invoke-static {v4}, Lcom/a/b/c/c/av;->a(Lcom/a/b/e/d/c;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->d:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->e()Lcom/a/b/c/c/aq;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v3}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/d/c;)Lcom/a/b/c/c/bd;

    iget-object v1, p0, Lcom/a/b/c/c/av;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/c/c/bb;

    iget-object v0, p0, Lcom/a/b/c/c/av;->c:Lcom/a/b/c/c/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/c/av;->c:Lcom/a/b/c/c/bf;

    invoke-virtual {v2, v0}, Lcom/a/b/c/c/aq;->b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/bf;

    iput-object v0, p0, Lcom/a/b/c/c/av;->c:Lcom/a/b/c/c/bf;

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v9, 0x4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/c/c/av;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    iget-object v3, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v3}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/d/c;)I

    move-result v3

    iget-object v0, p0, Lcom/a/b/c/c/av;->c:Lcom/a/b/c/c/bf;

    invoke-static {v0}, Lcom/a/b/c/c/at;->b(Lcom/a/b/c/c/at;)I

    move-result v4

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " proto("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/d/b;->d_()I

    move-result v7

    move v0, v1

    :goto_0
    if-lt v0, v7, :cond_1

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/av;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  shorty_idx:      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/av;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  return_type_idx: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/av;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v1}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  parameters_off:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v2}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v4}, Lcom/a/b/g/a;->d(I)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v0}, Lcom/a/b/e/d/b;->a(I)Lcom/a/b/e/d/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public e_()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
