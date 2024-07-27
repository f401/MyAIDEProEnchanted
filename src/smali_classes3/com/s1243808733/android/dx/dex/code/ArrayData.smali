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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/SourcePosition;",
            "Lcom/s1243808733/android/dx/dex/code/CodeAddress;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p3, :cond_1

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    if-gtz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of init values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 82
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, v0, :cond_3

    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, v0, :cond_4

    .line 84
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    .line 97
    :goto_0
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 98
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    return-void

    .line 85
    :cond_4
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, v0, :cond_5

    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, v0, :cond_6

    .line 87
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_0

    .line 88
    :cond_6
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, v0, :cond_7

    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, v0, :cond_8

    .line 90
    :cond_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_0

    .line 91
    :cond_8
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eq p4, v0, :cond_9

    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne p4, v0, :cond_a

    .line 93
    :cond_9
    const/16 v0, 0x8

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_0

    .line 95
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected constant type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public codeSize()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 105
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    .line 107
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 189
    const-string v1, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    const-string v0, "\n  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/ArrayData;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/ArrayData;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/code/ArrayData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 115
    const/16 v0, 0x300

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 116
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->initLength:I

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->elemWidth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    :cond_1
    return-void

    :pswitch_1
    move v1, v2

    .line 123
    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 130
    :goto_1
    if-ge v1, v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 132
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_3
    move v1, v2

    .line 137
    :goto_2
    if-ge v1, v3, :cond_0

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 139
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_4
    move v1, v2

    .line 144
    :goto_3
    if-ge v1, v3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 146
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeLong(J)V

    .line 144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
