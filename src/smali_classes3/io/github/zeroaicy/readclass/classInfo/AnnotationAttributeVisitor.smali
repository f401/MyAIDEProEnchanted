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
    .registers 4

    .line 29
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;-><init>(I)V

    .line 30
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 31
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p3}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 36
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

    .line 88
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected createPassiveAddValues()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getInfoValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 95
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

    .line 40
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createPassiveAddValues()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 74
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createActiveAddValues()V

    .line 82
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v1
.end method

.method public visitEnd()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    const/16 v1, 0x40

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 116
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 117
    const-string v1, "("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 124
    :goto_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 125
    :goto_1
    if-lt v3, v5, :cond_5

    .line 133
    :goto_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 134
    if-lez v1, :cond_7

    .line 135
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :goto_3
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    :goto_4
    if-lt v2, v3, :cond_9

    .line 158
    :cond_2
    if-lez v1, :cond_3

    .line 159
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 160
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_3
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueString:Ljava/lang/String;

    return-void

    .line 119
    :cond_4
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->valueName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 120
    const-string v1, "{"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 121
    goto :goto_0

    .line 126
    :cond_5
    if-eqz v3, :cond_6

    .line 127
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :cond_6
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 137
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 138
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_8
    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 147
    :cond_9
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mActiveAddValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 148
    invoke-interface {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 149
    if-nez v0, :cond_a

    .line 146
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    :cond_a
    if-eqz v2, :cond_b

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 162
    :cond_c
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    move v1, v2

    goto :goto_2
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
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

    .line 51
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->createPassiveAddValues()V

    .line 52
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->classInfoVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v0, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->mPassiveAddValues:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
