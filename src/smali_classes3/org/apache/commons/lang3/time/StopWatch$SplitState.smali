.class final enum Lorg/apache/commons/lang3/time/StopWatch$SplitState;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SplitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/time/StopWatch$SplitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field public static final enum SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field public static final enum UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    const-string v1, "SPLIT"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 69
    new-instance v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    const-string v2, "UNSPLIT"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/lang3/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 67
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->$VALUES:[Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/time/StopWatch$SplitState;
    .registers 2

    .line 67
    const-class v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/time/StopWatch$SplitState;
    .registers 1

    .line 67
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->$VALUES:[Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/time/StopWatch$SplitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-object v0
.end method
