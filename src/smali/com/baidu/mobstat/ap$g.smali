.class Lcom/baidu/mobstat/ap$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;III)I
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$g;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return p1

    :catch_28
    move-exception p1

    new-instance p2, Lcom/baidu/mobstat/af$a;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method a()V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/ae;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v6, 0x2

    aput-object v1, v3, v6

    const/4 v7, 0x3

    aput-object v1, v3, v7

    invoke-static {v2, v0, v3}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ap$g;->a:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mobstat/ae;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ap$g;->b:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/ContentResolver;

    invoke-static {}, Lcom/baidu/mobstat/ae;->f()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ap$g;->c:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mobstat/ae;->g()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ap$g;->d:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/ContentResolver;

    invoke-static {}, Lcom/baidu/mobstat/ae;->h()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ap$g;->e:Ljava/lang/reflect/Method;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    return-void
.end method

.method public a(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$g;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    new-instance p2, Lcom/baidu/mobstat/af$a;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$g;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    new-instance p2, Lcom/baidu/mobstat/af$a;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$g;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    new-instance p2, Lcom/baidu/mobstat/af$a;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$g;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    new-instance p2, Lcom/baidu/mobstat/af$a;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
