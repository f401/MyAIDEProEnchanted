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
.method static final constructor <clinit>()V
    .registers 2

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
    .registers 13

    const/4 v4, 0x0

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/PositionList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/PositionList;

    .line 111
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    sget-object v5, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v7

    .line 76
    new-array v8, v7, [Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-object v0, v5

    move v3, v4

    move v2, v4

    move v6, v4

    .line 80
    :goto_1
    if-lt v6, v7, :cond_0

    .line 105
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/dex/code/PositionList;-><init>(I)V

    .line 106
    :goto_2
    if-lt v4, v2, :cond_4

    .line 110
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->setImmutable()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v9

    .line 83
    instance-of v1, v9, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-eqz v1, :cond_2

    .line 84
    const/4 v1, 0x1

    move v3, v1

    .line 80
    :cond_1
    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sameLine(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 94
    const/4 v10, 0x3

    if-ne p1, v10, :cond_3

    if-eqz v3, :cond_1

    .line 99
    :cond_3
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-direct {v0, v3, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;-><init>(ILcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v0, v8, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move v3, v4

    .line 102
    goto :goto_3

    .line 107
    :cond_4
    aget-object v1, v8, v4

    invoke-virtual {v0, v4, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/PositionList;->set0(ILjava/lang/Object;)V

    return-void
.end method
