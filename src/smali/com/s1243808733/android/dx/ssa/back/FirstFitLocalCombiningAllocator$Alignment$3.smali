.class final enum Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3;
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

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method nextClearBit(Ljava/util/BitSet;I)I
    .registers 3

    .line 76
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    return p1
.end method
