.class public final enum Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_ETHERNET"

    invoke-direct {v0, v1, v3}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v4}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_5G"

    invoke-direct {v0, v1, v5}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_4G"

    invoke-direct {v0, v1, v6}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_3G"

    invoke-direct {v0, v1, v7}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_2G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_NO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->$VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 2

    const-class v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->$VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0
.end method
