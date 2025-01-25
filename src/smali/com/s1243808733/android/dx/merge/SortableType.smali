.class final Lcom/s1243808733/android/dx/merge/SortableType;
.super Ljava/lang/Object;
.source "SortableType.java"


# static fields
.field public static final NULLS_LAST_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
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
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/merge/SortableType$1;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/merge/SortableType$1;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V
    .registers 5

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

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public tryAssignDepth([Lcom/s1243808733/android/dx/merge/SortableType;)Z
    .registers 10

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d

    const/4 v0, 0x0

    goto :goto_2c

    .line 84
    :cond_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v4

    if-eq v0, v4, :cond_51

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    aget-object v0, p1, v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_2c

    .line 92
    :cond_27
    iget v0, v0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-ne v0, v3, :cond_2c

    return v1

    .line 99
    :cond_2c
    :goto_2c
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v5, :cond_4d

    aget-short v7, v4, v6

    .line 100
    aget-object v7, p1, v7

    if-nez v7, :cond_41

    .line 102
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4a

    .line 103
    :cond_41
    iget v7, v7, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    if-ne v7, v3, :cond_46

    return v1

    .line 106
    :cond_46
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 110
    :cond_4d
    add-int/2addr v0, v2

    iput v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->depth:I

    return v2

    .line 86
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class with type index "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/SortableType;->classDef:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " extends itself"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :goto_70
    throw v0

    :goto_71
    goto :goto_70
.end method
