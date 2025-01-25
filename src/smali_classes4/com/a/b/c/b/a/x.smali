.class public final Lcom/a/b/c/b/a/x;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/x;

    invoke-direct {v0}, Lcom/a/b/c/b/a/x;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/x;->a:Lcom/a/b/c/b/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/c/b/r;-><init>()V

    return-void
.end method

.method private static d(Lcom/a/b/e/b/x;)I
    .registers 9

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    if-le v4, v7, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    move v2, v3

    move v1, v3

    :goto_c
    if-lt v2, v4, :cond_12

    if-gt v1, v7, :cond_9

    move v0, v1

    goto :goto_9

    :cond_12
    invoke-virtual {p0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->k()I

    move-result v5

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->k()I

    move-result v3

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/a/b/c/b/a/x;->b(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v5

    goto :goto_c
.end method

.method private static e(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/a/b/c/b/a/x;->d(Lcom/a/b/e/b/x;)I

    move-result v2

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    if-ne v2, v4, :cond_c

    :goto_b
    return-object p0

    :cond_c
    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v2}, Lcom/a/b/e/b/x;-><init>(I)V

    move v2, v1

    move v3, v1

    :goto_13
    if-lt v2, v4, :cond_1a

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    move-object p0, v0

    goto :goto_b

    :cond_1a
    invoke-virtual {p0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3f

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v6, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-static {v1, v6}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v1, v3, 0x2

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_13

    :cond_3f
    add-int/lit8 v1, v3, 0x1

    goto :goto_3b
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/c/b/a/x;->e(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/c/b/a/x;->a(Lcom/a/b/e/b/x;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 16

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/y;

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/y;->b(I)I

    move-result v2

    int-to-short v6, v2

    invoke-virtual {v0, v3}, Lcom/a/b/c/b/y;->b(I)I

    move-result v0

    int-to-short v7, v0

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/b/a/x;->e(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/e/b/x;->d_()I

    move-result v9

    if-lez v9, :cond_64

    invoke-virtual {v8, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    move v5, v0

    :goto_29
    if-le v9, v3, :cond_66

    invoke-virtual {v8, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    move v4, v0

    :goto_34
    if-le v9, v10, :cond_68

    invoke-virtual {v8, v10}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    move v3, v0

    :goto_3f
    if-le v9, v11, :cond_6a

    invoke-virtual {v8, v11}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    move v2, v0

    :goto_4a
    if-le v9, v12, :cond_6c

    invoke-virtual {v8, v12}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    :goto_54
    invoke-static {v0, v9}, Lcom/a/b/c/b/a/x;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/a/b/c/b/a/x;->a(Lcom/a/b/c/b/l;I)S

    move-result v0

    invoke-static {v5, v4, v3, v2}, Lcom/a/b/c/b/a/x;->a(IIII)S

    move-result v1

    invoke-static {p1, v0, v6, v1, v7}, Lcom/a/b/c/b/a/x;->a(Lcom/a/b/g/a;SSSS)V

    return-void

    :cond_64
    move v5, v1

    goto :goto_29

    :cond_66
    move v4, v1

    goto :goto_34

    :cond_68
    move v3, v1

    goto :goto_3f

    :cond_6a
    move v2, v1

    goto :goto_4a

    :cond_6c
    move v0, v1

    goto :goto_54
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->g()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/a/b/c/b/y;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    check-cast p1, Lcom/a/b/c/b/y;

    invoke-virtual {p1}, Lcom/a/b/c/b/y;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v0}, Lcom/a/b/c/b/y;->b(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/a/b/c/b/y;->b(I)I

    move-result v3

    invoke-static {v2}, Lcom/a/b/c/b/a/x;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v3}, Lcom/a/b/c/b/a/x;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    instance-of v2, v2, Lcom/a/b/e/c/z;

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    instance-of v2, v2, Lcom/a/b/e/c/ab;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/a/b/c/b/y;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/c/b/a/x;->d(Lcom/a/b/e/b/x;)I

    move-result v2

    if-ltz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    if-lt v0, v2, :cond_11

    return-object v3

    :cond_11
    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->k()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/a/b/c/b/a/x;->b(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
