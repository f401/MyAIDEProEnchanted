.class final Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;
.super Ljava/lang/Object;
.source "IndexMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/IndexMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncodedValueTransformer"
.end annotation


# instance fields
.field private final out:Lcom/s1243808733/android/dex/util/ByteOutput;

.field private final this$0:Lcom/s1243808733/android/dx/merge/IndexMap;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V
    .registers 3

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 286
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method static synthetic access$1000009(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method private transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/EncodedValueReader;",
            ")V"
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v1

    .line 369
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 371
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/EncodedValueReader;",
            ")V"
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    .line 379
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 380
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeTypeAndArg(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    shl-int/lit8 v1, p2, 0x5

    or-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/EncodedValueReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 363
    :pswitch_0
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :pswitch_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readByte()B

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    .line 363
    :goto_0
    return-void

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readShort()S

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 302
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 305
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readChar()C

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 309
    :pswitch_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 310
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v3, 0x10

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 313
    :pswitch_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x11

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 317
    :pswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 321
    :pswitch_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethodHandle(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 327
    :pswitch_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 331
    :pswitch_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 335
    :pswitch_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readField()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 339
    :pswitch_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readEnum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 343
    :pswitch_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethod()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 347
    :pswitch_f
    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 348
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto/16 :goto_0

    .line 351
    :pswitch_10
    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto/16 :goto_0

    .line 355
    :pswitch_11
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readNull()V

    .line 356
    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_0

    .line 359
    :pswitch_12
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readBoolean()Z

    move-result v1

    .line 360
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
