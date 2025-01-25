.class public final enum Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/BusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blankj/utilcode/util/BusUtils$ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum POSTING:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v3}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "IO"

    invoke-direct {v0, v1, v4}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "CPU"

    invoke-direct {v0, v1, v5}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "CACHED"

    invoke-direct {v0, v1, v6}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v7}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "POSTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->POSTING:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    sget-object v2, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->MAIN:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->IO:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CPU:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->CACHED:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->SINGLE:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->$VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .registers 2

    const-class v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object v0
.end method

.method public static values()[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->$VALUES:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object v0
.end method
