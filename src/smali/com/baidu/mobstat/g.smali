.class public final enum Lcom/baidu/mobstat/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/g;

.field public static final enum b:Lcom/baidu/mobstat/g;

.field public static final enum c:Lcom/baidu/mobstat/g;

.field public static final enum d:Lcom/baidu/mobstat/g;

.field public static final enum e:Lcom/baidu/mobstat/g;

.field public static final enum f:Lcom/baidu/mobstat/g;

.field public static final enum g:Lcom/baidu/mobstat/g;

.field public static final enum h:Lcom/baidu/mobstat/g;

.field public static final enum i:Lcom/baidu/mobstat/g;

.field private static final k:[Lcom/baidu/mobstat/g;


# instance fields
.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 8
    new-instance v0, Lcom/baidu/mobstat/g;

    const-string v1, "AP_LIST"

    invoke-direct {v0, v1, v11}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/g;->a:Lcom/baidu/mobstat/g;

    .line 10
    new-instance v1, Lcom/baidu/mobstat/g;

    const-string v2, "APP_USER_LIST"

    invoke-direct {v1, v2, v12}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/g;->b:Lcom/baidu/mobstat/g;

    .line 12
    new-instance v2, Lcom/baidu/mobstat/g;

    const-string v3, "APP_SYS_LIST"

    invoke-direct {v2, v3, v13}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/g;

    .line 14
    new-instance v3, Lcom/baidu/mobstat/g;

    const-string v4, "APP_TRACE_CURRENT"

    invoke-direct {v3, v4, v14}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/g;->d:Lcom/baidu/mobstat/g;

    .line 16
    new-instance v4, Lcom/baidu/mobstat/g;

    const-string v5, "APP_TRACE_HIS"

    invoke-direct {v4, v5, v15}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g;

    .line 18
    new-instance v5, Lcom/baidu/mobstat/g;

    const-string v6, "APP_CHANGE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/g;->f:Lcom/baidu/mobstat/g;

    .line 20
    new-instance v6, Lcom/baidu/mobstat/g;

    const-string v7, "APP_APK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mobstat/g;->g:Lcom/baidu/mobstat/g;

    .line 22
    new-instance v7, Lcom/baidu/mobstat/g;

    const-string v8, "LAST_SEND"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mobstat/g;->h:Lcom/baidu/mobstat/g;

    .line 24
    new-instance v8, Lcom/baidu/mobstat/g;

    const-string v9, "LAST_UPDATE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    .line 6
    const/16 v9, 0x9

    new-array v9, v9, [Lcom/baidu/mobstat/g;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lcom/baidu/mobstat/g;->k:[Lcom/baidu/mobstat/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/g;
    .locals 1

    .line 6
    const-class v0, Lcom/baidu/mobstat/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/g;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/g;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/mobstat/g;->k:[Lcom/baidu/mobstat/g;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/g;

    return-object v0
.end method
