.class public final Lcom/a/b/c/b/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/c/b/c;


# instance fields
.field private final a:Lcom/a/b/e/b/ab;

.field private final b:[I

.field private final c:Lcom/a/b/c/b/b;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ab;[ILcom/a/b/c/b/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/a/b/c/b/ak;->a:Lcom/a/b/e/b/ab;

    iput-object p2, p0, Lcom/a/b/c/b/ak;->b:[I

    iput-object p3, p0, Lcom/a/b/c/b/ak;->c:Lcom/a/b/c/b/b;

    return-void
.end method

.method private static a(Lcom/a/b/e/b/b;Lcom/a/b/c/b/b;)Lcom/a/b/c/b/d;
    .registers 9

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/g/n;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/e/b/b;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/a/b/e/b/b;->g()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/a/b/c/b/d;->a:Lcom/a/b/c/b/d;

    :goto_1e
    return-object v0

    :cond_1f
    if-ne v4, v6, :cond_23

    if-ne v1, v0, :cond_2f

    :cond_23
    if-eq v4, v6, :cond_37

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_2f

    invoke-virtual {v3, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    if-eq v4, v1, :cond_37

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move v1, v2

    :goto_38
    if-lt v1, v0, :cond_46

    move v1, v0

    :goto_3b
    new-instance v0, Lcom/a/b/c/b/d;

    invoke-direct {v0, v1}, Lcom/a/b/c/b/d;-><init>(I)V

    :goto_40
    if-lt v2, v1, :cond_59

    invoke-virtual {v0}, Lcom/a/b/c/b/d;->c_()V

    goto :goto_1e

    :cond_46
    invoke-interface {v5, v1}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v4

    sget-object v6, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-virtual {v4, v6}, Lcom/a/b/e/d/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_59
    new-instance v4, Lcom/a/b/e/c/ae;

    invoke-interface {v5, v2}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    invoke-virtual {v3, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/a/b/c/b/b;->a(I)Lcom/a/b/c/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/c/b/h;->i()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Lcom/a/b/c/b/d;->a(ILcom/a/b/e/c/ae;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40
.end method

.method public static a(Lcom/a/b/e/b/ab;[ILcom/a/b/c/b/b;)Lcom/a/b/c/b/f;
    .registers 14

    const/4 v5, 0x0

    const/4 v1, 0x0

    array-length v7, p1

    invoke-virtual {p0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Lcom/a/b/c/b/d;->a:Lcom/a/b/c/b/d;

    move-object v2, v1

    move-object v0, v1

    move v6, v5

    :goto_11
    if-lt v6, v7, :cond_29

    invoke-virtual {v3}, Lcom/a/b/c/b/d;->d_()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v0, v2, v3, p2}, Lcom/a/b/c/b/ak;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;Lcom/a/b/c/b/d;Lcom/a/b/c/b/b;)Lcom/a/b/c/b/g;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_66

    sget-object v0, Lcom/a/b/c/b/f;->a:Lcom/a/b/c/b/f;

    :goto_28
    return-object v0

    :cond_29
    aget v1, p1, v6

    invoke-virtual {v8, v1}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->h()Z

    move-result v4

    if-nez v4, :cond_39

    :goto_35
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_11

    :cond_39
    invoke-static {v1, p2}, Lcom/a/b/c/b/ak;->a(Lcom/a/b/e/b/b;Lcom/a/b/c/b/b;)Lcom/a/b/c/b/d;

    move-result-object v4

    invoke-virtual {v3}, Lcom/a/b/c/b/d;->d_()I

    move-result v10

    if-nez v10, :cond_47

    move-object v0, v1

    move-object v2, v1

    move-object v3, v4

    goto :goto_35

    :cond_47
    invoke-virtual {v3, v4}, Lcom/a/b/c/b/d;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-static {v0, v1, p2}, Lcom/a/b/c/b/ak;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;Lcom/a/b/c/b/b;)Z

    move-result v10

    if-eqz v10, :cond_55

    move-object v2, v1

    goto :goto_35

    :cond_55
    invoke-virtual {v3}, Lcom/a/b/c/b/d;->d_()I

    move-result v10

    if-eqz v10, :cond_62

    invoke-static {v0, v2, v3, p2}, Lcom/a/b/c/b/ak;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;Lcom/a/b/c/b/d;Lcom/a/b/c/b/b;)Lcom/a/b/c/b/g;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    move-object v0, v1

    move-object v2, v1

    move-object v3, v4

    goto :goto_35

    :cond_66
    new-instance v1, Lcom/a/b/c/b/f;

    invoke-direct {v1, v3}, Lcom/a/b/c/b/f;-><init>(I)V

    move v2, v5

    :goto_6c
    if-lt v2, v3, :cond_73

    invoke-virtual {v1}, Lcom/a/b/c/b/f;->c_()V

    move-object v0, v1

    goto :goto_28

    :cond_73
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/g;

    invoke-virtual {v1, v2, v0}, Lcom/a/b/c/b/f;->a(ILcom/a/b/c/b/g;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c
.end method

.method private static a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;Lcom/a/b/c/b/d;Lcom/a/b/c/b/b;)Lcom/a/b/c/b/g;
    .registers 7

    invoke-virtual {p3, p0}, Lcom/a/b/c/b/b;->b(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v0

    invoke-virtual {p3, p1}, Lcom/a/b/c/b/b;->c(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v1

    new-instance v2, Lcom/a/b/c/b/g;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    invoke-virtual {v1}, Lcom/a/b/c/b/h;->i()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Lcom/a/b/c/b/g;-><init>(IILcom/a/b/c/b/d;)V

    return-object v2
.end method

.method private static a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;Lcom/a/b/c/b/b;)Z
    .registers 5

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p2, p0}, Lcom/a/b/c/b/b;->b(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/a/b/c/b/b;->c(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/h;->i()I

    move-result v1

    sub-int v0, v1, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public a()Lcom/a/b/c/b/f;
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/ak;->a:Lcom/a/b/e/b/ab;

    iget-object v1, p0, Lcom/a/b/c/b/ak;->b:[I

    iget-object v2, p0, Lcom/a/b/c/b/ak;->c:Lcom/a/b/c/b/b;

    invoke-static {v0, v1, v2}, Lcom/a/b/c/b/ak;->a(Lcom/a/b/e/b/ab;[ILcom/a/b/c/b/b;)Lcom/a/b/c/b/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/c/b/ak;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/d;->d_()I

    move-result v3

    move v1, v0

    :goto_c
    if-lt v1, v3, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-virtual {v2, v1}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->g()Lcom/a/b/e/b/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/b/e/d/e;->d_()I

    move-result v4

    if-eqz v4, :cond_23

    const/4 v0, 0x1

    goto :goto_e

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public c()Ljava/util/HashSet;
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/b/ak;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/d;->d_()I

    move-result v5

    move v2, v1

    :goto_13
    if-lt v2, v5, :cond_16

    return-object v3

    :cond_16
    invoke-virtual {v4, v2}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->g()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/a/b/e/d/e;->d_()I

    move-result v7

    move v0, v1

    :goto_27
    if-lt v0, v7, :cond_2d

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_2d
    invoke-interface {v6, v0}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method
