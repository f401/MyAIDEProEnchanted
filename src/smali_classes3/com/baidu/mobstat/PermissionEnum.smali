.class public final enum Lcom/baidu/mobstat/PermissionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/PermissionEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_LIST:Lcom/baidu/mobstat/PermissionEnum;

.field public static final enum LOCATION:Lcom/baidu/mobstat/PermissionEnum;

.field public static final enum READ_PHONE_STATE:Lcom/baidu/mobstat/PermissionEnum;

.field public static final enum STORAGE:Lcom/baidu/mobstat/PermissionEnum;

.field private static final a:[Lcom/baidu/mobstat/PermissionEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/baidu/mobstat/PermissionEnum;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/PermissionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/PermissionEnum;->LOCATION:Lcom/baidu/mobstat/PermissionEnum;

    .line 6
    new-instance v0, Lcom/baidu/mobstat/PermissionEnum;

    const-string v1, "STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/PermissionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/PermissionEnum;->STORAGE:Lcom/baidu/mobstat/PermissionEnum;

    .line 7
    new-instance v0, Lcom/baidu/mobstat/PermissionEnum;

    const-string v1, "APP_LIST"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/PermissionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/PermissionEnum;->APP_LIST:Lcom/baidu/mobstat/PermissionEnum;

    .line 8
    new-instance v0, Lcom/baidu/mobstat/PermissionEnum;

    const-string v1, "READ_PHONE_STATE"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/PermissionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/PermissionEnum;->READ_PHONE_STATE:Lcom/baidu/mobstat/PermissionEnum;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/mobstat/PermissionEnum;

    sget-object v1, Lcom/baidu/mobstat/PermissionEnum;->LOCATION:Lcom/baidu/mobstat/PermissionEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/PermissionEnum;->STORAGE:Lcom/baidu/mobstat/PermissionEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/PermissionEnum;->APP_LIST:Lcom/baidu/mobstat/PermissionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/PermissionEnum;->READ_PHONE_STATE:Lcom/baidu/mobstat/PermissionEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/mobstat/PermissionEnum;->a:[Lcom/baidu/mobstat/PermissionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/PermissionEnum;
    .registers 2

    .line 3
    const-class v0, Lcom/baidu/mobstat/PermissionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/PermissionEnum;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/PermissionEnum;
    .registers 1

    .line 3
    sget-object v0, Lcom/baidu/mobstat/PermissionEnum;->a:[Lcom/baidu/mobstat/PermissionEnum;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/PermissionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/PermissionEnum;

    return-object v0
.end method
