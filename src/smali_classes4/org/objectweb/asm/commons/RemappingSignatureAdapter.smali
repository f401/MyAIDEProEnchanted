.class public Lorg/objectweb/asm/commons/RemappingSignatureAdapter;
.super Lorg/objectweb/asm/signature/SignatureVisitor;


# instance fields
.field private className:Ljava/lang/String;

.field private final remapper:Lorg/objectweb/asm/commons/Remapper;

.field private final v:Lorg/objectweb/asm/signature/SignatureVisitor;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/signature/SignatureVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    iput-object p3, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/signature/SignatureVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitBaseType(C)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return-void
.end method

.method public visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    return-void
.end method

.method public visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x24

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_46
    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    return-void

    :cond_50
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_46
.end method

.method public visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;->v:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    return-void
.end method
