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
    .registers 9

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
    .registers 4
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

    .line 57
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 58
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->paserDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    .line 62
    :goto_0
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->paserValue()V

    return-void

    .line 60
    :cond_2
    invoke-direct {p0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method private method()Ljava/lang/String;
    .registers 4

    .line 65
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->access:I

    invoke-direct {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    .line 67
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 68
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->signature:Ljava/lang/String;

    :goto_0
    new-instance v2, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {v2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->acceptType(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 69
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseTypeSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 84
    check-cast v0, Ljava/lang/StringBuilder;

    .line 85
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 156
    check-cast v1, Ljava/lang/String;

    :goto_1
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 88
    :sswitch_0
    const-string v1, "byte"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 94
    :sswitch_1
    const-string v1, "char"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 101
    :sswitch_2
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 107
    :sswitch_3
    const-string v1, "float"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 113
    :sswitch_4
    const-string v1, "int"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 120
    :sswitch_5
    const-string v1, "long"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 127
    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 135
    :sswitch_7
    const-string v1, "short"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 141
    :sswitch_8
    const-string v1, "boolean"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 147
    :sswitch_9
    add-int/lit8 v2, v2, 0x1

    .line 148
    if-nez v0, :cond_a

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[]"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_a
    const-string v4, "[]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4c -> :sswitch_6
        0x53 -> :sswitch_7
        0x5a -> :sswitch_8
        0x5b -> :sswitch_9
    .end sparse-switch
.end method

.method private paserDescriptor()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->parseTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 78
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->descriptor:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 215
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->compareTo(Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;)I

    move-result v0

    return v0
.end method

.method public getInfoValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 167
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->mFieldValueString:Ljava/lang/String;

    return-object v0
.end method

.method public isEnumField()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField:Z

    return v0
.end method

.method public paserValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 171
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    .line 174
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-object v0
.end method

.method public visitEnd()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x20

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 199
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldModifiers:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldClassName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    const-string v0, ";\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->mFieldValueString:Ljava/lang/String;

    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->fieldAnnotationInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
