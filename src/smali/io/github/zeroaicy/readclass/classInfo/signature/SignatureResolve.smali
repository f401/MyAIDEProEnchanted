.class public Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;
.super Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;
.source "SignatureResolve.java"


# instance fields
.field private convert:Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;

.field private extendedObject:Z

.field protected formalTypeParameter:Ljava/lang/StringBuilder;

.field protected formalTypeParameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isVarargs:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    .line 57
    :goto_c
    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->isVarargs:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    return-void
.end method

.method private addClassType(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    .line 130
    :cond_d
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private convertClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 135
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convert:Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;

    if-eqz v0, :cond_9

    .line 136
    invoke-interface {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_9
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    new-instance p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    .line 41
    new-instance v0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    const-string v1, "Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Comparable<Ljava/lang/String;>;Ljava/lang/CharSequence;"

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected endFormals()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    invoke-super {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endFormals()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    return-void
.end method

.method protected endType()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 167
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 168
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    goto :goto_13

    .line 170
    :cond_d
    :goto_d
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14

    :goto_13
    return-void

    .line 171
    :cond_14
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    .line 172
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->isVarargs:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2c

    .line 174
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 176
    :cond_2c
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method public getFormalTypeParameterString()Ljava/lang/String;
    .registers 4

    .line 195
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameterList:Ljava/util/List;

    if-nez v0, :cond_7

    .line 196
    const-string v0, ""

    return-object v0

    .line 198
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameterList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_40

    .line 208
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameter:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method public setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;
    .registers 2

    .line 65
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convert:Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 93
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceVisited:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceBoundVisited:Z

    if-nez v0, :cond_20

    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->COMMA_SEPARATOR:Ljava/lang/String;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->EXTENDS_SEPARATOR:Ljava/lang/String;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    :cond_20
    const-string v0, " & "

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 101
    :cond_24
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->isInterface:Z

    if-eqz v0, :cond_50

    .line 105
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x1

    .line 113
    :goto_3f
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x1

    :goto_49
    or-int/2addr v0, v1

    if-eqz v0, :cond_53

    .line 115
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->addClassType(Ljava/lang/String;)V

    goto :goto_53

    .line 119
    :cond_50
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->addClassType(Ljava/lang/String;)V

    .line 121
    :cond_53
    :goto_53
    const-string p1, ""

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 122
    iget p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    return-void
.end method

.method public visitClassType2(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    .line 148
    :cond_9
    invoke-super {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitEnd()V

    return-void
.end method

.method public visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 184
    invoke-super {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    .line 185
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convert:Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    move-result-object v0

    return-object v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    .line 74
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameterList:Ljava/util/List;

    if-nez v0, :cond_e

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameterList:Ljava/util/List;

    .line 77
    :cond_e
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->formalTypeParameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-super {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 154
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->extendedObject:Z

    .line 159
    :cond_9
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_15

    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    :cond_15
    invoke-super {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 190
    invoke-super {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    .line 191
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->convert:Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    move-result-object v0

    return-object v0
.end method
