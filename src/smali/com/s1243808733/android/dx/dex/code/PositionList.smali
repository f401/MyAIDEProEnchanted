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
    .registers 2

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/PositionList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 120
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;I)Lcom/s1243808733/android/dx/dex/code/PositionList;
    .registers 15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_66

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_12

    if-ne p1, v2, :cond_a

    goto :goto_12

    .line 69
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_12
    :goto_12
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    .line 76
    new-array v4, v3, [Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1f
    if-ge v6, v3, :cond_53

    .line 81
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v10

    .line 83
    instance-of v11, v10, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-eqz v11, :cond_2b

    const/4 v9, 0x1

    goto :goto_50

    .line 88
    :cond_2b
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v11

    .line 90
    invoke-virtual {v11, v1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    invoke-virtual {v11, v8}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sameLine(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z

    move-result v12

    if-eqz v12, :cond_3c

    goto :goto_50

    :cond_3c
    if-ne p1, v2, :cond_41

    if-nez v9, :cond_41

    goto :goto_50

    .line 99
    :cond_41
    new-instance v8, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v9

    invoke-direct {v8, v9, v11}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;-><init>(ILcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 105
    :cond_53
    new-instance p0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/dex/code/PositionList;-><init>(I)V

    :goto_58
    if-ge v5, v7, :cond_62

    .line 107
    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 110
    :cond_62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->setImmutable()V

    return-object p0

    .line 61
    :cond_66
    sget-object p0, Lcom/s1243808733/android/dx/dex/code/PositionList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set0(ILjava/lang/Object;)V

    return-void
.end method
