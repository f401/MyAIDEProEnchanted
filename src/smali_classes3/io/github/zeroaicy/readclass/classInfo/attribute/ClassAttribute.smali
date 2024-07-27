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
    .registers 11

    const/16 v3, 0x2e

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 45
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v1

    iput-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

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
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 56
    iget-boolean v3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-nez v3, :cond_4

    .line 57
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 62
    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    .line 69
    :goto_1
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v2

    invoke-direct {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 70
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v1, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 71
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 76
    :cond_0
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v1

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 78
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->createModifiers()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classModifiers:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    :cond_1
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 85
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " extends "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 90
    const-string v0, " implements "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    if-ge v0, v2, :cond_2

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 94
    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->extendsString:Ljava/lang/String;

    return-void

    .line 60
    :cond_4
    const-string v3, ""

    iput-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_5
    const-string v1, ""

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    goto/16 :goto_1

    .line 98
    :cond_6
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->superName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 99
    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2, p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_7
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 103
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 105
    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_8
    :goto_3
    array-length v2, p6

    if-lt v0, v2, :cond_b

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 107
    :cond_9
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isClass()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 109
    :cond_a
    const-string v2, " implements "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 111
    :cond_b
    aget-object v2, p6, v0

    .line 112
    invoke-virtual {p1, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private createClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 124
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 136
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    goto :goto_0
.end method

.method private createModifiers()Ljava/lang/String;
    .registers 3

    .line 144
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

    .line 145
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->setFlags(I)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 147
    :cond_1
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getInnerClassModifiers()Ljava/util/Set;

    move-result-object v0

    .line 148
    :goto_0
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getClassModifiers()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private isAnnotation()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v0, :cond_0

    const-string v2, "java/lang/annotation/Annotation"

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private splicing()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "//signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->isInnerClass:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->attributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-result-object v1

    .line 234
    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classModifiers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->extendsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassSignatureSummary()Ljava/lang/String;
    .registers 3

    .line 165
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getFormalTypeParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classSignatureSummary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 188
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classType:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->fullClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleClassName()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->simpleClassName:Ljava/lang/String;

    return-object v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->splicing()V

    .line 223
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->classAttributeValue:Ljava/lang/String;

    return-object v0
.end method
