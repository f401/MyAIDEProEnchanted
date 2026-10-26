.class final enum Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2;
.super Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method nextClearBit(Ljava/util/BitSet;I)I
    .locals 2

    .line 66
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 67
    :goto_0
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$smisEven(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method
