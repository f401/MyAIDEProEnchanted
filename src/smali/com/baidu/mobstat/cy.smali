.class public Lcom/baidu/mobstat/cy;
.super Lcom/baidu/mobstat/cv;
.source "SourceFile"


# static fields
.field private static b:Lcom/baidu/mobstat/cy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/baidu/mobstat/cy;

    invoke-direct {v0}, Lcom/baidu/mobstat/cy;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cy;->b:Lcom/baidu/mobstat/cy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/baidu/mobstat/cv;-><init>()V

    return-void
.end method

.method public static c()Lcom/baidu/mobstat/cy;
    .registers 1

    .line 18
    sget-object v0, Lcom/baidu/mobstat/cy;->b:Lcom/baidu/mobstat/cy;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "mtj.autotrace"

    return-object v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
