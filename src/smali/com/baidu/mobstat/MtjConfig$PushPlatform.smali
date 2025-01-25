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
        "Ljava/lang/Enum<",
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
    .registers 16

    .line 33
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v1, "baiduyun"

    const-string v2, "BAIDUYUN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 38
    new-instance v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v2, "jiguang"

    const-string v4, "JIGUANG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v5}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 43
    new-instance v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v4, "getui"

    const-string v6, "GETUI"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v7}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 48
    new-instance v4, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v6, "huawei"

    const-string v8, "HUAWEI"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v9}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 53
    new-instance v6, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v8, "xiaomi"

    const-string v10, "XIAOMI"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v11}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 58
    new-instance v8, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v10, "umeng"

    const-string v12, "UMENG"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10, v13}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 63
    new-instance v10, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v12, "xinge"

    const-string v14, "XINGE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12, v15}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 68
    new-instance v12, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v14, "aliyun"

    const-string v15, "ALIYUN"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14, v13}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 73
    new-instance v14, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v15, "oppo"

    const-string v13, "OPPO"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15, v11}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 78
    new-instance v13, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const-string v15, "meizu"

    const-string v11, "MEIZU"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15, v9}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    .line 26
    const/16 v11, 0xa

    new-array v11, v11, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    sput-object v11, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .registers 2

    .line 26
    const-class v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object p0
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

    const-string v1, "p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
