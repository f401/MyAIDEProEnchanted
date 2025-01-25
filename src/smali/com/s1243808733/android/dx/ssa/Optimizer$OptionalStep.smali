.class public final enum Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
.super Ljava/lang/Enum;
.source "Optimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/Optimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionalStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final enum CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final enum ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final enum LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final enum MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

.field public static final enum SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    .registers 3

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "MOVE_PARAM_COMBINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "SCCP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "LITERAL_UPGRADE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "CONST_COLLECTOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    const-string v1, "ESCAPE_ANALYSIS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    .line 35
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$values()[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    .registers 2

    .line 35
    const-class v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    .registers 1

    .line 35
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->$VALUES:[Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    return-object v0
.end method
