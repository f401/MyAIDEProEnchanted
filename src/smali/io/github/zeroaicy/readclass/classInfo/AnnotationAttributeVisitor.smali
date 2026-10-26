.class public Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;
.super Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
.source "AnnotationAttributeVisitor.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;


# instance fields
.field protected classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field protected descriptor:Ljava/lang/String;

.field protected mActiveAddValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mPassiveAddValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected valueName:Ljava/lang/String;

.field protected valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V
    .locals 1

    .line 30
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;-><init>(I)V

    .line 31
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 32
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createActiveAddValues()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected createPassiveAddValues()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getInfoValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createPassiveAddValues()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    instance-of v1, p2, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v1, :cond_1

    .line 51
    check-cast p2, Lzeroaicy/org/objectweb/asm/Type;

    .line 53
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 57
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 92
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 100
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {v0, v2, p1, v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitEnd()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 130
    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 135
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_0
    const/4 v0, 0x1

    move v1, v0

    .line 142
    :goto_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-lt v3, v5, :cond_6

    .line 151
    :goto_3
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-eqz v0, :cond_2

    if-lez v1, :cond_9

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    if-lt v2, v3, :cond_b

    .line 173
    :cond_2
    if-lez v1, :cond_3

    .line 177
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 178
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_3
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueString:Ljava/lang/String;

    return-void

    .line 137
    :cond_4
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 138
    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 142
    :cond_6
    if-eqz v3, :cond_7

    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    .line 155
    :cond_9
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 156
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 165
    :cond_b
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 166
    invoke-interface {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 173
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 166
    :cond_c
    if-eqz v2, :cond_d

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 180
    :cond_e
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createPassiveAddValues()V

    .line 70
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v0, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 72
    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
