.class final enum Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/time/DateUtils$ModifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "TRUNCATE"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 133
    new-instance v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v2, "ROUND"

    invoke-direct {v1, v2, v5}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 138
    new-instance v2, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v3, "CEILING"

    invoke-direct {v2, v3, v6}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 124
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    .registers 2

    .line 124
    const-class v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    .registers 1

    .line 124
    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method
