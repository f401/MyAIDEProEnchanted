.class public final Lcom/a/b/c/c/k;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:Lcom/a/b/e/c/d;

.field private h:[B


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;)V
    .registers 5

    const/16 v2, 0x14

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Lcom/a/b/c/c/k;->a:Lcom/a/b/e/c/ae;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/k;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/k;->g:Lcom/a/b/e/c/d;

    return-void
.end method

.method private static a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;I)V
    .registers 9

    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "  %-21s %08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    :cond_2f
    invoke-interface {p1, p3}, Lcom/a/b/g/a;->e(I)I

    return-void
.end method

.method private static a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_26
    move v1, v0

    move v2, v0

    :goto_28
    if-ge v2, v3, :cond_7

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/x;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/a/b/c/c/x;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_28
.end method

.method private b(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 7

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/k;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_2b
    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;I)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;I)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;I)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;I)V

    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/a/b/c/c/k;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_78

    invoke-interface {p2}, Lcom/a/b/g/a;->c()V

    :cond_78
    return-void
.end method

.method private h()Lcom/a/b/e/c/d;
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    :goto_c
    if-gtz v3, :cond_12

    :cond_e
    :goto_e
    if-nez v3, :cond_3b

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/w;

    iget-object v1, p0, Lcom/a/b/c/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    instance-of v1, v0, Lcom/a/b/e/c/v;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/a/b/e/c/v;

    invoke-virtual {v0}, Lcom/a/b/e/c/v;->k()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    :cond_34
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_c

    :cond_38
    if-eqz v0, :cond_34

    goto :goto_e

    :cond_3b
    new-instance v4, Lcom/a/b/e/c/e;

    invoke-direct {v4, v3}, Lcom/a/b/e/c/e;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_42
    if-lt v2, v3, :cond_4d

    invoke-virtual {v4}, Lcom/a/b/e/c/e;->c_()V

    new-instance v0, Lcom/a/b/e/c/d;

    invoke-direct {v0, v4}, Lcom/a/b/e/c/d;-><init>(Lcom/a/b/e/c/e;)V

    goto :goto_11

    :cond_4d
    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/w;

    iget-object v1, p0, Lcom/a/b/c/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/a;

    if-nez v1, :cond_6b

    invoke-virtual {v0}, Lcom/a/b/c/c/w;->a()Lcom/a/b/e/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/c/ah;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/a;

    move-result-object v1

    :cond_6b
    invoke-virtual {v4, v2, v1}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->n:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 5

    new-instance v0, Lcom/a/b/g/h;

    invoke-direct {v0}, Lcom/a/b/g/h;-><init>()V

    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->f()Lcom/a/b/c/c/t;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/a/b/c/c/k;->b(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    invoke-virtual {v0}, Lcom/a/b/g/h;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/k;->h:[B

    iget-object v0, p0, Lcom/a/b/c/c/k;->h:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/k;->a(I)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/a/b/c/c/k;->d()Lcom/a/b/e/c/d;

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_63

    :cond_17
    iget-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_30
    iget-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_77

    :cond_49
    iget-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_81

    :cond_62
    return-void

    :cond_63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/w;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/w;->a(Lcom/a/b/c/c/t;)V

    goto :goto_11

    :cond_6d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/w;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/w;->a(Lcom/a/b/c/c/t;)V

    goto :goto_2a

    :cond_77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/y;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/y;->a(Lcom/a/b/c/c/t;)V

    goto :goto_43

    :cond_81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/y;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/y;->a(Lcom/a/b/c/c/t;)V

    goto :goto_5c
.end method

.method public a(Lcom/a/b/c/c/w;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/b/c/c/w;Lcom/a/b/e/c/a;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/k;->g:Lcom/a/b/e/c/d;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/c/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/a/b/c/c/y;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 4

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/a/b/c/c/k;->b(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/k;->h:[B

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a([B)V

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/c/c/y;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/b/c/c/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/b/c/c/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/b/c/c/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public d()Lcom/a/b/e/c/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/k;->g:Lcom/a/b/e/c/d;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/a/b/c/c/k;->h()Lcom/a/b/e/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/k;->g:Lcom/a/b/e/c/d;

    :cond_12
    iget-object v0, p0, Lcom/a/b/c/c/k;->g:Lcom/a/b/e/c/d;

    return-object v0
.end method
