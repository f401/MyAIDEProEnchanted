.class public final enum Lcom/baidu/mobstat/SendStrategyEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobstat/SendStrategyEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

.field public static final enum ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

.field public static final enum SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

.field private static final a:[Lcom/baidu/mobstat/SendStrategyEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 16
    new-instance v0, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "APP_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 20
    new-instance v1, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v3, "ONCE_A_DAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 24
    new-instance v3, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v5, "SET_TIME_INTERVAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 12
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/mobstat/SendStrategyEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->a:[Lcom/baidu/mobstat/SendStrategyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 2

    .line 12
    const-class v0, Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 1

    .line 12
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->a:[Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/SendStrategyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method
