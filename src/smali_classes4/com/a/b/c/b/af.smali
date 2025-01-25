.class public final Lcom/a/b/c/b/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/a;

.field private final b:Lcom/a/b/e/b/ab;

.field private final c:I

.field private final d:Lcom/a/b/e/b/q;

.field private final e:Lcom/a/b/c/b/b;

.field private final f:Lcom/a/b/c/b/aa;

.field private final g:Lcom/a/b/c/b/ai;

.field private final h:I

.field private i:[I

.field private final j:I

.field private final k:Z


# direct methods
.method private constructor <init>(Lcom/a/b/e/b/ab;ILcom/a/b/e/b/q;ILcom/a/b/c/a;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/a/b/c/b/af;->a:Lcom/a/b/c/a;

    iput-object p1, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    iput p2, p0, Lcom/a/b/c/b/af;->c:I

    iput-object p3, p0, Lcom/a/b/c/b/af;->d:Lcom/a/b/e/b/q;

    new-instance v0, Lcom/a/b/c/b/b;

    invoke-direct {v0, p1}, Lcom/a/b/c/b/b;-><init>(Lcom/a/b/e/b/ab;)V

    iput-object v0, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    iput p4, p0, Lcom/a/b/c/b/af;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/b/af;->i:[I

    invoke-static {p1, p4}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/ab;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/c/b/af;->k:Z

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->d_()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->f()I

    move-result v3

    add-int/2addr v2, v3

    if-eqz p3, :cond_34

    invoke-virtual {p3}, Lcom/a/b/e/b/q;->b()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    :cond_34
    invoke-virtual {v0}, Lcom/a/b/e/b/d;->e()I

    move-result v3

    iget-boolean v0, p0, Lcom/a/b/c/b/af;->k:Z

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    :goto_3d
    add-int/2addr v0, v3

    iput v0, p0, Lcom/a/b/c/b/af;->h:I

    new-instance v0, Lcom/a/b/c/b/aa;

    mul-int/lit8 v3, v1, 0x3

    iget v4, p0, Lcom/a/b/c/b/af;->h:I

    move-object v1, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/b/aa;-><init>(Lcom/a/b/c/a;IIII)V

    iput-object v0, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    if-eqz p3, :cond_5c

    new-instance v0, Lcom/a/b/c/b/ah;

    iget-object v1, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    invoke-direct {v0, p0, v1, p3}, Lcom/a/b/c/b/ah;-><init>(Lcom/a/b/c/b/af;Lcom/a/b/c/b/aa;Lcom/a/b/e/b/q;)V

    iput-object v0, p0, Lcom/a/b/c/b/af;->g:Lcom/a/b/c/b/ai;

    :goto_58
    return-void

    :cond_59
    iget v0, p0, Lcom/a/b/c/b/af;->j:I

    goto :goto_3d

    :cond_5c
    new-instance v0, Lcom/a/b/c/b/ai;

    iget-object v1, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    invoke-direct {v0, p0, v1}, Lcom/a/b/c/b/ai;-><init>(Lcom/a/b/c/b/af;Lcom/a/b/c/b/aa;)V

    iput-object v0, p0, Lcom/a/b/c/b/af;->g:Lcom/a/b/c/b/ai;

    goto :goto_58
.end method

.method static synthetic a(Lcom/a/b/c/b/af;)Lcom/a/b/c/b/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    return-object v0
.end method

.method private a()Lcom/a/b/c/b/j;
    .registers 5

    invoke-direct {p0}, Lcom/a/b/c/b/af;->c()V

    invoke-direct {p0}, Lcom/a/b/c/b/af;->b()V

    new-instance v0, Lcom/a/b/c/b/ak;

    iget-object v1, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    iget-object v2, p0, Lcom/a/b/c/b/af;->i:[I

    iget-object v3, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/c/b/ak;-><init>(Lcom/a/b/e/b/ab;[ILcom/a/b/c/b/b;)V

    new-instance v1, Lcom/a/b/c/b/j;

    iget v2, p0, Lcom/a/b/c/b/af;->c:I

    iget-object v3, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    invoke-virtual {v3}, Lcom/a/b/c/b/aa;->a()Lcom/a/b/c/b/ab;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/a/b/c/b/j;-><init>(ILcom/a/b/c/b/ab;Lcom/a/b/c/b/c;)V

    return-object v1
.end method

.method public static a(Lcom/a/b/e/b/ab;ILcom/a/b/e/b/q;ILcom/a/b/c/a;)Lcom/a/b/c/b/j;
    .registers 11

    new-instance v0, Lcom/a/b/c/b/af;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/b/af;-><init>(Lcom/a/b/e/b/ab;ILcom/a/b/e/b/q;ILcom/a/b/c/a;)V

    invoke-direct {v0}, Lcom/a/b/c/b/af;->a()Lcom/a/b/c/b/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;
    .registers 2

    invoke-static {p0}, Lcom/a/b/c/b/af;->b(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;
    .registers 3

    invoke-static {p0, p1}, Lcom/a/b/c/b/af;->b(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/b/e/b/b;I)V
    .registers 9

    iget-object v0, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/b;->a(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    invoke-virtual {v1, v0}, Lcom/a/b/c/b/aa;->a(Lcom/a/b/c/b/l;)V

    iget-object v1, p0, Lcom/a/b/c/b/af;->d:Lcom/a/b/e/b/q;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/a/b/c/b/af;->d:Lcom/a/b/e/b/q;

    invoke-virtual {v1, p1}, Lcom/a/b/e/b/q;->a(Lcom/a/b/e/b/b;)Lcom/a/b/e/b/z;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    new-instance v3, Lcom/a/b/c/b/w;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->k()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/a/b/c/b/w;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/z;)V

    invoke-virtual {v2, v3}, Lcom/a/b/c/b/aa;->a(Lcom/a/b/c/b/l;)V

    :cond_23
    iget-object v0, p0, Lcom/a/b/c/b/af;->g:Lcom/a/b/c/b/ai;

    iget-object v1, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-virtual {v1, p1}, Lcom/a/b/c/b/b;->b(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/e/b/b;Lcom/a/b/c/b/h;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/b/af;->g:Lcom/a/b/c/b/ai;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/m;->a(Lcom/a/b/e/b/l;)V

    iget-object v0, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    iget-object v1, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-virtual {v1, p1}, Lcom/a/b/c/b/b;->c(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/aa;->a(Lcom/a/b/c/b/l;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->g()Lcom/a/b/e/b/j;

    move-result-object v1

    if-ltz v0, :cond_6b

    if-eq v0, p2, :cond_6b

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6c

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->e()I

    move-result v2

    if-ne v2, p2, :cond_6c

    iget-object v1, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-virtual {v3, v0}, Lcom/a/b/c/b/b;->a(I)Lcom/a/b/c/b/h;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/a/b/c/b/aa;->a(ILcom/a/b/c/b/h;)V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    new-instance v2, Lcom/a/b/c/b/am;

    sget-object v3, Lcom/a/b/c/b/o;->P:Lcom/a/b/c/b/n;

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    sget-object v4, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    iget-object v5, p0, Lcom/a/b/c/b/af;->e:Lcom/a/b/c/b/b;

    invoke-virtual {v5, v0}, Lcom/a/b/c/b/b;->a(I)Lcom/a/b/c/b/h;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    iget-object v0, p0, Lcom/a/b/c/b/af;->f:Lcom/a/b/c/b/aa;

    invoke-virtual {v0, v2}, Lcom/a/b/c/b/aa;->a(Lcom/a/b/c/b/l;)V

    goto :goto_6b
.end method

.method private static a(Lcom/a/b/e/b/ab;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-array v0, v1, [Z

    aput-boolean v1, v0, v4

    invoke-virtual {p0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/d;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    new-instance v3, Lcom/a/b/c/b/ag;

    invoke-direct {v3, v0, v1, p1}, Lcom/a/b/c/b/ag;-><init>([ZII)V

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/d;->a(Lcom/a/b/e/b/l;)V

    aget-boolean v0, v0, v4

    return v0
.end method

.method private static b(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/b/c/b/af;->b(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->f()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    if-ne v1, v2, :cond_31

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    :cond_31
    if-nez p1, :cond_34

    :goto_33
    return-object v0

    :cond_34
    invoke-virtual {v0, p1}, Lcom/a/b/e/b/x;->b(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    goto :goto_33
.end method

.method private b()V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/b/af;->i:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v4, :cond_e

    return-void

    :cond_e
    add-int/lit8 v0, v1, 0x1

    array-length v5, v3

    if-ne v0, v5, :cond_21

    const/4 v0, -0x1

    :goto_14
    aget v5, v3, v1

    invoke-virtual {v2, v5}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/b;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_21
    aget v0, v3, v0

    goto :goto_14
.end method

.method static synthetic b(Lcom/a/b/c/b/af;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/af;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/a/b/c/b/af;)I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/af;->h:I

    return v0
.end method

.method private c()V
    .registers 15

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/d;->d_()I

    move-result v7

    invoke-virtual {v6}, Lcom/a/b/e/b/d;->j()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v8

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v9

    move v0, v2

    :goto_19
    if-lt v0, v7, :cond_30

    new-array v10, v7, [I

    iget-object v0, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->b()I

    move-result v0

    move v3, v2

    :goto_24
    if-ne v0, v5, :cond_4c

    if-eq v3, v7, :cond_c4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-virtual {v6, v0}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    invoke-static {v8, v1}, Lcom/a/b/g/d;->b([II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3e
    invoke-virtual {v6, v1}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/a/b/e/b/b;->d()I

    move-result v13

    if-ne v13, v0, :cond_76

    invoke-static {v9, v1}, Lcom/a/b/g/d;->b([II)V

    move v0, v1

    :cond_4c
    iget-object v1, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/ab;->a(I)Lcom/a/b/g/n;

    move-result-object v11

    invoke-virtual {v11}, Lcom/a/b/g/n;->b()I

    move-result v12

    move v4, v2

    :goto_57
    if-lt v4, v12, :cond_63

    move v1, v3

    move v4, v0

    :goto_5b
    if-ne v4, v5, :cond_7a

    :goto_5d
    invoke-static {v8, v2}, Lcom/a/b/g/d;->d([II)I

    move-result v0

    move v3, v1

    goto :goto_24

    :cond_63
    invoke-virtual {v11, v4}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    invoke-static {v9, v1}, Lcom/a/b/g/d;->a([II)Z

    move-result v13

    if-eqz v13, :cond_70

    move v1, v3

    move v4, v0

    goto :goto_5b

    :cond_70
    invoke-static {v8, v1}, Lcom/a/b/g/d;->a([II)Z

    move-result v13

    if-nez v13, :cond_3e

    :cond_76
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_57

    :cond_7a
    invoke-static {v8, v4}, Lcom/a/b/g/d;->c([II)V

    invoke-static {v9, v4}, Lcom/a/b/g/d;->c([II)V

    aput v4, v10, v1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v4}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/a/b/e/b/d;->a(Lcom/a/b/e/b/b;)Lcom/a/b/e/b/b;

    move-result-object v3

    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Lcom/a/b/e/b/b;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->d()I

    move-result v3

    invoke-static {v8, v4}, Lcom/a/b/g/d;->a([II)Z

    move-result v11

    if-nez v11, :cond_ca

    if-eq v3, v4, :cond_a9

    if-ltz v3, :cond_a9

    invoke-static {v8, v3}, Lcom/a/b/g/d;->a([II)Z

    move-result v4

    if-eqz v4, :cond_a9

    move v1, v0

    move v4, v3

    goto :goto_5b

    :cond_a9
    invoke-virtual {v1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/g/n;->b()I

    move-result v11

    move v1, v2

    :goto_b2
    if-lt v1, v11, :cond_b7

    move v1, v0

    move v4, v5

    goto :goto_5b

    :cond_b7
    invoke-virtual {v4, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    invoke-static {v8, v3}, Lcom/a/b/g/d;->a([II)Z

    move-result v12

    if-nez v12, :cond_c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_c4
    iput-object v10, p0, Lcom/a/b/c/b/af;->i:[I

    return-void

    :cond_c7
    move v1, v0

    move v4, v3

    goto :goto_5b

    :cond_ca
    move v1, v0

    goto :goto_5b

    :cond_cc
    move v1, v0

    goto :goto_5d
.end method

.method static synthetic d(Lcom/a/b/c/b/af;)I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/af;->j:I

    return v0
.end method

.method static synthetic e(Lcom/a/b/c/b/af;)Lcom/a/b/e/b/ab;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/af;->b:Lcom/a/b/e/b/ab;

    return-object v0
.end method
