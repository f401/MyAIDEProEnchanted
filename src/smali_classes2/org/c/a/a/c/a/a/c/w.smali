.class public Lorg/c/a/a/c/a/a/c/w;
.super Ljava/lang/Object;


# static fields
.field static final d:Z


# instance fields
.field protected a:Ljava/util/HashMap;

.field protected b:Ljava/util/HashMap;

.field protected c:Lorg/c/a/a/a/a/a;

.field private e:[Ljava/lang/Object;

.field private f:Lorg/c/a/a/c/a/a/c/z;

.field private g:Lorg/c/a/a/c/a/a/c/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/c/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/w;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/c/a/a/a/a/a;)V
    .registers 5

    const/16 v1, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    new-instance v0, Lorg/c/a/a/c/a/a/c/x;

    invoke-direct {v0, p0}, Lorg/c/a/a/c/a/a/c/x;-><init>(Lorg/c/a/a/c/a/a/c/w;)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->f:Lorg/c/a/a/c/a/a/c/z;

    new-instance v0, Lorg/c/a/a/c/a/a/c/y;

    invoke-direct {v0, p0}, Lorg/c/a/a/c/a/a/c/y;-><init>(Lorg/c/a/a/c/a/a/c/w;)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->g:Lorg/c/a/a/c/a/a/c/z;

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/w;->c:Lorg/c/a/a/a/a/a;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    const-string v1, "java/lang/Class"

    sget-object v2, Lorg/c/a/a/b/d/e/i;->f:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    const-string v1, "java/lang/Object"

    sget-object v2, Lorg/c/a/a/b/d/e/i;->l:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    const-string v1, "java/lang/String"

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/c/z;)Ljava/lang/String;
    .registers 13

    const/4 v1, 0x0

    const/4 v8, 0x6

    const/4 v6, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->c:Lorg/c/a/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/c/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lorg/c/a/a/c/b/a/c;

    invoke-direct {v4, v0}, Lorg/c/a/a/c/b/a/c;-><init>([B)V

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v0

    const v3, -0x35014542    # -8346975.0f

    if-eq v0, v3, :cond_1

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid CLASS file"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v4, v6}, Lorg/c/a/a/c/b/a/c;->a(I)V

    invoke-direct {p0, v4}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/b/a/c;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6}, Lorg/c/a/a/c/b/a/c;->a(I)V

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    const/4 v0, 0x1

    move v3, v0

    :goto_2
    if-le v3, v6, :cond_3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    move v0, v2

    :goto_3
    if-lt v0, v3, :cond_4

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    move v0, v2

    :goto_4
    if-lt v0, v3, :cond_5

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    :goto_5
    if-ge v2, v3, :cond_7

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v6

    const-string v7, "InnerClasses"

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3, v4, p1, p2}, Lorg/c/a/a/c/a/a/c/z;->a(Lorg/c/a/a/c/b/a/c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v0, v5, v0

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    aget-object v0, v5, v0

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v8}, Lorg/c/a/a/c/b/a/c;->a(I)V

    invoke-static {v4}, Lorg/c/a/a/c/a/a/c/w;->b(Lorg/c/a/a/c/b/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v8}, Lorg/c/a/a/c/b/a/c;->a(I)V

    invoke-static {v4}, Lorg/c/a/a/c/a/a/c/w;->b(Lorg/c/a/a/c/b/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v6}, Lorg/c/a/a/c/b/a/c;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lorg/c/a/a/c/a/a/c/w;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/c/z;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/c/a/a/c/w;->a(Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/c/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "java/lang/Object"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->c:Lorg/c/a/a/a/a/a;

    invoke-interface {v0, p2}, Lorg/c/a/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/c/a/a/c/a/a/c/w;->c(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_1

    array-length v4, v3

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_3

    array-length v4, v3

    move v0, v1

    :goto_3
    if-lt v0, v4, :cond_5

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget-object v5, v3, v0

    invoke-direct {p0, p1, v5}, Lorg/c/a/a/c/a/a/c/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object v3, v0

    goto :goto_1
.end method

.method static synthetic a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lorg/c/a/a/c/b/a/c;)[Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, v1, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->a()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid constant pool entry"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/w;->e:[Ljava/lang/Object;

    new-instance v3, Lorg/c/a/a/b/a/b/b;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/b;-><init>(I)V

    aput-object v3, v2, v0

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    goto :goto_2

    :pswitch_5
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    goto :goto_2

    :pswitch_6
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    .registers 3

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/w;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/c/a/a/c/a/a/c/w;->c(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/c/a/a/c/a/a/c/w;->d(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/c/a/a/c/a/a/c/w;->e(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method static synthetic b(Lorg/c/a/a/c/a/a/c/w;)Lorg/c/a/a/c/a/a/c/z;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->f:Lorg/c/a/a/c/a/a/c/z;

    return-object v0
.end method

.method private static b(Lorg/c/a/a/c/b/a/c;)V
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/b/a/c;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    .registers 8

    const/16 v2, 0x2f

    const/16 v5, 0x2e

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->c:Lorg/c/a/a/a/a/a;

    invoke-interface {v1, p1}, Lorg/c/a/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/c/a/a/c/a/a/c/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lorg/c/a/a/c/a/a/c/w;->c(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v1

    sget-boolean v2, Lorg/c/a/a/c/a/a/c/w;->d:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/c/a/a/b/d/e/h;

    const/4 v3, 0x0

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/w;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v3, v2, v1}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/c/a/a/b/d/e/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3, v2, v1}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    .registers 8

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/16 v4, 0x24

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lorg/c/a/a/c/a/a/c/w;->d(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v4

    new-instance v1, Lorg/c/a/a/b/d/e/h;

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/c/a/a/b/d/e/i;

    invoke-direct {v1, p1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    .registers 8

    const/16 v2, 0x2f

    const/16 v5, 0x2e

    const/4 v3, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a/c/a/a/c/w;->e(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/c/a/a/b/d/e/h;

    const/4 v3, 0x0

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/w;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v3, v2, v1}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V

    :goto_0
    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lorg/c/a/a/b/d/e/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3, v2, v1}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->g:Lorg/c/a/a/c/a/a/c/z;

    invoke-direct {p0, p1, v0, v1}, Lorg/c/a/a/c/a/a/c/w;->a(Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/c/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-ne v0, v1, :cond_3

    const/4 p0, 0x0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    .registers 7

    const/16 v4, 0x5b

    const/16 v3, 0x4c

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a/c/a/a/c/w;->b(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v2

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/c/a/a/b/d/e/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/w;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a/c/a/a/c/w;->b(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lorg/c/a/a/c/a/a/c/w;->b(Ljava/lang/String;)Lorg/c/a/a/b/d/e/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lorg/c/a/a/b/d/e/i;Lorg/c/a/a/b/d/e/i;)Z
    .registers 7

    const/4 v0, 0x1

    sget-object v1, Lorg/c/a/a/b/d/e/i;->p:Lorg/c/a/a/b/d/e/i;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->d()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->d()I

    move-result v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/e/i;->d()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "java/lang/Object"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v2}, Lorg/c/a/a/c/a/a/c/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
