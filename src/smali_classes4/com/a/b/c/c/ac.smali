.class public final Lcom/a/b/c/c/ac;
.super Lcom/a/b/c/c/af;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->a:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 13

    const v9, 0x12345678

    const/16 v8, 0x70

    const/16 v7, 0x8

    const/4 v6, 0x4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->f()Lcom/a/b/c/c/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/c/aq;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->q()Lcom/a/b/c/c/ax;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->r()Lcom/a/b/c/c/ax;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/b/c/c/ax;->h()I

    move-result v3

    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->h()I

    move-result v0

    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->f_()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v2, v0, v3

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->a()Lcom/a/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "magic: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/a/b/e/c/ad;

    invoke-direct {v5, v4}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const-string v0, "checksum"

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/16 v0, 0x14

    const-string v5, "signature"

    invoke-interface {p2, v0, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "file_size:       "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->b()I

    move-result v5

    invoke-static {v5}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "header_size:     "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "endian_tag:      "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const-string v0, "link_size:       0"

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const-string v0, "link_off:        0"

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "map_off:         "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_c2
    const/4 v0, 0x0

    :goto_c3
    if-lt v0, v7, :cond_140

    const/16 v0, 0x18

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->g(I)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->b()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v8}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v9}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v7}, Lcom/a/b/g/a;->g(I)V

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/g/a;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/be;->b(Lcom/a/b/g/a;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->k()Lcom/a/b/c/c/aw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/aw;->b(Lcom/a/b/g/a;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/g/a;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/ap;->a(Lcom/a/b/g/a;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->h()Lcom/a/b/c/c/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/c/c/m;->a(Lcom/a/b/g/a;)V

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_139

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data_size:       "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data_off:        "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_139
    invoke-interface {p2, v2}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    return-void

    :cond_140
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {p2, v5}, Lcom/a/b/g/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c3
.end method

.method public e_()I
    .registers 2

    const/16 v0, 0x70

    return v0
.end method
