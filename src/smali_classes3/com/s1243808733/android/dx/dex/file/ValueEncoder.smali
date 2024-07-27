.class public final Lcom/s1243808733/android/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;
.source "ValueEncoder.java"


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_METHOD_HANDLE:I = 0x16

.field private static final VALUE_METHOD_TYPE:I = 0x15

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# instance fields
.field private final file:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field private final out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 5

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p2, :cond_1

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 127
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    return-void
.end method

.method public static addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 418
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 420
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 419
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 420
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method public static addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 435
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_1

    .line 436
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_2

    .line 438
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v2

    .line 440
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 441
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method public static constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;
    .registers 3

    .line 389
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 391
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 392
    const-string v0, "null"

    .line 401
    :goto_0
    return-object v0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 238
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstByte;

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 240
    :cond_0
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstShort;

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    goto :goto_0

    .line 242
    :cond_1
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstChar;

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x3

    goto :goto_0

    .line 244
    :cond_2
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_3

    .line 245
    const/4 v0, 0x4

    goto :goto_0

    .line 246
    :cond_3
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_4

    .line 247
    const/4 v0, 0x6

    goto :goto_0

    .line 248
    :cond_4
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_5

    .line 249
    const/16 v0, 0x10

    goto :goto_0

    .line 250
    :cond_5
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_6

    .line 251
    const/16 v0, 0x11

    goto :goto_0

    .line 252
    :cond_6
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_7

    .line 253
    const/16 v0, 0x15

    goto :goto_0

    .line 254
    :cond_7
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_8

    .line 255
    const/16 v0, 0x16

    goto :goto_0

    .line 256
    :cond_8
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_9

    .line 257
    const/16 v0, 0x17

    goto :goto_0

    .line 258
    :cond_9
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_a

    .line 259
    const/16 v0, 0x18

    goto :goto_0

    .line 260
    :cond_a
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_b

    .line 261
    const/16 v0, 0x19

    goto :goto_0

    .line 262
    :cond_b
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_c

    .line 263
    const/16 v0, 0x1a

    goto :goto_0

    .line 264
    :cond_c
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_d

    .line 265
    const/16 v0, 0x1b

    goto :goto_0

    .line 266
    :cond_d
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_e

    .line 267
    const/16 v0, 0x1c

    goto :goto_0

    .line 268
    :cond_e
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_f

    .line 269
    const/16 v0, 0x1d

    goto :goto_0

    .line 270
    :cond_f
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_10

    .line 271
    const/16 v0, 0x1e

    goto :goto_0

    .line 272
    :cond_10
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    if-eqz v0, :cond_11

    .line 273
    const/16 v0, 0x1f

    goto :goto_0

    .line 275
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotation;",
            "Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 331
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v1, v2

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v4

    .line 333
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 336
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v5

    .line 338
    if-eqz v1, :cond_1

    .line 339
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  type_idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, " // "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 345
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 348
    if-eqz v1, :cond_2

    .line 349
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 352
    :cond_2
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v5, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 355
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    .line 373
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 376
    if-eqz v1, :cond_3

    .line 377
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_3
    return-void

    .line 331
    :cond_4
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 355
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 356
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v6

    .line 357
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v7

    .line 358
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v8

    .line 360
    if-eqz v1, :cond_7

    .line 361
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "  elements["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 362
    add-int/lit8 v0, v3, 0x1

    .line 363
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "    name_idx: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " // "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 367
    :goto_2
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v3, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 369
    if-eqz v1, :cond_6

    .line 370
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "    value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v8}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 373
    :cond_6
    invoke-virtual {p0, v8}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move v3, v0

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstArray;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 293
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 294
    :goto_0
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v3

    .line 297
    if-eqz v0, :cond_1

    .line 298
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "  size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 303
    :goto_1
    if-lt v1, v3, :cond_4

    .line 312
    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_2
    return-void

    .line 293
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    .line 305
    if-eqz v0, :cond_5

    .line 306
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 309
    :cond_5
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 136
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 137
    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    .line 145
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    .line 221
    :goto_0
    return-void

    .line 149
    :pswitch_2
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    .line 150
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 155
    :pswitch_3
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getLongBits()J

    move-result-wide v2

    .line 156
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 160
    :pswitch_4
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v2

    .line 161
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getProtoIds()Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 170
    :pswitch_6
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 180
    :pswitch_8
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_0

    .line 185
    :pswitch_9
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 190
    :pswitch_a
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 195
    :pswitch_b
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_0

    .line 201
    :pswitch_c
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 202
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    goto/16 :goto_0

    .line 206
    :pswitch_d
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 207
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    goto/16 :goto_0

    .line 212
    :pswitch_e
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 216
    :pswitch_f
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
