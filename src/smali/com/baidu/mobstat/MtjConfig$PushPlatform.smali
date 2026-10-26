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
    .locals 14

    .line 33
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "BAIDUYUN"

    const/4 v2, 0x0

    const-string v3, "baiduyun"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 38
    new-instance v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v2, "JIGUANG"

    const/4 v3, 0x1

    const-string v4, "jiguang"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 43
    new-instance v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v3, "GETUI"

    const/4 v4, 0x2

    const-string v5, "getui"

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 48
    new-instance v3, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v4, "HUAWEI"

    const/4 v5, 0x3

    const-string v6, "huawei"

    const/4 v7, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 53
    new-instance v4, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v5, "XIAOMI"

    const/4 v6, 0x4

    const-string v7, "xiaomi"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 58
    new-instance v5, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v6, "UMENG"

    const/4 v7, 0x5

    const-string v8, "umeng"

    const/4 v9, 0x5

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 63
    new-instance v6, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v7, "XINGE"

    const/4 v8, 0x6

    const-string v9, "xinge"

    const/4 v10, 0x6

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 68
    new-instance v7, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v8, "ALIYUN"

    const/4 v9, 0x7

    const-string v10, "aliyun"

    const/4 v11, 0x7

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 73
    new-instance v8, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v9, "OPPO"

    const/16 v10, 0x8

    const-string v11, "oppo"

    const/16 v12, 0x8

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 78
    new-instance v9, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v10, "MEIZU"

    const/16 v11, 0x9

    const-string v12, "meizu"

    const/16 v13, 0x9

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 26
    const/16 v10, 0xa

    new-array v10, v10, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .locals 1

    .line 26
    const-class v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .locals 1

    .line 26
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object v0
.end method


# virtual methods
.method public showName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->a:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
