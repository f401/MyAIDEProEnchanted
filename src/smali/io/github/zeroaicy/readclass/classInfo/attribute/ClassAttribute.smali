.class public Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;
.super Ljava/lang/Object;
.source "ClassAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    }
.end annotation


# static fields
.field public static final classSignDeBug:Z


# instance fields
.field public final accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

.field protected final attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field private classAttributeValue:Ljava/lang/String;

.field public final classModifiers:Ljava/lang/String;

.field private classSignatureSummary:Ljava/lang/StringBuilder;

.field public final classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

.field public final extendsString:Ljava/lang/String;

.field public final fullClassName:Ljava/lang/String;

.field protected final interfaces:[Ljava/lang/String;

.field protected final isInnerClass:Z

.field public final packageName:Ljava/lang/String;

.field protected final signature:Ljava/lang/String;

.field public final signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

.field public final simpleClassName:Ljava/lang/String;

.field protected final superName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0x2e

    const/16 v6, 0x2f

    const/16 v5, 0x24

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 45
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    .line 46
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->superName:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 52
    invoke-virtual {p3, v6, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_4

    .line 57
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 62
    :goto_0
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    .line 69
    :goto_1
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v2

    invoke-direct {v0, v2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 70
    invoke-virtual {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    if-eqz p4, :cond_0

    .line 72
    new-instance v2, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {v2, p4}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 76
    :cond_0
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v2

    iput-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 78
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createModifiers()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classModifiers:Ljava/lang/String;

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    :cond_1
    if-eqz p4, :cond_6

    .line 85
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " extends "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 90
    const-string v0, " implements "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 94
    :cond_2
    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 141
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->extendsString:Ljava/lang/String;

    return-void

    .line 60
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    goto :goto_1

    .line 94
    :cond_6
    if-eqz p5, :cond_8

    .line 98
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {p5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 103
    invoke-virtual {p5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_7

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_7
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    const-string v4, " extends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1, p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 117
    invoke-virtual {p1, p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p6, :cond_3

    .line 123
    array-length v0, p6

    if-lez v0, :cond_3

    .line 124
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 126
    const-string v0, " extends "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 135
    :goto_5
    array-length v1, p6

    if-lt v0, v1, :cond_d

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_9
    move-object v0, p5

    .line 103
    goto :goto_3

    .line 119
    :cond_a
    invoke-static {p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 128
    :cond_b
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    :cond_c
    const-string v0, " implements "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_5

    .line 132
    :cond_d
    aget-object v1, p6, v0

    .line 133
    invoke-virtual {p1, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_5
.end method

.method private createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0
.end method

.method private createModifiers()Ljava/lang/String;
    .locals 2

    .line 165
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->setFlags(I)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 168
    :cond_1
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getInnerClassModifiers()Ljava/util/Set;

    move-result-object v0

    .line 169
    :goto_0
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getClassModifiers()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private isAnnotation()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v3, v2

    if-ne v3, v1, :cond_0

    const-string v3, "java/lang/annotation/Annotation"

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private splicing()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "//signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-result-object v1

    .line 255
    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classModifiers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->extendsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassSignatureSummary()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getFormalTypeParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleClassName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    return-object v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->splicing()V

    .line 244
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    return-object v0
.end method
