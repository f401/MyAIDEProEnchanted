.class public Lcom/a/b/a/b/w;
.super Lcom/a/b/a/b/v;


# instance fields
.field private final a:Lcom/a/b/a/b/z;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, v0}, Lcom/a/b/a/b/v;-><init>(Z)V

    new-instance v0, Lcom/a/b/a/b/z;

    invoke-direct {v0, p1}, Lcom/a/b/a/b/z;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private constructor <init>(Lcom/a/b/a/b/w;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/a/b/w;->e()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v0}, Lcom/a/b/a/b/v;-><init>(Z)V

    iget-object v0, p1, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->e()Lcom/a/b/a/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_26
    if-lt v1, v2, :cond_2b

    return-void

    :cond_29
    move v0, v1

    goto :goto_8

    :cond_2b
    iget-object v0, p1, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3e
    iget-object v3, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/a/b/a/b/v;->a()Lcom/a/b/a/b/v;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method public constructor <init>(Lcom/a/b/a/b/z;Ljava/util/ArrayList;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/a/b/z;->f()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/a/b/a/b/v;-><init>(Z)V

    iput-object p1, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    iput-object p2, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private a(Lcom/a/b/a/b/w;)Lcom/a/b/a/b/w;
    .registers 15

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {p1}, Lcom/a/b/a/b/w;->b()Lcom/a/b/a/b/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/z;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;

    move-result-object v7

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v0, p1, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    move v6, v1

    :goto_23
    if-lt v5, v10, :cond_2c

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    if-ne v0, v7, :cond_7e

    if-nez v6, :cond_7e

    :goto_2b
    return-object p0

    :cond_2c
    if-ge v5, v8, :cond_51

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    move-object v3, v0

    :goto_37
    if-ge v5, v9, :cond_53

    iget-object v0, p1, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    :goto_41
    if-ne v3, v0, :cond_55

    move-object v2, v3

    :goto_44
    if-nez v6, :cond_7c

    if-ne v3, v2, :cond_7c

    move v0, v1

    :goto_49
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v0

    goto :goto_23

    :cond_51
    move-object v3, v4

    goto :goto_37

    :cond_53
    move-object v0, v4

    goto :goto_41

    :cond_55
    if-nez v3, :cond_59

    move-object v2, v0

    goto :goto_44

    :cond_59
    if-nez v0, :cond_5d

    move-object v2, v3

    goto :goto_44

    :cond_5d
    :try_start_5d
    invoke-virtual {v3, v0}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;
    :try_end_60
    .catch Lcom/a/b/a/b/al; {:try_start_5d .. :try_end_60} :catch_63

    move-result-object v0

    move-object v2, v0

    goto :goto_44

    :catch_63
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Merging locals set for caller block "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_44

    :cond_7c
    const/4 v0, 0x1

    goto :goto_49

    :cond_7e
    new-instance p0, Lcom/a/b/a/b/w;

    invoke-direct {p0, v7, v11}, Lcom/a/b/a/b/w;-><init>(Lcom/a/b/a/b/z;Ljava/util/ArrayList;)V

    goto :goto_2b
.end method

.method private a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/w;
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {p1}, Lcom/a/b/a/b/z;->b()Lcom/a/b/a/b/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/z;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v1

    move v4, v1

    :goto_1e
    if-lt v3, v7, :cond_27

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    if-ne v0, v5, :cond_5d

    if-nez v4, :cond_5d

    :goto_26
    return-object p0

    :cond_27
    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    :try_start_32
    invoke-virtual {v0, p1}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;
    :try_end_35
    .catch Lcom/a/b/a/b/al; {:try_start_32 .. :try_end_35} :catch_43

    move-result-object v2

    :cond_36
    :goto_36
    if-nez v4, :cond_5b

    if-ne v0, v2, :cond_5b

    move v0, v1

    :goto_3b
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_1e

    :catch_43
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Merging one locals against caller block "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    goto :goto_36

    :cond_5b
    const/4 v0, 0x1

    goto :goto_3b

    :cond_5d
    new-instance p0, Lcom/a/b/a/b/w;

    invoke-direct {p0, v5, v6}, Lcom/a/b/a/b/w;-><init>(Lcom/a/b/a/b/z;Ljava/util/ArrayList;)V

    goto :goto_26
.end method

.method private c(I)Lcom/a/b/a/b/v;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    goto :goto_9
.end method


# virtual methods
.method public a()Lcom/a/b/a/b/v;
    .registers 2

    new-instance v0, Lcom/a/b/a/b/w;

    invoke-direct {v0, p0}, Lcom/a/b/a/b/w;-><init>(Lcom/a/b/a/b/w;)V

    return-object v0
.end method

.method public synthetic a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/w;->b(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/a/b/v;I)Lcom/a/b/a/b/w;
    .registers 12

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/a/b/a/b/w;->c(I)Lcom/a/b/a/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {p1}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/z;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;

    move-result-object v1

    if-ne v0, p1, :cond_19

    move-object v3, v0

    :goto_12
    if-ne v3, v0, :cond_22

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    if-ne v1, v0, :cond_22

    :goto_18
    return-object p0

    :cond_19
    if-nez v0, :cond_1d

    move-object v3, p1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;

    move-result-object v3

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move-object v1, v4

    move v5, v0

    :goto_36
    if-lt v5, v7, :cond_41

    new-instance p0, Lcom/a/b/a/b/w;

    invoke-direct {p0, v1, v8}, Lcom/a/b/a/b/w;-><init>(Lcom/a/b/a/b/z;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/a/b/a/b/w;->c_()V

    goto :goto_18

    :cond_41
    if-ne v5, p2, :cond_54

    move-object v2, v3

    :goto_44
    if-eqz v2, :cond_69

    if-nez v1, :cond_60

    invoke-virtual {v2}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v0

    :goto_4c
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move-object v1, v0

    move v5, v2

    goto :goto_36

    :cond_54
    if-ge v5, v6, :cond_6b

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    move-object v2, v0

    goto :goto_44

    :cond_60
    invoke-virtual {v2}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/b/z;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;

    move-result-object v0

    goto :goto_4c

    :cond_69
    move-object v0, v1

    goto :goto_4c

    :cond_6b
    move-object v2, v4

    goto :goto_44
.end method

.method public a(I)Lcom/a/b/e/d/d;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/z;->a(I)Lcom/a/b/e/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/a/b/e/d/d;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/a/b/w;->l()V

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/a/b/z;->a(ILcom/a/b/e/d/d;)V

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Lcom/a/b/a/b/v;->a(ILcom/a/b/e/d/d;)V

    goto :goto_e
.end method

.method public a(Lcom/a/a/a/b;)V
    .registers 7

    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/z;->a(Lcom/a/a/a/b;)V

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-lt v1, v2, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-eqz v0, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(locals array set: primary for caller "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/z;->a(Lcom/a/a/a/b;)V

    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12
.end method

.method public a(Lcom/a/b/e/b/u;)V
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/a/b/a/b/w;->a(ILcom/a/b/e/d/d;)V

    return-void
.end method

.method public a(Lcom/a/b/e/d/c;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->f()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/a/b/a/b/w;->l()V

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/z;->a(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/v;->a(Lcom/a/b/e/d/c;)V

    goto :goto_17
.end method

.method public b(I)Lcom/a/b/a/b/v;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/w;->c(I)Lcom/a/b/a/b/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/w;
    .registers 5

    :try_start_0
    instance-of v1, p1, Lcom/a/b/a/b/w;

    if-eqz v1, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/a/b/a/b/w;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/a/b/a/b/w;->a(Lcom/a/b/a/b/w;)Lcom/a/b/a/b/w;
    :try_end_b
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_b} :catch_19

    move-result-object v1

    :goto_c
    invoke-virtual {v1}, Lcom/a/b/a/b/w;->c_()V

    return-object v1

    :cond_10
    :try_start_10
    move-object v0, p1

    check-cast v0, Lcom/a/b/a/b/z;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/a/b/a/b/w;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/w;
    :try_end_17
    .catch Lcom/a/b/a/b/al; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_c

    :catch_19
    move-exception v1

    const-string v2, "underlay locals:"

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/a/b/a/b/w;->a(Lcom/a/a/a/b;)V

    const-string v2, "overlay locals:"

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/a/b/a/b/v;->a(Lcom/a/a/a/b;)V

    throw v1
.end method

.method protected b()Lcom/a/b/a/b/z;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    return-object v0
.end method

.method public c_()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->c_()V

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0}, Lcom/a/b/a/b/v;->c_()V

    return-void

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/a/b/a/b/v;->c_()V

    goto :goto_b
.end method

.method public d()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(locals array set; primary)\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/a/b/w;->b()Lcom/a/b/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    if-lt v1, v3, :cond_29

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/a/b/a/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/v;

    if-eqz v0, :cond_5d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(locals array set: primary for caller "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/w;->a:Lcom/a/b/a/b/z;

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->f()I

    move-result v0

    return v0
.end method
