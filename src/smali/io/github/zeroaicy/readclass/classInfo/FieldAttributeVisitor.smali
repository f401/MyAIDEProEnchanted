.class public Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;
.super Lzeroaicy/org/objectweb/asm/FieldVisitor;
.source "FieldAttributeVisitor.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzeroaicy/org/objectweb/asm/FieldVisitor;",
        "Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;",
        ">;"
    }
.end annotation


# instance fields
.field access:I

.field classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field descriptor:Ljava/lang/String;

.field private fieldAnnotationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private fieldClassName:Ljava/lang/String;

.field private fieldModifiers:Ljava/lang/String;

.field private isEnumField:Z

.field private isSynthetic:Z

.field private mFieldValueString:Ljava/lang/String;

.field name:Ljava/lang/String;

.field signature:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    .line 27
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;-><init>(I)V

    iput-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField:Z

    iput-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isSynthetic:Z

    .line 28
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 29
    iput p2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->access:I

    .line 30
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->Init()V

    return-void
.end method

.method private Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 46
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    iget v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->access:I

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    .line 48
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iput-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField:Z

    .line 51
    :cond_0
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iput-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isSynthetic:Z

    .line 56
    :cond_1
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFieldModifiers()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldModifiers:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    const-string v1, "LooperThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    .line 68
    :goto_0
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->paserValue()V

    return-void

    .line 66
    :cond_3
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method private method()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->access:I

    invoke-direct {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    .line 74
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 76
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v2, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {v2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->acceptType(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 78
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseTypeSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 93
    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object v0, v1

    .line 94
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    move-object v0, v1

    .line 165
    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x46

    if-eq v4, v5, :cond_10

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_e

    const/16 v5, 0x53

    if-eq v4, v5, :cond_c

    const/16 v5, 0x49

    if-eq v4, v5, :cond_a

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    const-string v1, "byte"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 110
    :pswitch_1
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 104
    :pswitch_2
    const-string v1, "char"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 101
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 157
    if-nez v0, :cond_5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[]"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_5
    const-string v4, "[]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_6
    const-string v1, "boolean"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 129
    :cond_8
    const-string v1, "long"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 122
    :cond_a
    const-string v1, "int"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 144
    :cond_c
    const-string v1, "short"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 136
    :cond_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 116
    :cond_10
    const-string v1, "float"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private paserDescriptor()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 87
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->parseTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;)I
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 224
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->compareTo(Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;)I

    move-result v0

    return v0
.end method

.method public getInfoValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 176
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->mFieldValueString:Ljava/lang/String;

    return-object v0
.end method

.method public isEnumField()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField:Z

    return v0
.end method

.method public paserValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 180
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    .line 183
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldModifiers:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 214
    const-string v0, " = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    const-string v0, ";\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->mFieldValueString:Ljava/lang/String;

    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
