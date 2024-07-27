.class Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
.super Ljava/lang/Object;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Multiset"
.end annotation


# instance fields
.field private final count:[I

.field private final reg:[I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    .line 1203
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1213
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    if-lt v0, v1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    aput p1, v0, v1

    .line 1221
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 1222
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    :goto_1
    return-void

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1215
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    .line 1213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAndRemoveHighestCount()I
    .registers 7

    const/4 v3, -0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v1

    .line 1238
    :goto_0
    iget v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    if-lt v5, v3, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    aput v1, v0, v4

    .line 1247
    return v2

    .line 1239
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    aget v3, v3, v5

    if-ge v0, v3, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    aget v2, v0, v5

    .line 1242
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    aget v0, v0, v5

    move v3, v5

    .line 1238
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public getSize()I
    .registers 2

    .line 1256
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    return v0
.end method
