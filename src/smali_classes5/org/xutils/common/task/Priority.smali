.class public final enum Lorg/xutils/common/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/common/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/common/task/Priority;

.field public static final enum BG_LOW:Lorg/xutils/common/task/Priority;

.field public static final enum BG_NORMAL:Lorg/xutils/common/task/Priority;

.field public static final enum BG_TOP:Lorg/xutils/common/task/Priority;

.field public static final enum DEFAULT:Lorg/xutils/common/task/Priority;

.field public static final enum UI_LOW:Lorg/xutils/common/task/Priority;

.field public static final enum UI_NORMAL:Lorg/xutils/common/task/Priority;

.field public static final enum UI_TOP:Lorg/xutils/common/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 8
    new-instance v0, Lorg/xutils/common/task/Priority;

    const-string v1, "UI_TOP"

    invoke-direct {v0, v1, v9}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->UI_TOP:Lorg/xutils/common/task/Priority;

    new-instance v1, Lorg/xutils/common/task/Priority;

    const-string v2, "UI_NORMAL"

    invoke-direct {v1, v2, v10}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/xutils/common/task/Priority;->UI_NORMAL:Lorg/xutils/common/task/Priority;

    new-instance v2, Lorg/xutils/common/task/Priority;

    const-string v3, "UI_LOW"

    invoke-direct {v2, v3, v11}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/xutils/common/task/Priority;->UI_LOW:Lorg/xutils/common/task/Priority;

    new-instance v3, Lorg/xutils/common/task/Priority;

    const-string v4, "DEFAULT"

    invoke-direct {v3, v4, v12}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    new-instance v4, Lorg/xutils/common/task/Priority;

    const-string v5, "BG_TOP"

    invoke-direct {v4, v5, v13}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/xutils/common/task/Priority;->BG_TOP:Lorg/xutils/common/task/Priority;

    new-instance v5, Lorg/xutils/common/task/Priority;

    const-string v6, "BG_NORMAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/xutils/common/task/Priority;->BG_NORMAL:Lorg/xutils/common/task/Priority;

    new-instance v6, Lorg/xutils/common/task/Priority;

    const-string v7, "BG_LOW"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    .line 7
    const/4 v7, 0x7

    new-array v7, v7, [Lorg/xutils/common/task/Priority;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v2, v7, v11

    aput-object v3, v7, v12

    aput-object v4, v7, v13

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    sput-object v7, Lorg/xutils/common/task/Priority;->$VALUES:[Lorg/xutils/common/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/common/task/Priority;
    .registers 2

    .line 7
    const-class v0, Lorg/xutils/common/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public static values()[Lorg/xutils/common/task/Priority;
    .registers 1

    .line 7
    sget-object v0, Lorg/xutils/common/task/Priority;->$VALUES:[Lorg/xutils/common/task/Priority;

    invoke-virtual {v0}, [Lorg/xutils/common/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/common/task/Priority;

    return-object v0
.end method
