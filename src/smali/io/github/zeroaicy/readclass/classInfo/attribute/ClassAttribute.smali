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
.field public static final classSignDeBug:Z = false


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
    .registers 15

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
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v5, :cond_46

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    if-nez v0, :cond_3b

    .line 57
    invoke-virtual {v2, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    goto :goto_3d

    .line 60
    :cond_3b
    iput-object v6, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 62
    :goto_3d
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    goto :goto_4a

    .line 65
    :cond_46
    iput-object v6, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    .line 69
    :goto_4a
    new-instance p3, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result p2

    invoke-direct {p3, p2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 70
    invoke-virtual {p3, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    if-eqz p4, :cond_62

    .line 72
    new-instance p2, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {p2, p4}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 76
    :cond_62
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object p2

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 78
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createModifiers()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classModifiers:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 84
    :cond_85
    const-string v2, " implements "

    const-string v3, " extends "

    if-eqz p4, :cond_ad

    .line 85
    invoke-virtual {p3}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_12d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_12d

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-ge p2, p1, :cond_a8

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 94
    :cond_a8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_12d

    :cond_ad
    if-eqz p5, :cond_f1

    .line 98
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result p3

    if-eqz p3, :cond_f1

    .line 102
    invoke-virtual {p5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_c6

    .line 103
    invoke-virtual {p5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p5, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_c7

    :cond_c6
    move-object p3, p5

    .line 105
    :goto_c7
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    if-lez p4, :cond_d5

    .line 106
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    invoke-virtual {p3, v7, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 108
    :cond_d5
    iget-object p4, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1, p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_ea

    .line 117
    invoke-virtual {p1, p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_ee

    .line 119
    :cond_ea
    invoke-static {p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 121
    :goto_ee
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f1
    if-eqz p6, :cond_12d

    .line 123
    array-length p3, p6

    if-lez p3, :cond_12d

    .line 124
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_100

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10f

    .line 128
    :cond_100
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result p3

    if-nez p3, :cond_10c

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result p2

    if-eqz p2, :cond_10f

    .line 130
    :cond_10c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_10f
    :goto_10f
    array-length p2, p6

    if-lt v7, p2, :cond_11c

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_12d

    .line 132
    :cond_11c
    aget-object p2, p6, v7

    .line 133
    invoke-virtual {p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_10f

    .line 141
    :cond_12d
    :goto_12d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->extendsString:Ljava/lang/String;

    return-void
.end method

.method private createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 145
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0

    .line 148
    :cond_b
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 149
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0

    .line 153
    :cond_1c
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0

    .line 157
    :cond_1f
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method

.method private createModifiers()Ljava/lang/String;
    .registers 3

    .line 165
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 166
    :cond_18
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->setFlags(I)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 168
    :cond_23
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getInnerClassModifiers()Ljava/util/Set;

    move-result-object v0

    goto :goto_34

    :cond_2e
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getClassModifiers()Ljava/util/Set;

    move-result-object v0

    .line 169
    :goto_34
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAnnotation()Z
    .registers 5

    .line 173
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const-string v2, "java/lang/annotation/Annotation"

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    :goto_15
    return v1
.end method

.method private splicing()V
    .registers 3
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

    if-eqz v1, :cond_27

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

    if-eqz v1, :cond_27

    .line 254
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-result-object v1

    .line 255
    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_27
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
    .registers 3

    .line 186
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_9
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

    if-eqz v0, :cond_2f

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

    return-object v0

    .line 196
    :cond_2f
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 209
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleClassName()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    return-object v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 242
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->splicing()V

    .line 244
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    return-object v0
.end method
