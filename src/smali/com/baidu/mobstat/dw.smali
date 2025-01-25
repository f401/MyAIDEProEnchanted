.class public Lcom/baidu/mobstat/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/dw;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/baidu/mobstat/dw;

    invoke-direct {v0}, Lcom/baidu/mobstat/dw;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dw;->a:Lcom/baidu/mobstat/dw;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/dw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/dw;
    .registers 1

    .line 11
    sget-object v0, Lcom/baidu/mobstat/dw;->a:Lcom/baidu/mobstat/dw;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 6
    sput-object p0, Lcom/baidu/mobstat/dw;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 6
    sget-object v0, Lcom/baidu/mobstat/dw;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/mobstat/dv;)V
    .registers 4

    .line 18
    invoke-static {p1}, Lcom/baidu/mobstat/dy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/dw;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_1c

    .line 23
    sget-object p1, Lcom/baidu/mobstat/dw;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/baidu/mobstat/dv;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 26
    :cond_14
    new-instance v0, Lcom/baidu/mobstat/dw$1;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/dw$1;-><init>(Lcom/baidu/mobstat/dw;Lcom/baidu/mobstat/dv;)V

    invoke-static {p1, v0}, Lcom/baidu/mobstat/du;->a(Landroid/content/Context;Lcom/baidu/mobstat/dx;)V

    :cond_1c
    :goto_1c
    return-void
.end method
