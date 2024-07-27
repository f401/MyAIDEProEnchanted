.class public enum Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
.super Ljava/lang/Enum;
.source "Optimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/Optimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "OptionalStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "MOVE_PARAM_COMBINER"

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "SCCP"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "LITERAL_UPGRADE"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "CONST_COLLECTOR"

    invoke-direct {v0, v1, v5}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "ESCAPE_ANALYSIS"

    invoke-direct {v0, v1, v6}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v1, v0, v6

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    .registers 5

    .line 38
    sget-object v1, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    .registers 1

    .line 38
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    return-object v0
.end method
