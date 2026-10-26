.class public final Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final ACCESS_FLAGS_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private static final ANNOTATION_DEFAULT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_METHOD_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final INNER_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final MEMBER_CLASSES_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final NAME_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private static final SIGNATURE_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final SOURCE_DEBUG_EXTENSION_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final THROWS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "Ldalvik/annotation/AnnotationDefault;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 44
    const-string v0, "Ldalvik/annotation/EnclosingClass;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 48
    const-string v0, "Ldalvik/annotation/EnclosingMethod;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 52
    const-string v0, "Ldalvik/annotation/InnerClass;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 56
    const-string v0, "Ldalvik/annotation/MemberClasses;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 60
    const-string v0, "Ldalvik/annotation/Signature;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 64
    const-string v0, "Ldalvik/annotation/SourceDebugExtension;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 68
    const-string v0, "Ldalvik/annotation/Throws;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 72
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "accessFlags"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 75
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 78
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotationDefault(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 4

    .line 94
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 96
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-direct {v3, p0}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    invoke-direct {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 97
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v0
.end method

.method private static makeCstArray(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/cst/CstArray;
    .locals 4

    .line 259
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 260
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 263
    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 267
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-object v0
.end method

.method public static makeEnclosingClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 3

    .line 108
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 110
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 111
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v0
.end method

.method public static makeEnclosingMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 3

    .line 122
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 124
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 125
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v0
.end method

.method public static makeInnerClass(Lcom/s1243808733/android/dx/rop/cst/CstString;I)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 4

    .line 138
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    if-eqz p0, :cond_0

    .line 141
    :goto_0
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 142
    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 143
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 142
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 144
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v0

    .line 139
    :cond_0
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    goto :goto_0
.end method

.method public static makeMemberClasses(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 4

    .line 155
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/cst/CstArray;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v3, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 157
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v2, v3, v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 158
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v1
.end method

.method public static makeSignature(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 10

    const/16 v9, 0x4c

    const/4 v1, 0x0

    .line 169
    new-instance v3, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v3, v0, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 176
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 178
    new-instance v6, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v0, v2, 0x1

    if-ne v7, v9, :cond_3

    :goto_1
    if-ge v0, v5, :cond_0

    .line 186
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 206
    :cond_0
    :goto_2
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    goto :goto_0

    .line 186
    :cond_1
    const/16 v8, 0x3c

    if-eq v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_3
    if-ge v0, v5, :cond_0

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2

    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 211
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    :goto_3
    if-ge v1, v2, :cond_5

    .line 214
    new-instance v5, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 217
    :cond_5
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 219
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-direct {v2, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 220
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v3
.end method

.method public static makeSourceDebugExtension(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 3

    .line 231
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 233
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 234
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v0
.end method

.method public static makeThrows(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .locals 4

    .line 245
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/s1243808733/android/dx/rop/type/TypeList;)Lcom/s1243808733/android/dx/rop/cst/CstArray;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v3, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 247
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v2, v3, v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 248
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    return-object v1
.end method
