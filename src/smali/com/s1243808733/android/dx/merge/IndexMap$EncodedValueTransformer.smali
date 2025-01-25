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
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransformArray(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    return-void
.end method

.method private transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 7

    .line 368
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 370
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_30

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

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_30
    return-void
.end method

.method private transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 4

    .line 378
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_12

    .line 381
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    return-void
.end method

.method private writeTypeAndArg(II)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 7

    .line 291
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_138

    const/4 v2, 0x6

    if-eq v0, v2, :cond_12e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_123

    const/4 v2, 0x3

    if-eq v0, v2, :cond_118

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10d

    const/16 v2, 0x10

    if-eq v0, v2, :cond_fb

    const/16 v2, 0x11

    if-eq v0, v2, :cond_ed

    packed-switch v0, :pswitch_data_144

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :pswitch_3a  #0x1f
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readBoolean()Z

    move-result p1

    .line 360
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_142

    .line 355
    :pswitch_45  #0x1e
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readNull()V

    .line 356
    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_142

    .line 351
    :pswitch_4f  #0x1d
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto/16 :goto_142

    .line 347
    :pswitch_59  #0x1c
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 348
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto/16 :goto_142

    .line 339
    :pswitch_63  #0x1b
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 340
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readEnum()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result p1

    int-to-long v1, p1

    .line 339
    const/16 p1, 0x1b

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_142

    .line 343
    :pswitch_77  #0x1a
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 344
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethod()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result p1

    int-to-long v1, p1

    .line 343
    const/16 p1, 0x1a

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_142

    .line 335
    :pswitch_8b  #0x19
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 336
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readField()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result p1

    int-to-long v1, p1

    .line 335
    const/16 p1, 0x19

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_142

    .line 331
    :pswitch_9f  #0x18
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 332
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result p1

    int-to-long v1, p1

    .line 331
    const/16 p1, 0x18

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_142

    .line 327
    :pswitch_b3  #0x17
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 328
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result p1

    int-to-long v1, p1

    .line 327
    const/16 p1, 0x17

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_142

    .line 321
    :pswitch_c7  #0x16
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 324
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodHandle()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethodHandle(I)I

    move-result p1

    int-to-long v1, p1

    .line 321
    const/16 p1, 0x16

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 317
    :pswitch_da  #0x15
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 318
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result p1

    int-to-long v1, p1

    .line 317
    const/16 p1, 0x15

    invoke-static {v0, p1, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 313
    :cond_ed
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    .line 314
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 313
    invoke-static {v0, v2, v3, v4}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 309
    :cond_fb
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    .line 310
    iget-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    invoke-static {p1, v2, v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 299
    :cond_10d
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readInt()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 305
    :cond_118
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readChar()C

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 296
    :cond_123
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readShort()S

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 302
    :cond_12e
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_142

    .line 293
    :cond_138
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/s1243808733/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readByte()B

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    :goto_142
    return-void

    nop

    :pswitch_data_144
    .packed-switch 0x15
        :pswitch_da  #00000015
        :pswitch_c7  #00000016
        :pswitch_b3  #00000017
        :pswitch_9f  #00000018
        :pswitch_8b  #00000019
        :pswitch_77  #0000001a
        :pswitch_63  #0000001b
        :pswitch_59  #0000001c
        :pswitch_4f  #0000001d
        :pswitch_45  #0000001e
        :pswitch_3a  #0000001f
    .end packed-switch
.end method
