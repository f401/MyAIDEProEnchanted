.class public final Lcom/a/b/c/c/bi;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/c/t;

.field private final b:Lcom/a/b/g/a;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    iput-object p2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    return-void
.end method

.method public static a(Lcom/a/b/c/c/t;Lcom/a/b/e/a/a;)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/c/c/bd;

    invoke-virtual {p1}, Lcom/a/b/e/a/a;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/e;

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/c/c/bb;

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->b()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/c/c/t;Lcom/a/b/e/c/a;)V

    goto :goto_0
.end method

.method public static a(Lcom/a/b/c/c/t;Lcom/a/b/e/c/a;)V
    .registers 6

    instance-of v0, p1, Lcom/a/b/e/c/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/a/b/e/c/c;

    invoke-virtual {p1}, Lcom/a/b/e/c/c;->a()Lcom/a/b/e/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/c/c/t;Lcom/a/b/e/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/a/b/e/c/d;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/a/b/e/c/d;

    invoke-virtual {p1}, Lcom/a/b/e/c/d;->a()Lcom/a/b/e/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/e;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/a/b/e/c/e;->a(I)Lcom/a/b/e/c/a;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/c/c/t;Lcom/a/b/e/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/a/b/c/c/t;->a(Lcom/a/b/e/c/a;)V

    goto :goto_0
.end method

.method public static b(Lcom/a/b/e/c/a;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/a/b/c/c/bi;->c(Lcom/a/b/e/c/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/a/b/e/c/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/a/b/e/c/a;)I
    .registers 3

    instance-of v0, p0, Lcom/a/b/e/c/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Lcom/a/b/e/c/ac;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/a/b/e/c/k;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/a/b/e/c/p;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/a/b/e/c/w;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/a/b/e/c/o;

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/a/b/e/c/l;

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/a/b/e/c/y;

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_9

    const/16 v0, 0x17

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_a

    const/16 v0, 0x18

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/a/b/e/c/n;

    if-eqz v0, :cond_b

    const/16 v0, 0x19

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/a/b/e/c/z;

    if-eqz v0, :cond_c

    const/16 v0, 0x1a

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/a/b/e/c/m;

    if-eqz v0, :cond_d

    const/16 v0, 0x1b

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/a/b/e/c/d;

    if-eqz v0, :cond_e

    const/16 v0, 0x1c

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/a/b/e/c/c;

    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/a/b/e/c/s;

    if-eqz v0, :cond_10

    const/16 v0, 0x1e

    goto :goto_0

    :cond_10
    instance-of v0, p0, Lcom/a/b/e/c/g;

    if-eqz v0, :cond_11

    const/16 v0, 0x1f

    goto :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/a/b/e/a/a;Z)V
    .registers 14

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v0}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v0}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v4

    iget-object v0, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v0}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v5

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  type_idx: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " // "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-virtual {p1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/a/b/g/a;->e(I)I

    invoke-virtual {p1}, Lcom/a/b/e/a/a;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v5, v3}, Lcom/a/b/g/a;->e(I)I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v0}, Lcom/a/b/g/a;->c()V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/e;

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v7

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->b()Lcom/a/b/e/c/a;

    move-result-object v8

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  elements["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    name_idx: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v3, v7}, Lcom/a/b/g/a;->e(I)I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/a/b/c/c/bi;->b(Lcom/a/b/e/c/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v8}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/c/a;)V

    move v3, v0

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public a(Lcom/a/b/e/c/a;)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/a/b/c/c/bi;->c(Lcom/a/b/e/c/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast p1, Lcom/a/b/e/c/v;

    invoke-virtual {p1}, Lcom/a/b/e/c/v;->k()J

    move-result-wide v2

    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-static {v1, v0, v2, v3}, Lcom/a/a/d;->a(Lcom/a/a/a/a;IJ)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p1, Lcom/a/b/e/c/v;

    invoke-virtual {p1}, Lcom/a/b/e/c/v;->k()J

    move-result-wide v2

    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-static {v1, v0, v2, v3}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lcom/a/b/e/c/o;

    invoke-virtual {p1}, Lcom/a/b/e/c/o;->k()J

    move-result-wide v2

    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-static {v1, v0, v2, v3}, Lcom/a/a/d;->c(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lcom/a/b/e/c/l;

    invoke-virtual {p1}, Lcom/a/b/e/c/l;->k()J

    move-result-wide v2

    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-static {v1, v0, v2, v3}, Lcom/a/a/d;->c(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->k()Lcom/a/b/c/c/aw;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/ab;

    invoke-virtual {p1}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/c/c/aw;->b(Lcom/a/b/e/d/a;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->n()Lcom/a/b/c/c/an;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/y;

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/an;->b(Lcom/a/b/e/c/y;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/ad;

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/ae;

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/n;

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/ab;->b(Lcom/a/b/e/c/n;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v1

    check-cast p1, Lcom/a/b/e/c/z;

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/ap;->b(Lcom/a/b/e/c/f;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto/16 :goto_0

    :pswitch_b
    check-cast p1, Lcom/a/b/e/c/m;

    invoke-virtual {p1}, Lcom/a/b/e/c/m;->i()Lcom/a/b/e/c/n;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->a:Lcom/a/b/c/c/t;

    invoke-virtual {v2}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/b/c/c/ab;->b(Lcom/a/b/e/c/n;)I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/a/a/d;->b(Lcom/a/a/a/a;IJ)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v1, v0}, Lcom/a/b/g/a;->a(I)V

    check-cast p1, Lcom/a/b/e/c/d;

    invoke-virtual {p0, p1, v2}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/c/d;Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v1, v0}, Lcom/a/b/g/a;->a(I)V

    check-cast p1, Lcom/a/b/e/c/c;

    invoke-virtual {p1}, Lcom/a/b/e/c/c;->a()Lcom/a/b/e/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/a/a;Z)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v1, v0}, Lcom/a/b/g/a;->a(I)V

    goto/16 :goto_0

    :pswitch_f
    check-cast p1, Lcom/a/b/e/c/g;

    invoke-virtual {p1}, Lcom/a/b/e/c/g;->j()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/a/b/g/a;->a(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public a(Lcom/a/b/e/c/d;Z)V
    .registers 11

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v0}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/a/b/e/c/d;->a()Lcom/a/b/e/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/c/e;->d_()I

    move-result v3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v4, v3}, Lcom/a/b/g/a;->e(I)I

    :goto_1
    if-lt v1, v3, :cond_3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    invoke-interface {v0}, Lcom/a/b/g/a;->c()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/a/b/e/c/e;->a(I)Lcom/a/b/e/c/a;

    move-result-object v4

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/a/b/c/c/bi;->b:Lcom/a/b/g/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/a/b/c/c/bi;->b(Lcom/a/b/e/c/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
