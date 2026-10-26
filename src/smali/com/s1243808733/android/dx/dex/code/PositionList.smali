.class public final Lcom/s1243808733/android/dx/dex/code/PositionList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "PositionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

.field public static final IMPORTANT:I = 0x3

.field public static final LINES:I = 0x2

.field public static final NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/PositionList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;I)Lcom/s1243808733/android/dx/dex/code/PositionList;
    .locals 13

    const/4 v12, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v12, :cond_2

    .line 73
    :cond_0
    sget-object v6, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v8

    .line 76
    new-array v9, v8, [Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-object v0, v6

    move v3, v5

    move v7, v5

    move v2, v5

    :goto_0
    if-ge v7, v8, :cond_5

    .line 81
    invoke-virtual {p0, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v10

    .line 83
    instance-of v1, v10, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-eqz v1, :cond_3

    move v3, v4

    .line 99
    :cond_1
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sameLine(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z

    move-result v11

    if-nez v11, :cond_1

    if-ne p1, v12, :cond_4

    if-eqz v3, :cond_1

    .line 99
    :cond_4
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-direct {v0, v3, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;-><init>(ILcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v0, v9, v2

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move v3, v5

    goto :goto_1

    .line 105
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/dex/code/PositionList;-><init>(I)V

    :goto_2
    if-ge v5, v2, :cond_6

    .line 107
    aget-object v1, v9, v5

    invoke-virtual {v0, v5, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->setImmutable()V

    :goto_3
    return-object v0

    .line 61
    :cond_7
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/PositionList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

    goto :goto_3
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;
    .locals 1

    .line 132
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set0(ILjava/lang/Object;)V

    return-void
.end method
