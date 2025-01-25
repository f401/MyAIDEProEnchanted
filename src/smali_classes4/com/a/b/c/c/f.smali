.class public final Lcom/a/b/c/c/f;
.super Lcom/a/b/c/c/at;


# instance fields
.field private a:Lcom/a/b/c/c/c;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    iput-object v2, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    iput-object v2, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/at;)I
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "uninternable instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    check-cast p1, Lcom/a/b/c/c/f;

    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    iget-object v1, p1, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/c;->c(Lcom/a/b/c/c/at;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->t:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/f;->a(I)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->d()Lcom/a/b/c/c/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aq;->b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/c;

    iput-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    :cond_12
    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_22
    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_32
    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_57

    :cond_42
    return-void

    :cond_43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/z;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/z;->a(Lcom/a/b/c/c/t;)V

    goto :goto_1c

    :cond_4d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/al;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/al;->a(Lcom/a/b/c/c/t;)V

    goto :goto_2c

    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/au;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/au;->a(Lcom/a/b/c/c/t;)V

    goto :goto_3c
.end method

.method public a(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "class annotations already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/a/b/c/c/c;

    invoke-direct {v0, p1, p2}, Lcom/a/b/c/c/c;-><init>(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    return-void
.end method

.method public a(Lcom/a/b/e/c/n;Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/c/c/z;

    new-instance v2, Lcom/a/b/c/c/c;

    invoke-direct {v2, p2, p3}, Lcom/a/b/c/c/c;-><init>(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V

    invoke-direct {v1, p1, v2}, Lcom/a/b/c/c/z;-><init>(Lcom/a/b/e/c/n;Lcom/a/b/c/c/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/b/e/c/z;Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/c/c/al;

    new-instance v2, Lcom/a/b/c/c/c;

    invoke-direct {v2, p2, p3}, Lcom/a/b/c/c/c;-><init>(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V

    invoke-direct {v1, p1, v2}, Lcom/a/b/c/c/al;-><init>(Lcom/a/b/e/c/z;Lcom/a/b/c/c/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/b/e/c/z;Lcom/a/b/e/a/d;Lcom/a/b/c/c/t;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/c/c/au;

    invoke-direct {v1, p1, p2, p3}, Lcom/a/b/c/c/au;-><init>(Lcom/a/b/e/c/z;Lcom/a/b/e/a/d;Lcom/a/b/c/c/t;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    invoke-static {v0}, Lcom/a/b/c/c/at;->b(Lcom/a/b/c/c/at;)I

    move-result v0

    iget-object v2, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/a/b/c/c/f;->a(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v1, :cond_92

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/f;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " annotations directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v7, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  class_annotations_off: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  fields_size:           "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  methods_size:          "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  parameters_size:       "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_92
    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v2}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v4}, Lcom/a/b/g/a;->d(I)V

    if-eqz v2, :cond_b8

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_ac

    const-string v0, "  fields:"

    invoke-interface {p2, v7, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_ac
    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ed

    :cond_b8
    if-eqz v3, :cond_d2

    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_c6

    const-string v0, "  methods:"

    invoke-interface {p2, v7, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_c6
    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f7

    :cond_d2
    if-eqz v4, :cond_ec

    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_e0

    const-string v0, "  parameters:"

    invoke-interface {p2, v7, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_e0
    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_101

    :cond_ec
    return-void

    :cond_ed
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/z;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/c/c/z;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    goto :goto_b2

    :cond_f7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/al;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/c/c/al;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    goto :goto_cc

    :cond_101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/au;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/c/c/au;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    goto :goto_e6
.end method

.method public b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/c/c/f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/a/b/c/c/f;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/a/b/c/c/c;->hashCode()I

    move-result v0

    goto :goto_5
.end method
