.class public final Lcom/a/b/c/c/aq;
.super Lcom/a/b/c/c/ax;


# static fields
.field private static final a:Ljava/util/Comparator;

.field private static f:[I


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/HashMap;

.field private final d:Lcom/a/b/c/c/as;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/c/ar;

    invoke-direct {v0}, Lcom/a/b/c/c/ar;-><init>()V

    sput-object v0, Lcom/a/b/c/c/aq;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V
    .registers 7

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/c/ax;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/aq;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/a/b/c/c/aq;->d:Lcom/a/b/c/c/as;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/c/c/aq;->e:I

    return-void
.end method

.method static synthetic e()[I
    .registers 3

    sget-object v0, Lcom/a/b/c/c/aq;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/b/c/c/as;->values()[Lcom/a/b/c/c/as;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/a/b/c/c/as;->c:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sput-object v0, Lcom/a/b/c/c/aq;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/ag;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/at;

    invoke-virtual {p1}, Lcom/a/b/c/c/at;->e()I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/c/c/at;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->k()V

    :try_start_0
    invoke-virtual {p1}, Lcom/a/b/c/c/at;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->g()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/c/ah;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->j()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p1, v4, p3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected a_(Lcom/a/b/g/a;)V
    .registers 11

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v5

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->f()Lcom/a/b/c/c/t;

    move-result-object v6

    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/b/c/c/aq;->e:I

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_3

    move v1, v3

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/a/b/c/c/at;->f()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v8, v4, -0x1

    add-int/2addr v4, v2

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_2

    sub-int v2, v4, v2

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->g(I)V

    move v2, v4

    :cond_2
    invoke-virtual {v0, v6, p1}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->e_()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_3
    const-string v4, "\n"

    invoke-interface {p1, v3, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;
    .registers 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->k()V

    iget-object v0, p0, Lcom/a/b/c/c/aq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    iget-object v0, p0, Lcom/a/b/c/c/aq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected c()V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->f()Lcom/a/b/c/c/t;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/t;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-lt v1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public d()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->j()V

    invoke-static {}, Lcom/a/b/c/c/aq;->e()[I

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/aq;->d:Lcom/a/b/c/c/as;

    invoke-virtual {v2}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_0

    iput v1, p0, Lcom/a/b/c/c/aq;->e:I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/a/b/c/c/aq;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/a/b/c/c/at;->b(Lcom/a/b/c/c/ax;I)I

    move-result v4

    if-ge v4, v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bogus place() result for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while placing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/a/b/c/c/at;->e_()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f_()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->j()V

    iget v0, p0, Lcom/a/b/c/c/aq;->e:I

    return v0
.end method
