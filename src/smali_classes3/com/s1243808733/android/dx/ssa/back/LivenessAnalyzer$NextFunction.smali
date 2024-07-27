.class enum Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
.super Ljava/lang/Enum;
.source "LivenessAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "NextFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final LIVE_IN_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final LIVE_OUT_AT_BLOCK:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final LIVE_OUT_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const-string v1, "LIVE_IN_AT_STATEMENT"

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const-string v1, "LIVE_OUT_AT_STATEMENT"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const-string v1, "LIVE_OUT_AT_BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->$VALUES:[Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    .registers 5

    .line 76
    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->$VALUES:[Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    .registers 1

    .line 76
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->$VALUES:[Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    return-object v0
.end method
