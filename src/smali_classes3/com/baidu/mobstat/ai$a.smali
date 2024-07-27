.class Lcom/baidu/mobstat/ai$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ai$a;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/ai$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mobstat/ai$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ai$a;->a(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/Object;)J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/mobstat/af$a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ai$a;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mobstat/ai$a;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/ae;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/mobstat/ae;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ai$a;->b:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/baidu/mobstat/ae;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ai$a;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/ai$a;->a(Ljava/lang/Object;[BII)V

    return-void
.end method

.method private a(Ljava/lang/Object;[BII)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/mobstat/af$a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
