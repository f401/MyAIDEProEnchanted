.class public Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;
.super Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
.source "TraceSignatureVisitor.java"


# static fields
.field protected static final BASE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMMA_SEPARATOR:Ljava/lang/String; = ", "

.field public static final EXTENDS_SEPARATOR:Ljava/lang/String; = " extends "

.field public static final IMPLEMENTS_SEPARATOR:Ljava/lang/String; = " implements "


# instance fields
.field protected argumentStack:I

.field protected arrayStack:I

.field protected final declaration:Ljava/lang/StringBuilder;

.field protected exceptions:Ljava/lang/StringBuilder;

.field protected formalTypeParameterVisited:Z

.field protected interfaceBoundVisited:Z

.field protected interfaceVisited:Z

.field protected final isInterface:Z

.field protected parameterTypeVisited:Z

.field protected returnType:Ljava/lang/StringBuilder;

.field protected separator:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x43

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x49

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x4a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x56

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "void"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->BASE_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 114
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    const/4 p1, 0x1

    .line 115
    :goto_10
    iput-boolean p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->isInterface:Z

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 120
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->isInterface:Z

    .line 122
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected endFormals()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->formalTypeParameterVisited:Z

    if-eqz v0, :cond_e

    .line 327
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->formalTypeParameterVisited:Z

    :cond_e
    return-void
.end method

.method protected endType()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_b

    .line 338
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    goto :goto_11

    .line 340
    :cond_b
    :goto_b
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_12

    :goto_11
    return-void

    .line 341
    :cond_12
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    .line 342
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method public getDeclaration()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptions()Ljava/lang/String;
    .registers 3

    .line 320
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 3

    .line 311
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method protected startType()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    return-void
.end method

.method public visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 222
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    .line 223
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->arrayStack:I

    return-object p0
.end method

.method public visitBaseType(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 205
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->BASE_TYPES:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_18

    .line 209
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endType()V

    return-void

    .line 207
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public visitClassBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 134
    const-string v0, " extends "

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

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

    .line 229
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    if-eqz v0, :cond_26

    .line 232
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    if-nez v0, :cond_17

    goto :goto_34

    .line 234
    :cond_17
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 237
    :cond_26
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_34
    const-string p1, ""

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 240
    iget p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    return-void
.end method

.method public visitEnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 287
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    :cond_d
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    .line 291
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endType()V

    return-void
.end method

.method public visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 195
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuilder;

    goto :goto_11

    .line 198
    :cond_c
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_11
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 127
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->formalTypeParameterVisited:Z

    if-eqz v1, :cond_9

    const-string v1, ", "

    goto :goto_b

    :cond_9
    const-string v1, "<"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->formalTypeParameterVisited:Z

    .line 129
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceBoundVisited:Z

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 245
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_d
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    .line 249
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string p1, ""

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 252
    iget p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    return-void
.end method

.method public visitInterface()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 157
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceVisited:Z

    if-eqz v0, :cond_9

    .line 158
    const-string v0, ", "

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    goto :goto_17

    .line 160
    :cond_9
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->isInterface:Z

    if-eqz v0, :cond_10

    const-string v0, " extends "

    goto :goto_12

    :cond_10
    const-string v0, " implements "

    :goto_12
    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceVisited:Z

    .line 163
    :goto_17
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitInterfaceBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 141
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceBoundVisited:Z

    if-eqz v0, :cond_7

    const-string v0, ", "

    goto :goto_9

    :cond_7
    const-string v0, " extends "

    :goto_9
    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->interfaceBoundVisited:Z

    .line 143
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endFormals()V

    .line 170
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 173
    :cond_f
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    .line 176
    :goto_19
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endFormals()V

    .line 183
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    if-eqz v0, :cond_b

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->parameterTypeVisited:Z

    goto :goto_12

    .line 186
    :cond_b
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :goto_12
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endFormals()V

    .line 150
    const-string v0, " extends "

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 268
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_12

    .line 269
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    .line 270
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 272
    :cond_12
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_25

    .line 276
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v0, "? extends "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_25
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_30

    .line 278
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v0, "? super "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitTypeArgument()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 257
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_12

    .line 258
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->argumentStack:I

    .line 259
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 261
    :cond_12
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_19
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 215
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string p1, ""

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->separator:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/signature/TraceSignatureVisitor;->endType()V

    return-void
.end method
