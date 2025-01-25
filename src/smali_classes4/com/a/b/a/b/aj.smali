.class Lcom/a/b/a/b/aj;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/a/b/a/b/ab;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/BitSet;

.field private d:I

.field private e:I

.field private final f:Lcom/a/b/a/b/ah;

.field private final g:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/ah;Ljava/util/ArrayList;)V
    .registers 6

    iput-object p1, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/b/aj;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/aj;->c:Ljava/util/BitSet;

    iput-object p2, p0, Lcom/a/b/a/b/aj;->f:Lcom/a/b/a/b/ah;

    iput-object p3, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(I)I
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/b/aj;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_12
    :goto_12
    return p1

    :cond_13
    iget v0, p0, Lcom/a/b/a/b/aj;->d:I

    invoke-direct {p0, p1, v0}, Lcom/a/b/a/b/aj;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/a/b/a/b/aj;->f:Lcom/a/b/a/b/ah;

    invoke-virtual {v0}, Lcom/a/b/a/b/ah;->a()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/b/aj;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/a/b/aj;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_33
    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4a

    iget-object v2, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/n;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v1

    goto :goto_12

    :cond_4a
    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method

.method private a(II)V
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-static {v0, p1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-static {v0, v4}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v5, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/aj;->a(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/a/b/g/n;->a(II)Lcom/a/b/g/n;

    move-result-object v0

    :goto_25
    iget-object v2, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    new-instance v3, Lcom/a/b/e/b/b;

    iget-object v5, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/m;)Lcom/a/b/e/b/m;

    move-result-object v4

    invoke-direct {v3, p2, v4, v0, v1}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/n;

    invoke-static {v2, v3, v0}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    return-void

    :cond_42
    iget-object v0, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-static {v0, p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;I)Lcom/a/b/a/b/ai;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-static {v0}, Lcom/a/b/a/b/ai;->a(Lcom/a/b/a/b/ai;)I

    move-result v1

    iget v2, p0, Lcom/a/b/a/b/aj;->d:I

    if-eq v1, v2, :cond_7f

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ret instruction returns to label "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/a/b/ai;->a(Lcom/a/b/a/b/ai;)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/a/b/a/b/aj;->d:I

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    iget v0, p0, Lcom/a/b/a/b/aj;->e:I

    invoke-static {v0}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v0

    iget v1, p0, Lcom/a/b/a/b/aj;->e:I

    goto :goto_25

    :cond_88
    invoke-virtual {v4}, Lcom/a/b/e/b/b;->d()I

    move-result v6

    invoke-virtual {v5}, Lcom/a/b/g/n;->b()I

    move-result v7

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0, v7}, Lcom/a/b/g/n;-><init>(I)V

    move v3, v2

    :goto_96
    if-lt v3, v7, :cond_9c

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    goto :goto_25

    :cond_9c
    invoke-virtual {v5, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/a/b/a/b/aj;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/b/g/n;->c(I)V

    if-ne v6, v8, :cond_aa

    move v1, v2

    :cond_aa
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_96
.end method

.method private b(II)Z
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/n;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {v0}, Lcom/a/b/g/n;->d()I

    move-result v0

    if-ne v0, p2, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method a(Lcom/a/b/e/b/b;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iput v0, p0, Lcom/a/b/a/b/aj;->e:I

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iput v0, p0, Lcom/a/b/a/b/aj;->d:I

    iget v0, p0, Lcom/a/b/a/b/aj;->d:I

    invoke-direct {p0, v0}, Lcom/a/b/a/b/aj;->a(I)I

    move-result v2

    iget-object v0, p0, Lcom/a/b/a/b/aj;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_23
    if-gez v1, :cond_48

    iget-object v1, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    new-instance v3, Lcom/a/b/e/b/b;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v4

    invoke-static {v2}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    iget-object v0, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/n;

    invoke-static {v1, v3, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z

    return-void

    :cond_48
    iget-object v0, p0, Lcom/a/b/a/b/aj;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/a/b/a/b/aj;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/a/b/a/b/aj;->a(II)V

    iget-object v3, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    iget-object v4, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-static {v4, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;)Z

    move-result v1

    if-eqz v1, :cond_82

    new-instance v1, Lcom/a/b/a/b/aj;

    iget-object v3, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    iget-object v4, p0, Lcom/a/b/a/b/aj;->f:Lcom/a/b/a/b/ah;

    iget-object v5, p0, Lcom/a/b/a/b/aj;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Lcom/a/b/a/b/aj;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/ah;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/a/b/a/b/aj;->a:Lcom/a/b/a/b/ab;

    invoke-static {v3, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/b/aj;->a(Lcom/a/b/e/b/b;)V

    :cond_82
    iget-object v0, p0, Lcom/a/b/a/b/aj;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_23
.end method
