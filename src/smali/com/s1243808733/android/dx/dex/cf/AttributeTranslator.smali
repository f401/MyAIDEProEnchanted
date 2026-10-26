.class Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 3

    .line 90
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 92
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getSourceDebugExtension(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_0
    if-eqz v2, :cond_1

    .line 99
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getAnnotations0(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 2

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

    if-nez v0, :cond_1

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

    .line 201
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClassAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 6

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

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 127
    :goto_0
    :try_start_0
    invoke-static {v2, v3, v0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateInnerClasses(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/cf/iface/AttributeList;Z)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/util/Warning; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
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

    .line 142
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->translateAnnotationDefaults(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_1
    return-object v0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 133
    iget-object v2, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "warning: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/Warning;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 2

    .line 69
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 70
    const-string v1, "Exceptions"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;

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
    .locals 3

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

    .line 165
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeThrows(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getParameterAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .locals 3

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

    if-nez v0, :cond_1

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

    .line 400
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->combine(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSignature(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 1

    .line 213
    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    .locals 1

    .line 225
    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    .locals 8

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

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 422
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

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v6}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 430
    new-instance v6, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 431
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->add(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 441
    :goto_2
    return-object v0

    .line 440
    :cond_1
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    .line 441
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeAnnotationDefault(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static translateEnclosingMethod(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 3

    .line 248
    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 362
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->getInnerClasses()Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    move-result-object v5

    .line 302
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v6

    .line 304
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move-object v1, v2

    :goto_1
    if-ge v4, v6, :cond_2

    .line 307
    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->get(I)Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v8

    .line 309
    invoke-virtual {v8, p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 316
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 322
    :cond_3
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    if-eqz v1, :cond_4

    .line 326
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getInnerName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 327
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getAccessFlags()I

    move-result v5

    .line 325
    invoke-static {v0, v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeInnerClass(Lcom/s1243808733/android/dx/rop/cst/CstString;I)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    if-eqz p2, :cond_4

    .line 329
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 349
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 334
    :cond_4
    if-eqz v4, :cond_7

    .line 354
    new-instance v5, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_6

    .line 356
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v5, v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 331
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/util/Warning;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/Warning;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_6
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 359
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeMemberClasses(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 362
    :cond_7
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method
