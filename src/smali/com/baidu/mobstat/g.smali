.class public final enum Lcom/baidu/mobstat/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 16

    .line 8
    new-instance v0, Lcom/baidu/mobstat/g;

    const-string v1, "AP_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/g;->a:Lcom/baidu/mobstat/g;

    .line 10
    new-instance v1, Lcom/baidu/mobstat/g;

    const-string v3, "APP_USER_LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/g;->b:Lcom/baidu/mobstat/g;

    .line 12
    new-instance v3, Lcom/baidu/mobstat/g;

    const-string v5, "APP_SYS_LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/g;

    .line 14
    new-instance v5, Lcom/baidu/mobstat/g;

    const-string v7, "APP_TRACE_CURRENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/g;->d:Lcom/baidu/mobstat/g;

    .line 16
    new-instance v7, Lcom/baidu/mobstat/g;

    const-string v9, "APP_TRACE_HIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g;

    .line 18
    new-instance v9, Lcom/baidu/mobstat/g;

    const-string v11, "APP_CHANGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/mobstat/g;->f:Lcom/baidu/mobstat/g;

    .line 20
    new-instance v11, Lcom/baidu/mobstat/g;

    const-string v13, "APP_APK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/baidu/mobstat/g;->g:Lcom/baidu/mobstat/g;

    .line 22
    new-instance v13, Lcom/baidu/mobstat/g;

    const-string v15, "LAST_SEND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/baidu/mobstat/g;->h:Lcom/baidu/mobstat/g;

    .line 24
    new-instance v15, Lcom/baidu/mobstat/g;

    const-string v14, "LAST_UPDATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/baidu/mobstat/g;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    .line 6
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/baidu/mobstat/g;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/baidu/mobstat/g;->k:[Lcom/baidu/mobstat/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
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
    .registers 2

    .line 6
    const-class v0, Lcom/baidu/mobstat/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/g;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/g;
    .registers 1

    .line 6
    sget-object v0, Lcom/baidu/mobstat/g;->k:[Lcom/baidu/mobstat/g;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/g;

    return-object v0
.end method
