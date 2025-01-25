.class public final Lorg/objectweb/asm/util/TraceSignatureVisitor;
.super Lorg/objectweb/asm/signature/SignatureVisitor;


# instance fields
.field private argumentStack:I

.field private arrayStack:I

.field private final declaration:Ljava/lang/StringBuffer;

.field private exceptions:Ljava/lang/StringBuffer;

.field private isInterface:Z

.field private returnType:Ljava/lang/StringBuffer;

.field private seenFormalParameter:Z

.field private seenInterface:Z

.field private seenInterfaceBound:Z

.field private seenParameter:Z

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->isInterface:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    iput-object p1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    return-void
.end method

.method private endFormals()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenFormalParameter:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenFormalParameter:Z

    :cond_e
    return-void
.end method

.method private endType()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    :cond_c
    return-void

    :cond_d
    :goto_d
    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d
.end method

.method private startType()V
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    return-void
.end method


# virtual methods
.method public getDeclaration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->arrayStack:I

    return-object p0
.end method

.method public visitBaseType(C)V
    .registers 4

    sparse-switch p1, :sswitch_data_4e

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endType()V

    return-void

    :sswitch_e
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_16
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_1e
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_26
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_2e
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_36
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_3e
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_46
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :sswitch_data_4e
    .sparse-switch
        0x42 -> :sswitch_16
        0x43 -> :sswitch_3e
        0x46 -> :sswitch_46
        0x49 -> :sswitch_2e
        0x4a -> :sswitch_1e
        0x53 -> :sswitch_36
        0x56 -> :sswitch_e
        0x5a -> :sswitch_26
    .end sparse-switch
.end method

.method public visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    const-string v0, " extends "

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x2f

    const/16 v2, 0x2e

    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenParameter:Z

    if-eqz v0, :cond_33

    :cond_16
    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    :goto_28
    const-string v0, ""

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_17

    :cond_35
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28
.end method

.method public visitEnd()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endType()V

    return-void
.end method

.method public visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    :goto_b
    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->exceptions:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenFormalParameter:Z

    if-eqz v0, :cond_16

    const-string v0, ", "

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenFormalParameter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    return-void

    :cond_16
    const-string v0, "<"

    goto :goto_8
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x2e

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_f
    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ""

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    return-void
.end method

.method public visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenInterface:Z

    if-eqz v0, :cond_f

    const-string v0, ", "

    :goto_6
    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenInterface:Z

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0

    :cond_f
    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->isInterface:Z

    if-eqz v0, :cond_16

    const-string v0, " extends "

    goto :goto_6

    :cond_16
    const-string v0, " implements "

    goto :goto_6
.end method

.method public visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    if-eqz v0, :cond_f

    const-string v0, ", "

    :goto_6
    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenInterfaceBound:Z

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0

    :cond_f
    const-string v0, " extends "

    goto :goto_6
.end method

.method public visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 3

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endFormals()V

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenParameter:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_e
    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenParameter:Z

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e
.end method

.method public visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 3

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endFormals()V

    iget-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenParameter:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->seenParameter:Z

    :goto_a
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->returnType:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    :cond_20
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a
.end method

.method public visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endFormals()V

    const-string v0, " extends "

    iput-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->separator:Ljava/lang/String;

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0
.end method

.method public visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_22

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_13
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->startType()V

    return-object p0

    :cond_22
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_2a
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method

.method public visitTypeArgument()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1b

    iget v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->argumentStack:I

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_13
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceSignatureVisitor;->declaration:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->endType()V

    return-void
.end method
