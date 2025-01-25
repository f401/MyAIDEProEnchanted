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
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 126
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 127
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    return-void

    .line 123
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V
    .registers 5

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

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 419
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 420
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_17

    :cond_32
    return-void
.end method

.method public static addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 5

    .line 435
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_e

    .line 436
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    goto :goto_2c

    .line 437
    :cond_e
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_29

    .line 438
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2c

    .line 441
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 444
    :cond_29
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;
    .registers 3

    .line 389
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b

    .line 392
    const-string p0, "null"

    return-object p0

    .line 395
    :cond_b
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

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 2

    .line 238
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstByte;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_6
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstShort;

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 242
    :cond_c
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstChar;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 244
    :cond_12
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 246
    :cond_18
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_1e

    const/4 p0, 0x6

    return p0

    .line 248
    :cond_1e
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_25

    const/16 p0, 0x10

    return p0

    .line 250
    :cond_25
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_2c

    const/16 p0, 0x11

    return p0

    .line 252
    :cond_2c
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_33

    const/16 p0, 0x15

    return p0

    .line 254
    :cond_33
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_3a

    const/16 p0, 0x16

    return p0

    .line 256
    :cond_3a
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_41

    const/16 p0, 0x17

    return p0

    .line 258
    :cond_41
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_48

    const/16 p0, 0x18

    return p0

    .line 260
    :cond_48
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_4f

    const/16 p0, 0x19

    return p0

    .line 262
    :cond_4f
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_56

    const/16 p0, 0x1a

    return p0

    .line 264
    :cond_56
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_5d

    const/16 p0, 0x1b

    return p0

    .line 266
    :cond_5d
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-eqz v0, :cond_64

    const/16 p0, 0x1c

    return p0

    .line 268
    :cond_64
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_6b

    const/16 p0, 0x1d

    return p0

    .line 270
    :cond_6b
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_72

    const/16 p0, 0x1e

    return p0

    .line 272
    :cond_72
    instance-of p0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    if-eqz p0, :cond_79

    const/16 p0, 0x1f

    return p0

    .line 275
    :cond_79
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 331
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 332
    :goto_e
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v2

    .line 335
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v4

    .line 338
    const-string v5, " // "

    if-eqz p2, :cond_47

    .line 339
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  type_idx: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-interface {v6, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 343
    :cond_47
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v2

    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 345
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object p1

    .line 346
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz p2, :cond_75

    .line 349
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "  size: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 352
    :cond_75
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 355
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 356
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    .line 357
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v6

    .line 358
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    if-eqz p2, :cond_d4

    .line 361
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  elements["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 363
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    name_idx: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-interface {v7, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 367
    :cond_d4
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v4, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    if-eqz p2, :cond_f2

    .line 370
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 373
    :cond_f2
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_7f

    :cond_f6
    if-eqz p2, :cond_fd

    .line 377
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_fd
    return-void
.end method

.method public writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 293
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 294
    :goto_e
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->size()I

    move-result v1

    if-eqz p2, :cond_2f

    .line 298
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 301
    :cond_2f
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    :goto_34
    if-ge v0, v1, :cond_65

    .line 304
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    if-eqz p2, :cond_5f

    .line 306
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-interface {v3, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 309
    :cond_5f
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_65
    if-eqz p2, :cond_6c

    .line 313
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_6c
    return-void
.end method

.method public writeConstant(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6

    .line 136
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_110

    const/4 v1, 0x6

    if-eq v0, v1, :cond_110

    const/4 v1, 0x2

    if-eq v0, v1, :cond_110

    const/4 v1, 0x3

    if-eq v0, v1, :cond_104

    const/4 v1, 0x4

    if-eq v0, v1, :cond_110

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_e9

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_11c

    .line 221
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :pswitch_26  #0x1f
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result p1

    .line 217
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_11b

    .line 212
    :pswitch_36  #0x1e
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto/16 :goto_11b

    .line 206
    :pswitch_3d  #0x1d
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 207
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    goto/16 :goto_11b

    .line 201
    :pswitch_4d  #0x1c
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 202
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    goto/16 :goto_11b

    .line 195
    :pswitch_59  #0x1b
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result p1

    .line 197
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_11b

    .line 190
    :pswitch_71  #0x1a
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    .line 191
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_11b

    .line 185
    :pswitch_85  #0x19
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result p1

    .line 186
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto/16 :goto_11b

    .line 180
    :pswitch_99  #0x18
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result p1

    .line 181
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 175
    :pswitch_ac  #0x17
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result p1

    .line 176
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 170
    :pswitch_bf  #0x16
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)I

    move-result p1

    .line 171
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 165
    :pswitch_d2  #0x15
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getProtoIds()Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    move-result-object v1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result p1

    .line 166
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 160
    :cond_e9
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v1

    .line 161
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 155
    :cond_f5
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getLongBits()J

    move-result-wide v1

    .line 156
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 149
    :cond_104
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 150
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    goto :goto_11b

    .line 144
    :cond_110
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 145
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->out:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V

    :goto_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x15
        :pswitch_d2  #00000015
        :pswitch_bf  #00000016
        :pswitch_ac  #00000017
        :pswitch_99  #00000018
        :pswitch_85  #00000019
        :pswitch_71  #0000001a
        :pswitch_59  #0000001b
        :pswitch_4d  #0000001c
        :pswitch_3d  #0000001d
        :pswitch_36  #0000001e
        :pswitch_26  #0000001f
    .end packed-switch
.end method
