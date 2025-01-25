.class public final Lcom/a/b/c/c/ai;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/c/c/ah;

.field private final b:Lcom/a/b/c/c/ax;

.field private final c:Lcom/a/b/c/c/ag;

.field private final d:Lcom/a/b/c/c/ag;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/a/b/c/c/ah;Lcom/a/b/c/c/ax;Lcom/a/b/c/c/ag;Lcom/a/b/c/c/ag;I)V
    .registers 8

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-nez p2, :cond_1a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    if-nez p3, :cond_24

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez p4, :cond_2e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lastItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-gtz p5, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iput-object p1, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    iput-object p2, p0, Lcom/a/b/c/c/ai;->b:Lcom/a/b/c/c/ax;

    iput-object p3, p0, Lcom/a/b/c/c/ai;->c:Lcom/a/b/c/c/ag;

    iput-object p4, p0, Lcom/a/b/c/c/ai;->d:Lcom/a/b/c/c/ag;

    iput p5, p0, Lcom/a/b/c/c/ai;->e:I

    return-void
.end method

.method private constructor <init>(Lcom/a/b/c/c/ax;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    sget-object v0, Lcom/a/b/c/c/ah;->j:Lcom/a/b/c/c/ah;

    iput-object v0, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    iput-object p1, p0, Lcom/a/b/c/c/ai;->b:Lcom/a/b/c/c/ax;

    iput-object v2, p0, Lcom/a/b/c/c/ai;->c:Lcom/a/b/c/c/ag;

    iput-object v2, p0, Lcom/a/b/c/c/ai;->d:Lcom/a/b/c/c/ag;

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/c/c/ai;->e:I

    return-void
.end method

.method public static a([Lcom/a/b/c/c/ax;Lcom/a/b/c/c/aq;)V
    .registers 16

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lcom/a/b/c/c/aq;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v11, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v12, p0

    move v10, v8

    :goto_27
    if-lt v10, v12, :cond_34

    new-instance v0, Lcom/a/b/c/c/bh;

    sget-object v1, Lcom/a/b/c/c/ah;->j:Lcom/a/b/c/c/ah;

    invoke-direct {v0, v1, v11}, Lcom/a/b/c/c/bh;-><init>(Lcom/a/b/c/c/ah;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    return-void

    :cond_34
    aget-object v2, p0, v10

    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v1, v7

    move-object v4, v7

    move-object v3, v7

    move v5, v8

    :goto_42
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz v5, :cond_74

    new-instance v0, Lcom/a/b/c/c/ai;

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/c/ai;-><init>(Lcom/a/b/c/c/ah;Lcom/a/b/c/c/ax;Lcom/a/b/c/c/ag;Lcom/a/b/c/c/ag;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_27

    :cond_56
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/a/b/c/c/ag;

    invoke-virtual {v6}, Lcom/a/b/c/c/ag;->a()Lcom/a/b/c/c/ah;

    move-result-object v9

    if-eq v9, v1, :cond_70

    if-eqz v5, :cond_6d

    new-instance v0, Lcom/a/b/c/c/ai;

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/c/ai;-><init>(Lcom/a/b/c/c/ah;Lcom/a/b/c/c/ax;Lcom/a/b/c/c/ag;Lcom/a/b/c/c/ag;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    move-object v1, v9

    move-object v3, v6

    move v5, v8

    :cond_70
    add-int/lit8 v5, v5, 0x1

    move-object v4, v6

    goto :goto_42

    :cond_74
    if-ne v2, p1, :cond_52

    new-instance v0, Lcom/a/b/c/c/ai;

    invoke-direct {v0, p1}, Lcom/a/b/c/c/ai;-><init>(Lcom/a/b/c/c/ax;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->u:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 2

    return-void
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    invoke-virtual {v0}, Lcom/a/b/c/c/ah;->a()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/c/c/ai;->c:Lcom/a/b/c/c/ag;

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/a/b/c/c/ai;->b:Lcom/a/b/c/c/ax;

    invoke-virtual {v0}, Lcom/a/b/c/c/ax;->h()I

    move-result v0

    :goto_13
    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_9c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/ai;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    invoke-virtual {v3}, Lcom/a/b/c/c/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  type:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    invoke-virtual {v3}, Lcom/a/b/c/c/ah;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const-string v2, "  unused: 0"

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  size:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/a/b/c/c/ai;->e:I

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  offset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_9c
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v4}, Lcom/a/b/g/a;->c(I)V

    iget v1, p0, Lcom/a/b/c/c/ai;->e:I

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    return-void

    :cond_ab
    iget-object v0, p0, Lcom/a/b/c/c/ai;->b:Lcom/a/b/c/c/ax;

    iget-object v2, p0, Lcom/a/b/c/c/ai;->c:Lcom/a/b/c/c/ag;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/ax;->a(Lcom/a/b/c/c/ag;)I

    move-result v0

    goto/16 :goto_13
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/c/ai;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/ai;->b:Lcom/a/b/c/c/ax;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/ai;->a:Lcom/a/b/c/c/ah;

    invoke-virtual {v1}, Lcom/a/b/c/c/ah;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
