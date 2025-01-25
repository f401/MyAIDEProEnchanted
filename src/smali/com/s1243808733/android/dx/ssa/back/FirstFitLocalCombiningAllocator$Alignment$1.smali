.class final enum Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1;
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
    .registers 4

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method nextClearBit(Ljava/util/BitSet;I)I
    .registers 4

    .line 56
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p2

    .line 57
    :goto_4
    invoke-static {p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$smisEven(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 58
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p2

    goto :goto_4

    :cond_11
    return p2
.end method
