.class Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 4

    .line 90
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 92
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSourceDebugExtension(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v2

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 98
    :cond_0
    if-eqz v2, :cond_1

    .line 99
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 102
    :cond_1
    return-object v0
.end method

.method private static getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 180
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    .line 183
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    .line 187
    if-nez v0, :cond_1

    .line 188
    if-nez v1, :cond_0

    .line 189
    sget-object v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 200
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    if-nez v1, :cond_2

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClassAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 8

    .line 120
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 123
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateEnclosingMethod(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v4

    .line 126
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {v2, v3, v0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateInnerClasses(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/cf/iface/AttributeList;Z)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/util/Warning; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_1
    if-eqz v4, :cond_0

    .line 137
    invoke-static {v0, v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isAnnotation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateAnnotationDefaults(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_1

    .line 144
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 148
    :cond_1
    return-object v0

    .line 126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 133
    iget-object v2, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "warning: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/Warning;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 3

    .line 69
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 70
    const-string v1, "Exceptions"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;

    .line 73
    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;->getExceptions()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMethodAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 4

    .line 160
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 161
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeThrows(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method

.method public static getParameterAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 4

    .line 376
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v1

    .line 377
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    .line 381
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {v1, v2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    .line 386
    if-nez v0, :cond_1

    .line 387
    if-nez v1, :cond_0

    .line 388
    sget-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    .line 399
    :goto_0
    return-object v0

    .line 390
    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    if-nez v1, :cond_2

    .line 394
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->combine(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 2

    .line 213
    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;

    .line 216
    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeSignature(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSourceDebugExtension(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 2

    .line 225
    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;

    .line 228
    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 232
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;->getSmapString()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeSourceDebugExtension(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method private static translateAnnotationDefaults(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 9

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 415
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v3

    .line 416
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v4

    .line 417
    new-instance v5, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v5, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    move v2, v0

    move v1, v0

    .line 421
    :goto_0
    if-lt v2, v4, :cond_0

    .line 436
    if-nez v1, :cond_1

    .line 437
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 441
    :goto_1
    return-object v0

    .line 422
    :cond_0
    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v6

    .line 423
    invoke-interface {v6}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 424
    const-string v7, "AnnotationDefault"

    invoke-interface {v0, v7}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;

    .line 427
    if-eqz v0, :cond_2

    .line 428
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-interface {v6}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v6

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 431
    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->add(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 432
    const/4 v0, 0x1

    .line 421
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    .line 441
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeAnnotationDefault(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static translateEnclosingMethod(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 4

    .line 248
    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    .line 251
    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 269
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->getEnclosingClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 256
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->getMethod()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    .line 258
    if-nez v0, :cond_1

    .line 266
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_1
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v2, v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method private static translateInnerClasses(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/cf/iface/AttributeList;Z)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 21

    .line 289
    const-string v1, "InnerClasses"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    .line 292
    if-nez v1, :cond_0

    .line 293
    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 363
    :goto_0
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->getInnerClasses()Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v5

    .line 303
    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    .line 304
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v2, 0x0

    move-object v3, v1

    :goto_1
    if-lt v2, v5, :cond_1

    .line 316
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 318
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 319
    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->get(I)Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v7

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 306
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, v3

    goto :goto_2

    .line 322
    :cond_4
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    .line 324
    if-eqz v3, :cond_6

    .line 325
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getAccessFlags()I

    move-result v5

    invoke-static {v1, v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeInnerClass(Lcom/s1243808733/android/dx/rop/cst/CstString;I)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 328
    if-eqz p2, :cond_6

    .line 329
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 330
    if-nez v1, :cond_5

    .line 331
    new-instance v1, Lcom/s1243808733/android/dx/util/Warning;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Ignoring InnerClasses attribute for an "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "anonymous inner class\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ") that doesn\'t come with an\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "associated EnclosingMethod attribute. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "This class was probably produced by a\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "compiler that did not target the modern "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ".class file format. The recommended\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "solution is to recompile the class from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "source, using an up-to-date compiler\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "and without specifying any \"-target\" type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "options. The consequence of ignoring\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "this warning is that reflective operations "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "on this class will incorrectly\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "indicate that it is *not* an inner class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/util/Warning;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_5
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 353
    :cond_6
    if-eqz v4, :cond_7

    .line 354
    new-instance v5, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 355
    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-lt v3, v4, :cond_8

    .line 358
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 359
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeMemberClasses(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 362
    :cond_7
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    move-object v1, v2

    .line 363
    goto/16 :goto_0

    .line 356
    :cond_8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v5, v3, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 355
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3
.end method
