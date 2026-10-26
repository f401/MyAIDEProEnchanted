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

.field final this$0:Lcom/s1243808733/android/dx/merge/IndexMap;


# direct methods
.method static bridge synthetic -$$Nest$mtransformAnnotation(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransformArray(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    return-void
.end method

.method private transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 5

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

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 2

    .line 378
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    .line 379
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTypeAndArg(II)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    shl-int/lit8 v1, p2, 0x5

    or-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 8

    const/4 v1, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :pswitch_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readBoolean()Z

    move-result v0

    .line 360
    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 293
    :goto_0
    return-void

    .line 355
    :pswitch_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readNull()V

    .line 356
    const/16 v0, 0x1e

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto :goto_0

    .line 351
    :pswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto :goto_0

    .line 347
    :pswitch_3
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 348
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto :goto_0

    .line 339
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 340
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readEnum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    int-to-long v2, v1

    .line 339
    const/16 v1, 0x1b

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 343
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 344
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v1

    int-to-long v2, v1

    .line 343
    const/16 v1, 0x1a

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 335
    :pswitch_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 336
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readField()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    int-to-long v2, v1

    .line 335
    const/16 v1, 0x19

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 331
    :pswitch_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 332
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    int-to-long v2, v1

    .line 331
    const/16 v1, 0x18

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 327
    :pswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 328
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v1

    int-to-long v2, v1

    .line 327
    const/16 v1, 0x17

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 321
    :pswitch_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 324
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethodHandle(I)I

    move-result v1

    int-to-long v2, v1

    .line 321
    const/16 v1, 0x16

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 317
    :pswitch_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 318
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v1

    int-to-long v2, v1

    .line 317
    const/16 v1, 0x15

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    .line 314
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 313
    const/16 v1, 0x11

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 309
    :cond_1
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

    goto/16 :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readInt()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v7, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readChar()C

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v6, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readShort()S

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v5, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readByte()B

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v4, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
