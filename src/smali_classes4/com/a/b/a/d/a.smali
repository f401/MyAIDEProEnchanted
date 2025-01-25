.class public final Lcom/a/b/a/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/d/e;

.field private final b:Lcom/a/b/e/c/b;

.field private final c:Lcom/a/b/g/e;

.field private final d:Lcom/a/b/a/e/j;

.field private final e:Lcom/a/b/g/f;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/a/d/a;->a:Lcom/a/b/a/d/e;

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    iput-object p4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/d/a;->c:Lcom/a/b/g/e;

    iget-object v0, p0, Lcom/a/b/a/d/a;->c:Lcom/a/b/g/e;

    invoke-virtual {v0}, Lcom/a/b/g/e;->b()Lcom/a/b/g/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/a/d/a;->f:I

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->available()I

    move-result v0

    if-ge v0, p1, :cond_10

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "truncated annotation attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/a;->c:Lcom/a/b/g/e;

    iget v2, p0, Lcom/a/b/a/d/a;->f:I

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget v0, p0, Lcom/a/b/a/d/a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/b/a/d/a;->f:I

    return-void
.end method

.method private b()Lcom/a/b/e/a/e;
    .registers 5

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/a/b/a/d/a;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v1, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    iget-object v1, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v1, :cond_37

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "element_name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "value: "

    invoke-direct {p0, v1, v2}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/a/d/a;->b(I)V

    :cond_37
    invoke-direct {p0}, Lcom/a/b/a/d/a;->c()Lcom/a/b/e/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v2, :cond_43

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/a/b/a/d/a;->b(I)V

    :cond_43
    new-instance v2, Lcom/a/b/e/a/e;

    invoke-direct {v2, v0, v1}, Lcom/a/b/e/a/e;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/a;)V

    return-object v2
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    invoke-interface {v0, p1}, Lcom/a/b/a/e/j;->a(I)V

    return-void
.end method

.method private c(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/d;
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedByte()I

    move-result v2

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "num_parameters: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_22
    new-instance v3, Lcom/a/b/e/a/d;

    invoke-direct {v3, v2}, Lcom/a/b/e/a/d;-><init>(I)V

    move v0, v1

    :goto_28
    if-lt v0, v2, :cond_2e

    invoke-virtual {v3}, Lcom/a/b/e/a/d;->c_()V

    return-object v3

    :cond_2e
    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parameter_annotations["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/a/b/a/d/a;->b(I)V

    :cond_4d
    invoke-direct {p0, p1}, Lcom/a/b/a/d/a;->d(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/a/b/e/a/d;->a(ILcom/a/b/e/a/c;)V

    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/a/b/a/e/j;->a(I)V

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method private c()Lcom/a/b/e/c/a;
    .registers 9

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedByte()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v2, :cond_2e

    new-instance v2, Lcom/a/b/e/c/ad;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_2e
    sparse-switch v0, :sswitch_data_1b4

    new-instance v1, Lcom/a/b/a/e/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown annotation tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_4a
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/h;->a(I)Lcom/a/b/e/c/h;

    move-result-object v0

    :goto_58
    return-object v0

    :sswitch_59
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/k;->a(I)Lcom/a/b/e/c/k;

    move-result-object v0

    goto :goto_58

    :sswitch_6b
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/l;

    goto :goto_58

    :sswitch_72
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/o;

    goto :goto_58

    :sswitch_79
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    goto :goto_58

    :sswitch_80
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/w;

    goto :goto_58

    :sswitch_87
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/ac;->a(I)Lcom/a/b/e/c/ac;

    move-result-object v0

    goto :goto_58

    :sswitch_96
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/g;->a(I)Lcom/a/b/e/c/g;

    move-result-object v0

    goto :goto_58

    :sswitch_a5
    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v1, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/c;->b(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_d5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "class_info: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_d5
    new-instance v0, Lcom/a/b/e/c/ae;

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    goto/16 :goto_58

    :sswitch_dc
    invoke-direct {p0}, Lcom/a/b/a/d/a;->d()Lcom/a/b/e/c/a;

    move-result-object v0

    goto/16 :goto_58

    :sswitch_e2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/a/b/a/d/a;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v1}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v2, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    iget-object v2, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v2, v1}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/ad;

    iget-object v2, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v2, :cond_132

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type_name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "const_name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_132
    new-instance v2, Lcom/a/b/e/c/m;

    new-instance v3, Lcom/a/b/e/c/aa;

    invoke-direct {v3, v1, v0}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    invoke-direct {v2, v3}, Lcom/a/b/e/c/m;-><init>(Lcom/a/b/e/c/aa;)V

    move-object v0, v2

    goto/16 :goto_58

    :sswitch_13f
    new-instance v0, Lcom/a/b/e/c/c;

    sget-object v1, Lcom/a/b/e/a/b;->d:Lcom/a/b/e/a/b;

    invoke-direct {p0, v1}, Lcom/a/b/a/d/a;->e(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/c;-><init>(Lcom/a/b/e/a/a;)V

    goto/16 :goto_58

    :sswitch_14c
    invoke-direct {p0, v5}, Lcom/a/b/a/d/a;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v2

    new-instance v3, Lcom/a/b/e/c/e;

    invoke-direct {v3, v2}, Lcom/a/b/e/c/e;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_173

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "num_values: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/a/b/a/d/a;->b(I)V

    :cond_173
    move v0, v1

    :goto_174
    if-lt v0, v2, :cond_187

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_17d

    invoke-direct {p0, v7}, Lcom/a/b/a/d/a;->b(I)V

    :cond_17d
    invoke-virtual {v3}, Lcom/a/b/e/c/e;->c_()V

    new-instance v0, Lcom/a/b/e/c/d;

    invoke-direct {v0, v3}, Lcom/a/b/e/c/d;-><init>(Lcom/a/b/e/c/e;)V

    goto/16 :goto_58

    :cond_187
    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_1a9

    invoke-direct {p0, v7}, Lcom/a/b/a/d/a;->b(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "element_value["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/a/b/a/d/a;->b(I)V

    :cond_1a9
    invoke-direct {p0}, Lcom/a/b/a/d/a;->c()Lcom/a/b/e/c/a;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_174

    nop

    :sswitch_data_1b4
    .sparse-switch
        0x40 -> :sswitch_13f
        0x42 -> :sswitch_4a
        0x43 -> :sswitch_59
        0x44 -> :sswitch_6b
        0x46 -> :sswitch_72
        0x49 -> :sswitch_79
        0x4a -> :sswitch_80
        0x53 -> :sswitch_87
        0x5a -> :sswitch_96
        0x5b -> :sswitch_14c
        0x63 -> :sswitch_a5
        0x65 -> :sswitch_e2
        0x73 -> :sswitch_dc
    .end sparse-switch
.end method

.method private d(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v2

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "num_annotations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_22
    new-instance v3, Lcom/a/b/e/a/c;

    invoke-direct {v3}, Lcom/a/b/e/a/c;-><init>()V

    move v0, v1

    :goto_28
    if-lt v0, v2, :cond_2e

    invoke-virtual {v3}, Lcom/a/b/e/a/c;->c_()V

    return-object v3

    :cond_2e
    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "annotations["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/a/b/a/d/a;->b(I)V

    :cond_4e
    invoke-direct {p0, p1}, Lcom/a/b/a/d/a;->e(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/a/b/a/e/j;->a(I)V

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method private d()Lcom/a/b/e/c/a;
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v1, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_2e

    instance-of v0, v1, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_2f

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "constant_value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_2e
    return-object v1

    :cond_2f
    invoke-virtual {v1}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private e(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/a;
    .registers 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/a/b/a/d/a;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v0}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v2}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v2

    new-instance v3, Lcom/a/b/e/c/ae;

    iget-object v4, p0, Lcom/a/b/a/d/a;->b:Lcom/a/b/e/c/b;

    invoke-interface {v4, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/c;->a(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "type: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "num_elements: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    :cond_53
    new-instance v4, Lcom/a/b/e/a/a;

    invoke-direct {v4, v3, p1}, Lcom/a/b/e/a/a;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/a/b;)V

    move v0, v1

    :goto_59
    if-lt v0, v2, :cond_5f

    invoke-virtual {v4}, Lcom/a/b/e/a/a;->c_()V

    return-object v4

    :cond_5f
    iget-object v3, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v3, :cond_7f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "elements["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/a/b/a/d/a;->a(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/a/b/a/d/a;->b(I)V

    :cond_7f
    invoke-direct {p0}, Lcom/a/b/a/d/a;->b()Lcom/a/b/e/a/e;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/a/b/e/a/a;->b(Lcom/a/b/e/a/e;)V

    iget-object v3, p0, Lcom/a/b/a/d/a;->d:Lcom/a/b/a/e/j;

    if-eqz v3, :cond_8e

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/a/b/a/d/a;->b(I)V

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method


# virtual methods
.method public a(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/d;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/a/b/a/d/a;->c(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v1}, Lcom/a/b/g/f;->available()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    return-object v0
.end method

.method public a()Lcom/a/b/e/c/a;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/a/b/a/d/a;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v1}, Lcom/a/b/g/f;->available()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    return-object v0
.end method

.method public b(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/a/b/a/d/a;->d(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/d/a;->e:Lcom/a/b/g/f;

    invoke-virtual {v1}, Lcom/a/b/g/f;->available()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    return-object v0
.end method
