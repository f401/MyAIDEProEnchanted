.class Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 90
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 92
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSourceDebugExtension(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    if-eqz v1, :cond_12

    .line 95
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_12
    if-eqz p0, :cond_18

    .line 99
    invoke-static {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method private static getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 180
    nop

    .line 182
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    .line 183
    nop

    .line 185
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    if-nez v0, :cond_1e

    if-nez p0, :cond_19

    .line 189
    sget-object p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    return-object p0

    .line 191
    :cond_19
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p0

    return-object p0

    :cond_1e
    if-nez p0, :cond_25

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p0

    return-object p0

    .line 200
    :cond_25
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p0

    .line 200
    invoke-static {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p0

    return-object p0
.end method

.method public static getClassAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 7

    .line 120
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 123
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateEnclosingMethod(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    .line 127
    :goto_15
    :try_start_15
    invoke-static {v0, v1, v4}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateInnerClasses(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/cf/iface/AttributeList;Z)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 130
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2
    :try_end_1f
    .catch Lcom/s1243808733/android/dx/util/Warning; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_38

    :catch_20
    move-exception v0

    .line 133
    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "warning: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/Warning;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_38
    :goto_38
    if-eqz v3, :cond_3e

    .line 137
    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 140
    :cond_3e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isAnnotation(I)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 142
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateAnnotationDefaults(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 144
    invoke-static {v2, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2

    :cond_52
    return-object v2
.end method

.method public static getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 69
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object p0

    .line 70
    nop

    .line 71
    const-string v0, "Exceptions"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;

    if-nez p0, :cond_12

    .line 74
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object p0

    .line 77
    :cond_12
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;->getExceptions()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 160
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 161
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p0

    .line 163
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 165
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeThrows(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    .line 166
    invoke-static {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public static getParameterAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 3

    .line 376
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object p0

    .line 377
    nop

    .line 379
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    .line 381
    nop

    .line 383
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    if-nez v0, :cond_22

    if-nez p0, :cond_1d

    .line 388
    sget-object p0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    return-object p0

    .line 390
    :cond_1d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p0

    return-object p0

    :cond_22
    if-nez p0, :cond_29

    .line 394
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p0

    return-object p0

    .line 399
    :cond_29
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p0

    .line 399
    invoke-static {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->combine(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p0

    return-object p0
.end method

.method private static getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 2

    .line 213
    nop

    .line 214
    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeSignature(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method private static getSourceDebugExtension(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 2

    .line 225
    nop

    .line 226
    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;->getSmapString()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeSourceDebugExtension(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method private static translateAnnotationDefaults(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 8

    .line 414
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object p0

    .line 416
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v1

    .line 417
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v3, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v2, v0, v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v0, v1, :cond_43

    .line 422
    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v4

    .line 423
    invoke-interface {v4}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v5

    .line 424
    nop

    .line 425
    const-string v6, "AnnotationDefault"

    invoke-interface {v5, v6}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;

    if-eqz v5, :cond_40

    .line 428
    nop

    .line 429
    invoke-interface {v4}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 430
    new-instance v4, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 431
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->add(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    const/4 v3, 0x1

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_43
    if-nez v3, :cond_47

    const/4 p0, 0x0

    return-object p0

    .line 440
    :cond_47
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    .line 441
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeAnnotationDefault(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method private static translateEnclosingMethod(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 3

    .line 248
    nop

    .line 249
    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->getEnclosingClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->getMethod()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 266
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    return-object p0

    .line 269
    :cond_1c
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method private static translateInnerClasses(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/cf/iface/AttributeList;Z)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 12

    .line 289
    nop

    .line 290
    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    .line 301
    :cond_d
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->getInnerClasses()Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v1

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v1, :cond_43

    .line 307
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->get(I)Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    move-result-object v6

    .line 308
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v7

    .line 309
    invoke-virtual {v7, p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    move-object v5, v6

    goto :goto_40

    .line 311
    :cond_2f
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 312
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 316
    :cond_43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez v5, :cond_4c

    if-nez p1, :cond_4c

    return-object v0

    .line 322
    :cond_4c
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    if-eqz v5, :cond_93

    .line 326
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 327
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getAccessFlags()I

    move-result v4

    .line 325
    invoke-static {v1, v4}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeInnerClass(Lcom/s1243808733/android/dx/rop/cst/CstString;I)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    if-eqz p2, :cond_93

    .line 329
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 349
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p0

    .line 348
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    goto :goto_93

    .line 331
    :cond_76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") that doesn\'t come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dx/util/Warning;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/Warning;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    :goto_93
    if-eqz p1, :cond_b2

    .line 354
    new-instance p0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    :goto_9a
    if-ge v3, p1, :cond_a8

    .line 356
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v3, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 358
    :cond_a8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 359
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeMemberClasses(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 362
    :cond_b2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    return-object v0
.end method
