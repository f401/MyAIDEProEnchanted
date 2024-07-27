.class public Lcom/baidu/mobstat/dc;
.super Lcom/baidu/mobstat/cv;
.source "SourceFile"


# static fields
.field private static b:Lcom/baidu/mobstat/dc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/baidu/mobstat/dc;

    invoke-direct {v0}, Lcom/baidu/mobstat/dc;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dc;->b:Lcom/baidu/mobstat/dc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/baidu/mobstat/cv;-><init>()V

    .line 15
    return-void
.end method

.method public static c()Lcom/baidu/mobstat/dc;
    .registers 1

    .line 18
    sget-object v0, Lcom/baidu/mobstat/dc;->b:Lcom/baidu/mobstat/dc;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "mtj.fulltrace"

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method
