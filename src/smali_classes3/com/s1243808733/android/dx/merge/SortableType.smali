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
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/merge/SortableType$100000000;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/merge/SortableType$100000000;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method static synthetic access$L1000004(Lcom/s1243808733/android/dx/merge/SortableType;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    return v0
.end method

.method static synthetic access$S1000004(Lcom/s1243808733/android/dx/merge/SortableType;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    return-void
.end method


# virtual methods
.method public getClassDef()Lcom/s1243808733/android/dex/ClassDef;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    return-object v0
.end method

.method public getDex()Lcom/s1243808733/android/dex/Dex;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->dex:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method public getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method public getTypeIndex()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    return v0
.end method

.method public isDepthAssigned()Z
    .registers 3

    .line 115
    iget v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tryAssignDepth([Lcom/s1243808733/android/dx/merge/SortableType;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v5

    move v3, v1

    move v4, v0

    .line 106
    :goto_1
    array-length v0, v5

    if-lt v3, v0, :cond_4

    .line 110
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    move v1, v2

    .line 111
    :cond_0
    return v1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 86
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Class with type index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " extends itself"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    aget-object v0, p1, v0

    .line 90
    if-nez v0, :cond_3

    move v0, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget v3, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-eq v3, v7, :cond_0

    .line 95
    iget v0, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    goto :goto_0

    .line 99
    :cond_4
    aget-short v0, v5, v3

    .line 100
    aget-object v0, p1, v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 106
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 103
    :cond_5
    iget v6, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-eq v6, v7, :cond_0

    .line 106
    iget v0, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2
.end method
