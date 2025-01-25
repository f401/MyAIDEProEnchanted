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
            "Ljava/util/List<",
            "Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mPassiveAddValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected valueName:Ljava/lang/String;

.field protected valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V
    .registers 4

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
    .registers 4

    .line 36
    invoke-direct {p0, p1, p3}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createActiveAddValues()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    :cond_b
    return-void
.end method

.method protected createPassiveAddValues()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    :cond_b
    return-void
.end method

.method public getInfoValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
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

    if-eqz p1, :cond_12

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_12
    instance-of v1, p2, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v1, :cond_57

    .line 51
    check-cast p2, Lzeroaicy/org/objectweb/asm/Type;

    .line 53
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, ".class"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 57
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -> "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 64
    :cond_57
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 92
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 100
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {v2, v0, p1, v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public visitEnd()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_11
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 130
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_25
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    const-string v2, "{"

    const-string v3, "("

    const/16 v4, 0x2c

    const/4 v5, 0x0

    if-eqz v1, :cond_5f

    .line 134
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 137
    :cond_38
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 142
    :goto_42
    iget-object v6, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_49
    if-lt v7, v6, :cond_4c

    goto :goto_60

    :cond_4c
    if-eqz v7, :cond_51

    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_51
    iget-object v8, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    :cond_5f
    const/4 v1, 0x0

    .line 151
    :goto_60
    iget-object v6, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-eqz v6, :cond_9e

    if-lez v1, :cond_6b

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_79

    .line 155
    :cond_6b
    iget-object v6, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v6, :cond_73

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 159
    :cond_73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_76
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 153
    :goto_79
    nop

    .line 163
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_80
    if-lt v5, v3, :cond_84

    move v1, v2

    goto :goto_9e

    .line 165
    :cond_84
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 166
    invoke-interface {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_93

    goto :goto_9b

    :cond_93
    if-eqz v5, :cond_98

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_9e
    :goto_9e
    if-lez v1, :cond_af

    .line 177
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_aa

    .line 178
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 180
    :cond_aa
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_af
    :goto_af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueString:Ljava/lang/String;

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
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

    move-result-object p2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_20

    .line 72
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
