.class public Lcom/baidu/mobstat/GetReverse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/ICooperService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCooperService(Landroid/content/Context;)Lcom/baidu/mobstat/ICooperService;
    .registers 1

    .line 13
    sget-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    if-nez p0, :cond_a

    .line 14
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p0

    sput-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    .line 17
    :cond_a
    sget-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    return-object p0
.end method
