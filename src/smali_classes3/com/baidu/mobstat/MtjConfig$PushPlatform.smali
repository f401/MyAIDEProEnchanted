.class public final enum Lcom/baidu/mobstat/MtjConfig$PushPlatform;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/MtjConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/MtjConfig$PushPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field private static final c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "BAIDUYUN"

    const-string v2, "baiduyun"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 38
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "JIGUANG"

    const-string v2, "jiguang"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 43
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "GETUI"

    const-string v2, "getui"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 48
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "HUAWEI"

    const-string v2, "huawei"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 53
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "XIAOMI"

    const-string v2, "xiaomi"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 58
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "UMENG"

    const/4 v2, 0x5

    const-string v3, "umeng"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 63
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "XINGE"

    const/4 v2, 0x6

    const-string v3, "xinge"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 68
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "ALIYUN"

    const/4 v2, 0x7

    const-string v3, "aliyun"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 73
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "OPPO"

    const/16 v2, 0x8

    const-string v3, "oppo"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 78
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "MEIZU"

    const/16 v2, 0x9

    const-string v3, "meizu"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->a:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .registers 2

    .line 26
    const-class v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .registers 1

    .line 26
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object v0
.end method


# virtual methods
.method public showName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->a:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
