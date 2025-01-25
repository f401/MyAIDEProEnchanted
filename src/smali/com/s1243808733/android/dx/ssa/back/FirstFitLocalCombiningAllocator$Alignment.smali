.class abstract enum Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
.super Ljava/lang/Enum;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

.field public static final enum EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

.field public static final enum ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

.field public static final enum UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .registers 3

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1;

    const-string v1, "EVEN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 63
    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2;

    const-string v1, "ODD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 52
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->$values()[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->$VALUES:[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .registers 2

    .line 52
    const-class v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .registers 1

    .line 52
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->$VALUES:[Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    return-object v0
.end method


# virtual methods
.method abstract nextClearBit(Ljava/util/BitSet;I)I
.end method
