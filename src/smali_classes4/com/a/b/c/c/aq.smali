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

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/a/b/c/c/as;->values()[Lcom/a/b/c/c/as;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/a/b/c/c/as;->c:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    invoke-virtual {v1}, Lcom/a/b/c/c/as;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2e

    :goto_27
    sput-object v0, Lcom/a/b/c/c/aq;->f:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_15

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_27
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

    :try_start_3
    invoke-virtual {p1}, Lcom/a/b/c/c/at;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->g()I

    move-result v1

    if-le v0, v1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
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

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_30

    :cond_1b
    return-void

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->a()Lcom/a/b/c/c/ah;

    move-result-object v3

    if-ne v3, p2, :cond_f

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_30
    invoke-interface {p1, v4, p3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/c/c/at;

    invoke-virtual {v1}, Lcom/a/b/c/c/at;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_3b
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

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p0, Lcom/a/b/c/c/aq;->e:I

    if-eq v2, v0, :cond_51

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    if-eqz v5, :cond_2f

    if-eqz v1, :cond_4b

    move v1, v3

    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Lcom/a/b/c/c/at;->f()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v8, v4, -0x1

    add-int/2addr v4, v2

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_41

    sub-int v2, v4, v2

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->g(I)V

    move v2, v4

    :cond_41
    invoke-virtual {v0, v6, p1}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    invoke-virtual {v0}, Lcom/a/b/c/c/at;->e_()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_12

    :cond_4b
    const-string v4, "\n"

    invoke-interface {p1, v3, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_2f

    :cond_51
    return-void
.end method

.method public b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->k()V

    iget-object v0, p0, Lcom/a/b/c/c/aq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    if-eqz v0, :cond_10

    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    iget-object v0, p0, Lcom/a/b/c/c/aq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    move-object v0, p1

    goto :goto_e

    :catchall_1a
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

    :goto_5
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1f

    return-void

    :cond_e
    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/at;->a(Lcom/a/b/c/c/t;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1b
    if-lt v1, v3, :cond_e

    move v0, v1

    goto :goto_5

    :cond_1f
    move v1, v0

    goto :goto_1b
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

    packed-switch v1, :pswitch_data_70

    :goto_13
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_1b
    if-lt v2, v3, :cond_2e

    iput v1, p0, Lcom/a/b/c/c/aq;->e:I

    return-void

    :pswitch_20  #0x3
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_13

    :pswitch_26  #0x2
    iget-object v1, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/a/b/c/c/aq;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_13

    :cond_2e
    iget-object v0, p0, Lcom/a/b/c/c/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/at;

    :try_start_36
    invoke-virtual {v0, p0, v1}, Lcom/a/b/c/c/at;->b(Lcom/a/b/c/c/ax;I)I

    move-result v4

    if-ge v4, v1, :cond_66

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
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_51} :catch_51

    :catch_51
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

    :cond_66
    :try_start_66
    invoke-virtual {v0}, Lcom/a/b/c/c/at;->e_()I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_69} :catch_51

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1b

    nop

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_26  #00000002
        :pswitch_20  #00000003
    .end packed-switch
.end method

.method public f_()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/c/aq;->j()V

    iget v0, p0, Lcom/a/b/c/c/aq;->e:I

    return v0
.end method
