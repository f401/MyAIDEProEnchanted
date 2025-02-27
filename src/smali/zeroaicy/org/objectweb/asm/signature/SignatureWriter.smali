.class public Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;
.super Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
.source "SignatureWriter.java"


# instance fields
.field private argumentStack:I

.field private hasFormals:Z

.field private hasParameters:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;-><init>(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 78
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    .line 79
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private endArguments()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iget v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 243
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_d
    iget v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    ushr-int/2addr v0, v1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method private endFormals()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    if-eqz v0, :cond_e

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    .line 233
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 222
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 158
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitBaseType(C)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitClassBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
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

    .line 164
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

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

    .line 211
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->endArguments()V

    .line 212
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 140
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
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

    .line 88
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    if-nez v0, :cond_e

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    .line 90
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
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

    .line 173
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->endArguments()V

    .line 174
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method public visitInterface()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-object p0
.end method

.method public visitInterfaceBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 103
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 120
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->endFormals()V

    .line 121
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_11

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    .line 123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    return-object p0
.end method

.method public visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 130
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->endFormals()V

    .line 131
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_e

    .line 132
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 109
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->endFormals()V

    return-object p0
.end method

.method public visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 198
    iget v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    .line 199
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    .line 200
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1a

    .line 203
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_1a
    iget p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-nez p1, :cond_23

    move-object p1, p0

    goto :goto_2a

    :cond_23
    new-instance p1, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;-><init>(Ljava/lang/StringBuilder;)V

    :goto_2a
    return-object p1
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

    .line 186
    iget v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    .line 187
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    .line 188
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_11
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

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

    .line 151
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
