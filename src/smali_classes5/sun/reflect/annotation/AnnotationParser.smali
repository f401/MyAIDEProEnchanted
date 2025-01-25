.class public Lsun/reflect/annotation/AnnotationParser;
.super Ljava/lang/Object;
.source "AnnotationParser.java"


# static fields
.field static final $assertionsDisabled:Z

.field private static final EMPTY_ANNOTATIONS_ARRAY:[Ljava/lang/annotation/Annotation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Lsun/reflect/annotation/AnnotationParser;->EMPTY_ANNOTATIONS_ARRAY:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotationForMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lsun/reflect/annotation/AnnotationInvocationHandler;

    invoke-direct {v1, p0, p1}, Lsun/reflect/annotation/AnnotationInvocationHandler;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private static exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;
    .registers 3

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array with component tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static parseAnnotation(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;
    .registers 15

    const v10, 0xffff

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v10

    .line 194
    const-string v2, "[unknown]"

    .line 198
    :try_start_c
    invoke-virtual {p1, v1}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v2, p2}, Lsun/reflect/annotation/AnnotationParser;->parseSig(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_46
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_13} :catch_7b
    .catch Ljava/lang/TypeNotPresentException; {:try_start_c .. :try_end_13} :catch_73

    move-result-object v1

    move-object v4, v1

    .line 217
    :goto_15
    :try_start_15
    invoke-static {v4}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_18} :catch_6e

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Lsun/reflect/annotation/AnnotationType;->memberTypes()Ljava/util/Map;

    move-result-object v6

    .line 227
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lsun/reflect/annotation/AnnotationType;->memberDefaults()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 231
    :goto_2a
    and-int v0, v8, v10

    if-ge v3, v0, :cond_69

    .line 232
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 233
    and-int/2addr v0, v10

    invoke-virtual {p1, v0}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 236
    if-nez v0, :cond_4d

    .line 238
    invoke-static {p0}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(Ljava/nio/ByteBuffer;)V

    .line 231
    :goto_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2a

    .line 200
    :catch_46
    move-exception v4

    .line 202
    :try_start_47
    invoke-virtual {p1, v1}, Lsun/reflect/ConstantPool;->getClassAt(I)Ljava/lang/Class;
    :try_end_4a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_47 .. :try_end_4a} :catch_7b
    .catch Ljava/lang/TypeNotPresentException; {:try_start_47 .. :try_end_4a} :catch_73

    move-result-object v1

    move-object v4, v1

    goto :goto_15

    .line 240
    :cond_4d
    invoke-static {v0, p0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseMemberValue(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    instance-of v0, v1, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    if-eqz v0, :cond_65

    move-object v0, v1

    .line 242
    check-cast v0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    .line 243
    invoke-virtual {v5}, Lsun/reflect/annotation/AnnotationType;->members()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->setMember(Ljava/lang/reflect/Method;)Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    .line 244
    :cond_65
    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 247
    :cond_69
    invoke-static {v4, v7}, Lsun/reflect/annotation/AnnotationParser;->annotationForMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :goto_6d
    return-object v0

    .line 221
    :catch_6e
    move-exception v1

    .line 222
    invoke-static {p0, v3}, Lsun/reflect/annotation/AnnotationParser;->skipAnnotation(Ljava/nio/ByteBuffer;Z)V

    goto :goto_6d

    .line 212
    :catch_73
    move-exception v1

    .line 213
    if-nez p3, :cond_7a

    .line 215
    invoke-static {p0, v3}, Lsun/reflect/annotation/AnnotationParser;->skipAnnotation(Ljava/nio/ByteBuffer;Z)V

    goto :goto_6d

    .line 214
    :cond_7a
    throw v1

    .line 204
    :catch_7b
    move-exception v1

    .line 205
    if-nez p3, :cond_82

    .line 209
    invoke-static {p0, v3}, Lsun/reflect/annotation/AnnotationParser;->skipAnnotation(Ljava/nio/ByteBuffer;Z)V

    goto :goto_6d

    .line 208
    :cond_82
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, v2, v1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseAnnotationArray(ILjava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move v1, v3

    move v4, v3

    move v5, v3

    .line 709
    :goto_b
    if-ge v5, p0, :cond_24

    .line 710
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 711
    const/16 v4, 0x40

    if-ne v3, v4, :cond_1f

    .line 712
    invoke-static {p2, p3, p4, v2}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotation(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v4

    aput-object v4, v0, v5

    .line 709
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_b

    .line 714
    :cond_1f
    invoke-static {v3, p2}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    move v1, v2

    .line 715
    goto :goto_1b

    .line 718
    :cond_24
    if-eqz v1, :cond_2a

    invoke-static {v4}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method public static parseAnnotations([BLsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lsun/reflect/ConstantPool;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 66
    if-nez p0, :cond_7

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 70
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotations2([BLsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/util/Map;
    :try_end_a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_a} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    .line 73
    :catch_c
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/annotation/AnnotationFormatError;

    invoke-direct {v1, v0}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_13
    move-exception v0

    .line 72
    new-instance v0, Ljava/lang/annotation/AnnotationFormatError;

    const-string v1, "Unexpected end of annotations."

    invoke-direct {v0, v1}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseAnnotations2([BLsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lsun/reflect/ConstantPool;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 83
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    move v0, v1

    .line 86
    :goto_f
    const v5, 0xffff

    and-int/2addr v5, v4

    if-ge v0, v5, :cond_53

    .line 87
    invoke-static {v3, p1, p2, v1}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotation(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 88
    if-eqz v5, :cond_31

    .line 89
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    .line 90
    invoke-static {v6}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lsun/reflect/annotation/AnnotationType;->retention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v7

    sget-object v8, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v7, v8, :cond_31

    .line 92
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_34

    .line 86
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 93
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate annotation for class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/annotation/AnnotationFormatError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_53
    return-object v2
.end method

.method private static parseArray(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    .line 456
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 457
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 459
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_15

    .line 460
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseByteArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    :goto_14
    return-object v0

    .line 461
    :cond_15
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1e

    .line 462
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseCharArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 463
    :cond_1e
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_27

    .line 464
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseDoubleArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 465
    :cond_27
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_30

    .line 466
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseFloatArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 467
    :cond_30
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_39

    .line 468
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseIntArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 469
    :cond_39
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_42

    .line 470
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseLongArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 471
    :cond_42
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4b

    .line 472
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseShortArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 473
    :cond_4b
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_54

    .line 474
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseBooleanArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 475
    :cond_54
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_5d

    .line 476
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseStringArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 477
    :cond_5d
    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_66

    .line 478
    invoke-static {v0, p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseClassArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 479
    :cond_66
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 480
    invoke-static {v0, v1, p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseEnumArray(ILjava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    .line 483
    :cond_71
    invoke-static {v0, v1, p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotationArray(ILjava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method private static parseBooleanArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    new-array v4, p0, [Z

    move v5, v2

    move v3, v2

    move v6, v2

    .line 628
    :goto_7
    if-ge v6, p0, :cond_2e

    .line 629
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 630
    const/16 v0, 0x5a

    if-ne v5, v0, :cond_29

    .line 631
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 632
    const v7, 0xffff

    and-int/2addr v0, v7

    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_20
    aput-boolean v0, v4, v6

    move v0, v3

    .line 628
    :goto_23
    add-int/lit8 v6, v6, 0x1

    move v3, v0

    goto :goto_7

    :cond_27
    move v0, v2

    .line 632
    goto :goto_20

    .line 634
    :cond_29
    invoke-static {v5, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    move v0, v1

    .line 635
    goto :goto_23

    .line 638
    :cond_2e
    if-eqz v3, :cond_35

    invoke-static {v5}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    move-object v0, v4

    goto :goto_34
.end method

.method private static parseByteArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 491
    new-array v1, p0, [B

    move v2, v3

    move v0, v3

    move v4, v3

    .line 495
    :goto_6
    if-ge v4, p0, :cond_28

    .line 496
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 497
    const/16 v3, 0x42

    if-ne v2, v3, :cond_23

    .line 498
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 499
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 495
    :goto_1f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 501
    :cond_23
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 502
    const/4 v0, 0x1

    goto :goto_1f

    .line 505
    :cond_28
    if-eqz v0, :cond_2f

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, v1

    goto :goto_2e
.end method

.method private static parseCharArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 510
    new-array v1, p0, [C

    move v2, v3

    move v0, v3

    move v4, v3

    .line 514
    :goto_6
    if-ge v4, p0, :cond_28

    .line 515
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 516
    const/16 v3, 0x43

    if-ne v2, v3, :cond_23

    .line 517
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 518
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 514
    :goto_1f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 520
    :cond_23
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 521
    const/4 v0, 0x1

    goto :goto_1f

    .line 524
    :cond_28
    if-eqz v0, :cond_2f

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, v1

    goto :goto_2e
.end method

.method private static parseClassArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 664
    new-array v1, p0, [Ljava/lang/Class;

    move v2, v3

    move v0, v3

    move v4, v3

    .line 668
    :goto_6
    if-ge v4, p0, :cond_1f

    .line 669
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 670
    const/16 v3, 0x63

    if-ne v2, v3, :cond_1a

    .line 671
    invoke-static {p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseClassValue(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    .line 668
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 673
    :cond_1a
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 674
    const/4 v0, 0x1

    goto :goto_16

    .line 677
    :cond_1f
    if-eqz v0, :cond_26

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_25
.end method

.method private static parseClassValue(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6

    .line 365
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 368
    :try_start_8
    invoke-virtual {p1, v0}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseSig(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_f} :catch_27
    .catch Ljava/lang/TypeNotPresentException; {:try_start_8 .. :try_end_f} :catch_17

    move-result-object v0

    .line 378
    :goto_10
    return-object v0

    .line 370
    :catch_11
    move-exception v1

    .line 372
    :try_start_12
    invoke-virtual {p1, v0}, Lsun/reflect/ConstantPool;->getClassAt(I)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_15} :catch_27
    .catch Ljava/lang/TypeNotPresentException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_10

    .line 377
    :catch_17
    move-exception v0

    move-object v1, v0

    .line 378
    new-instance v0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;

    invoke-virtual {v1}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/TypeNotPresentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 374
    :catch_27
    move-exception v0

    move-object v1, v0

    .line 375
    new-instance v0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;

    const-string v2, "[unknown]"

    invoke-direct {v0, v2, v1}, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private static parseConst(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 5

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 329
    const/16 v1, 0x46

    if-eq p0, v1, :cond_86

    const/16 v1, 0x53

    if-eq p0, v1, :cond_7c

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_6e

    const/16 v1, 0x73

    if-eq p0, v1, :cond_69

    const/16 v1, 0x49

    if-eq p0, v1, :cond_60

    const/16 v1, 0x4a

    if-eq p0, v1, :cond_57

    packed-switch p0, :pswitch_data_90

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid member-value tag in annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/annotation/AnnotationFormatError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :pswitch_3a  #0x44
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getDoubleAt(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 347
    :goto_42
    return-object v0

    .line 333
    :pswitch_43  #0x43
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_42

    .line 331
    :pswitch_4d  #0x42
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_42

    .line 341
    :cond_57
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getLongAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_42

    .line 339
    :cond_60
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_42

    .line 347
    :cond_69
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 345
    :cond_6e
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    :goto_75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_42

    :cond_7a
    const/4 v0, 0x0

    goto :goto_75

    .line 343
    :cond_7c
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_42

    .line 337
    :cond_86
    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getFloatAt(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_42

    .line 329
    nop

    :pswitch_data_90
    .packed-switch 0x42
        :pswitch_4d  #00000042
        :pswitch_43  #00000043
        :pswitch_3a  #00000044
    .end packed-switch
.end method

.method private static parseDoubleArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 11

    const/4 v3, 0x0

    .line 529
    new-array v1, p0, [D

    move v2, v3

    move v0, v3

    move v4, v3

    .line 533
    :goto_6
    if-ge v4, p0, :cond_27

    .line 534
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 535
    const/16 v3, 0x44

    if-ne v2, v3, :cond_22

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 537
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getDoubleAt(I)D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 533
    :goto_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 539
    :cond_22
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 540
    const/4 v0, 0x1

    goto :goto_1e

    .line 543
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d
.end method

.method private static parseEnumArray(ILjava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10

    const/4 v3, 0x0

    .line 684
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move v2, v3

    move v1, v3

    move v4, v3

    .line 688
    :goto_a
    if-ge v4, p0, :cond_23

    .line 689
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 690
    const/16 v3, 0x65

    if-ne v2, v3, :cond_1e

    .line 691
    invoke-static {p1, p2, p3, p4}, Lsun/reflect/annotation/AnnotationParser;->parseEnumValue(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v4

    .line 688
    :goto_1a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a

    .line 693
    :cond_1e
    invoke-static {v2, p2}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 694
    const/4 v1, 0x1

    goto :goto_1a

    .line 697
    :cond_23
    if-eqz v1, :cond_29

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :cond_29
    return-object v0
.end method

.method private static parseEnumValue(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    const v2, 0xffff

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 416
    and-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 418
    and-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 422
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;-><init>(Ljava/lang/String;)V

    .line 433
    :goto_40
    return-object v0

    .line 425
    :cond_41
    invoke-static {v0, p3}, Lsun/reflect/annotation/AnnotationParser;->parseSig(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-eq p0, v2, :cond_61

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;-><init>(Ljava/lang/String;)V

    goto :goto_40

    .line 431
    :cond_61
    :try_start_61
    invoke-static {p0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_64} :catch_66

    move-result-object v0

    goto :goto_40

    .line 432
    :catch_66
    move-exception v0

    .line 433
    new-instance v0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;

    invoke-direct {v0, p0, v1}, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_40
.end method

.method private static parseFloatArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 548
    new-array v1, p0, [F

    move v2, v3

    move v0, v3

    move v4, v3

    .line 552
    :goto_6
    if-ge v4, p0, :cond_27

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 554
    const/16 v3, 0x46

    if-ne v2, v3, :cond_22

    .line 555
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 556
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getFloatAt(I)F

    move-result v3

    aput v3, v1, v4

    .line 552
    :goto_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 558
    :cond_22
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 559
    const/4 v0, 0x1

    goto :goto_1e

    .line 562
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d
.end method

.method private static parseIntArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 567
    new-array v1, p0, [I

    move v2, v3

    move v0, v3

    move v4, v3

    .line 571
    :goto_6
    if-ge v4, p0, :cond_27

    .line 572
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 573
    const/16 v3, 0x49

    if-ne v2, v3, :cond_22

    .line 574
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 575
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v3

    aput v3, v1, v4

    .line 571
    :goto_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 577
    :cond_22
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 578
    const/4 v0, 0x1

    goto :goto_1e

    .line 581
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d
.end method

.method private static parseLongArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 11

    const/4 v3, 0x0

    .line 586
    new-array v1, p0, [J

    move v2, v3

    move v0, v3

    move v4, v3

    .line 590
    :goto_6
    if-ge v4, p0, :cond_27

    .line 591
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 592
    const/16 v3, 0x4a

    if-ne v2, v3, :cond_22

    .line 593
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 594
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getLongAt(I)J

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 590
    :goto_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 596
    :cond_22
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 597
    const/4 v0, 0x1

    goto :goto_1e

    .line 600
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d
.end method

.method public static parseMemberValue(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    .line 292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 294
    const/16 v1, 0x40

    if-eq v0, v1, :cond_54

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4f

    const/16 v1, 0x63

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x65

    if-eq v0, v1, :cond_45

    .line 306
    invoke-static {v0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseConst(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    :goto_18
    instance-of v1, v0, Lsun/reflect/annotation/ExceptionProxy;

    if-nez v1, :cond_44

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;-><init>(Ljava/lang/String;)V

    .line 313
    :cond_44
    :goto_44
    return-object v0

    .line 296
    :cond_45
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseEnumValue(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_44

    .line 298
    :cond_4a
    invoke-static {p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseClassValue(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    .line 304
    :cond_4f
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/annotation/AnnotationParser;->parseArray(Ljava/lang/Class;Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_44

    .line 301
    :cond_54
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotation(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_18
.end method

.method public static parseParameterAnnotations([BLsun/reflect/ConstantPool;Ljava/lang/Class;)[[Ljava/lang/annotation/Annotation;
    .registers 5

    .line 128
    :try_start_0
    invoke-static {p0, p1, p2}, Lsun/reflect/annotation/AnnotationParser;->parseParameterAnnotations2([BLsun/reflect/ConstantPool;Ljava/lang/Class;)[[Ljava/lang/annotation/Annotation;
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_3} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 132
    :catch_5
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/annotation/AnnotationFormatError;

    invoke-direct {v1, v0}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :catch_c
    move-exception v0

    .line 130
    new-instance v0, Ljava/lang/annotation/AnnotationFormatError;

    const-string v1, "Unexpected end of parameter annotations."

    invoke-direct {v0, v1}, Ljava/lang/annotation/AnnotationFormatError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseParameterAnnotations2([BLsun/reflect/ConstantPool;Ljava/lang/Class;)[[Ljava/lang/annotation/Annotation;
    .registers 14

    const/4 v1, 0x0

    .line 142
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    .line 144
    new-array v5, v4, [[Ljava/lang/annotation/Annotation;

    move v2, v1

    .line 146
    :goto_e
    if-ge v2, v4, :cond_4a

    .line 147
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v6, 0xffff

    and-int/2addr v6, v0

    .line 148
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 150
    :goto_1e
    if-ge v0, v6, :cond_3c

    .line 151
    invoke-static {v3, p1, p2, v1}, Lsun/reflect/annotation/AnnotationParser;->parseAnnotation(Ljava/nio/ByteBuffer;Lsun/reflect/ConstantPool;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 152
    if-eqz v8, :cond_39

    .line 153
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;

    move-result-object v9

    .line 155
    invoke-virtual {v9}, Lsun/reflect/annotation/AnnotationType;->retention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v9

    sget-object v10, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v9, v10, :cond_39

    .line 156
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 159
    :cond_3c
    sget-object v0, Lsun/reflect/annotation/AnnotationParser;->EMPTY_ANNOTATIONS_ARRAY:[Ljava/lang/annotation/Annotation;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    aput-object v0, v5, v2

    .line 146
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 161
    :cond_4a
    return-object v5
.end method

.method private static parseShortArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 605
    new-array v1, p0, [S

    move v2, v3

    move v0, v3

    move v4, v3

    .line 609
    :goto_6
    if-ge v4, p0, :cond_28

    .line 610
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 611
    const/16 v3, 0x53

    if-ne v2, v3, :cond_23

    .line 612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 613
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getIntAt(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v4

    .line 609
    :goto_1f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 615
    :cond_23
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 616
    const/4 v0, 0x1

    goto :goto_1f

    .line 619
    :cond_28
    if-eqz v0, :cond_2f

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, v1

    goto :goto_2e
.end method

.method private static parseSig(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 383
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 390
    :goto_a
    return-object v0

    .line 384
    :cond_b
    invoke-static {}, Lsun/reflect/generics/parser/SignatureParser;->make()Lsun/reflect/generics/parser/SignatureParser;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSig(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    .line 386
    invoke-static {p1}, Lsun/reflect/generics/scope/ClassScope;->make(Ljava/lang/Class;)Lsun/reflect/generics/scope/ClassScope;

    move-result-object v1

    invoke-static {p1, v1}, Lsun/reflect/generics/factory/CoreReflectionFactory;->make(Ljava/lang/reflect/GenericDeclaration;Lsun/reflect/generics/scope/Scope;)Lsun/reflect/generics/factory/CoreReflectionFactory;

    move-result-object v1

    .line 387
    invoke-static {v1}, Lsun/reflect/generics/visitor/Reifier;->make(Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/visitor/Reifier;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Lsun/reflect/generics/tree/TypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 389
    invoke-virtual {v1}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 390
    invoke-static {v0}, Lsun/reflect/annotation/AnnotationParser;->toClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_a
.end method

.method private static parseStringArray(ILjava/nio/ByteBuffer;Lsun/reflect/ConstantPool;)Ljava/lang/Object;
    .registers 9

    const/4 v3, 0x0

    .line 643
    new-array v1, p0, [Ljava/lang/String;

    move v2, v3

    move v0, v3

    move v4, v3

    .line 647
    :goto_6
    if-ge v4, p0, :cond_27

    .line 648
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 649
    const/16 v3, 0x73

    if-ne v2, v3, :cond_22

    .line 650
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 651
    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lsun/reflect/ConstantPool;->getUTF8At(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 647
    :goto_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 653
    :cond_22
    invoke-static {v2, p1}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 654
    const/4 v0, 0x1

    goto :goto_1e

    .line 657
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v2}, Lsun/reflect/annotation/AnnotationParser;->exceptionProxy(I)Lsun/reflect/annotation/ExceptionProxy;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d
.end method

.method private static skipAnnotation(Ljava/nio/ByteBuffer;Z)V
    .registers 5

    .line 740
    if-eqz p1, :cond_5

    .line 741
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 742
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 743
    const/4 v0, 0x0

    :goto_a
    const v2, 0xffff

    and-int/2addr v2, v1

    if-ge v0, v2, :cond_19

    .line 744
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 745
    invoke-static {p0}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(Ljava/nio/ByteBuffer;)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 747
    :cond_19
    return-void
.end method

.method private static skipArray(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 787
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 788
    const/4 v0, 0x0

    :goto_5
    const v2, 0xffff

    and-int/2addr v2, v1

    if-ge v0, v2, :cond_11

    .line 789
    invoke-static {p0}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(Ljava/nio/ByteBuffer;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 790
    :cond_11
    return-void
.end method

.method private static skipMemberValue(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 765
    const/16 v0, 0x40

    if-eq p0, v0, :cond_18

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_14

    const/16 v0, 0x65

    if-eq p0, v0, :cond_10

    .line 777
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 771
    :goto_f
    return-void

    .line 767
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_f

    .line 773
    :cond_14
    invoke-static {p1}, Lsun/reflect/annotation/AnnotationParser;->skipArray(Ljava/nio/ByteBuffer;)V

    goto :goto_f

    .line 770
    :cond_18
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsun/reflect/annotation/AnnotationParser;->skipAnnotation(Ljava/nio/ByteBuffer;Z)V

    goto :goto_f
.end method

.method private static skipMemberValue(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 755
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 756
    invoke-static {v0, p0}, Lsun/reflect/annotation/AnnotationParser;->skipMemberValue(ILjava/nio/ByteBuffer;)V

    .line 757
    return-void
.end method

.method static toClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 3

    .line 393
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_18

    .line 394
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/annotation/AnnotationParser;->toClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 397
    :goto_17
    return-object p0

    :cond_18
    check-cast p0, Ljava/lang/Class;

    goto :goto_17
.end method
