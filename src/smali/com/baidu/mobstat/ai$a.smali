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
            "Ljava/lang/Class<",
            "*>;"
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
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ai$a;->a(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Ljava/lang/Object;)J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-wide v0

    :catch_e
    move-exception p1

    new-instance p1, Lcom/baidu/mobstat/af$a;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/ai$a;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mobstat/ai$a;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/ae;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/mobstat/ae;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/af;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-static {v1, v0, v4}, Lcom/baidu/mobstat/af;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

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
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4a
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/ai$a;->a(Ljava/lang/Object;[BII)V

    return-void
.end method

.method private a(Ljava/lang/Object;[BII)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

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

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    new-instance p1, Lcom/baidu/mobstat/af$a;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/baidu/mobstat/af$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ai$a;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
