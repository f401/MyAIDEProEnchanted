.class public Lcom/baidu/mobstat/cx;
.super Lcom/baidu/mobstat/cv;
.source "SourceFile"


# static fields
.field private static c:Lcom/baidu/mobstat/cx;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/baidu/mobstat/cx;

    invoke-direct {v0}, Lcom/baidu/mobstat/cx;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cx;->c:Lcom/baidu/mobstat/cx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/baidu/mobstat/cv;-><init>()V

    return-void
.end method

.method public static c()Lcom/baidu/mobstat/cx;
    .registers 1

    .line 17
    sget-object v0, Lcom/baidu/mobstat/cx;->c:Lcom/baidu/mobstat/cx;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "BaiduMobStat"

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/baidu/mobstat/cx;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/baidu/mobstat/cx;->b:Z

    return v0
.end method
