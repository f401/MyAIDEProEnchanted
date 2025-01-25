.class public final Lcom/s1243808733/android/dx/dex/code/ArrayData;
.super Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;
.source "ArrayData.java"


# instance fields
.field private final arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private final elemWidth:I

.field private final initLength:I

.field private final user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/SourcePosition;",
            "Lcom/s1243808733/android/dx/dex/code/CodeAddress;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    if-eqz p2, :cond_68

    if-eqz p3, :cond_60

    .line 74
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_58

    .line 80
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 82
    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, p1, :cond_4a

    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, p1, :cond_1a

    goto :goto_4a

    .line 85
    :cond_1a
    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, p1, :cond_46

    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, p1, :cond_23

    goto :goto_46

    .line 88
    :cond_23
    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, p1, :cond_42

    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, p1, :cond_2c

    goto :goto_42

    .line 91
    :cond_2c
    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, p1, :cond_3d

    sget-object p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, p1, :cond_35

    goto :goto_3d

    .line 95
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected constant type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_3d
    :goto_3d
    const/16 p1, 0x8

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4d

    .line 90
    :cond_42
    :goto_42
    const/4 p1, 0x4

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4d

    .line 87
    :cond_46
    :goto_46
    const/4 p1, 0x2

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4d

    .line 84
    :cond_4a
    :goto_4a
    const/4 p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    .line 97
    :goto_4d
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 98
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    return-void

    .line 77
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal number of init values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_60
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_68
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2f

    .line 173
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 179
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public codeSize()I
    .registers 3

    .line 105
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    .line 107
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 5

    .line 185
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 189
    const-string v2, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_20
    if-ge p1, v1, :cond_41

    .line 193
    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 199
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6

    .line 163
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/ArrayData;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/ArrayData;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/ArrayData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    const/16 v1, 0x300

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 116
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 117
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 121
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6c

    if-eq v1, v2, :cond_54

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3d

    const/16 v5, 0x8

    if-eq v1, v5, :cond_26

    :cond_25
    goto :goto_84

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_25

    .line 145
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 146
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_84

    .line 138
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 139
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_54
    const/4 v1, 0x0

    :goto_55
    if-ge v1, v0, :cond_84

    .line 131
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 132
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v5

    int-to-short v5, v5

    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    if-ge v1, v0, :cond_84

    .line 124
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v5

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 155
    :cond_84
    :goto_84
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    if-ne v1, v4, :cond_8e

    rem-int/2addr v0, v2

    if-eqz v0, :cond_8e

    .line 156
    invoke-interface {p1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    :cond_8e
    return-void
.end method
