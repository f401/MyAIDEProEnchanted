.class final Lcom/s1243808733/android/dx/merge/SortableType;
.super Ljava/lang/Object;
.source "SortableType.java"


# static fields
.field public static final NULLS_LAST_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/s1243808733/android/dx/merge/SortableType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classDef:Lcom/s1243808733/android/dex/ClassDef;

.field private depth:I

.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetdepth(Lcom/s1243808733/android/dx/merge/SortableType;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/merge/SortableType$1;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/merge/SortableType$1;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    .line 54
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/SortableType;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 55
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/SortableType;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 56
    iput-object p3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    return-void
.end method


# virtual methods
.method public getClassDef()Lcom/s1243808733/android/dex/ClassDef;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    return-object v0
.end method

.method public getDex()Lcom/s1243808733/android/dex/Dex;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->dex:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method public getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    return v0
.end method

.method public isDepthAssigned()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryAssignDepth([Lcom/s1243808733/android/dx/merge/SortableType;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 99
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_5

    aget-short v6, v4, v3

    .line 100
    aget-object v6, p1, v6

    if-nez v6, :cond_4

    .line 102
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    if-eq v0, v3, :cond_6

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    aget-object v0, p1, v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 92
    :cond_2
    iget v0, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-ne v0, v7, :cond_0

    .line 110
    :cond_3
    :goto_3
    return v1

    .line 103
    :cond_4
    iget v6, v6, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-eq v6, v7, :cond_3

    .line 106
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 110
    :cond_5
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    move v1, v2

    goto :goto_3

    .line 86
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class with type index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extends itself"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
