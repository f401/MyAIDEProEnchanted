.class public final enum Lorg/xutils/config/DbConfigs;
.super Ljava/lang/Enum;
.source "DbConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/config/DbConfigs;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/config/DbConfigs;

.field public static final enum COOKIE:Lorg/xutils/config/DbConfigs;

.field public static final enum HTTP:Lorg/xutils/config/DbConfigs;


# instance fields
.field private config:Lorg/xutils/DbManager$DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 12
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 13
    const-string v1, "xUtils_http_cache.db"

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v7}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lorg/xutils/config/DbConfigs$2;

    invoke-direct {v1}, Lorg/xutils/config/DbConfigs$2;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lorg/xutils/config/DbConfigs$1;

    invoke-direct {v1}, Lorg/xutils/config/DbConfigs$1;-><init>()V

    .line 21
    new-instance v2, Lorg/xutils/config/DbConfigs;

    const-string v3, "HTTP"

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-direct {v2, v3, v6, v0}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v2, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    .line 32
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 33
    const-string v1, "xUtils_http_cookie.db"

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v5}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lorg/xutils/config/DbConfigs$4;

    invoke-direct {v1}, Lorg/xutils/config/DbConfigs$4;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lorg/xutils/config/DbConfigs$3;

    invoke-direct {v1}, Lorg/xutils/config/DbConfigs$3;-><init>()V

    .line 41
    new-instance v3, Lorg/xutils/config/DbConfigs;

    const-string v4, "COOKIE"

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v3, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    .line 11
    new-array v0, v7, [Lorg/xutils/config/DbConfigs;

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    sput-object v0, Lorg/xutils/config/DbConfigs;->$VALUES:[Lorg/xutils/config/DbConfigs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager$DaoConfig;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/config/DbConfigs;
    .registers 2

    .line 11
    const-class v0, Lorg/xutils/config/DbConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/config/DbConfigs;

    return-object v0
.end method

.method public static values()[Lorg/xutils/config/DbConfigs;
    .registers 1

    .line 11
    sget-object v0, Lorg/xutils/config/DbConfigs;->$VALUES:[Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, [Lorg/xutils/config/DbConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/config/DbConfigs;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method
