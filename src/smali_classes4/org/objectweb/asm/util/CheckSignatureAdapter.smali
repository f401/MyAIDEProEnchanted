.class public Lorg/objectweb/asm/util/CheckSignatureAdapter;
.super Lorg/objectweb/asm/signature/SignatureVisitor;


# static fields
.field public static final CLASS_SIGNATURE:I = 0x0

.field public static final METHOD_SIGNATURE:I = 0x1

.field public static final TYPE_SIGNATURE:I = 0x2


# instance fields
.field private canBeVoid:Z

.field private state:I

.field private final sv:Lorg/objectweb/asm/signature/SignatureVisitor;

.field private final type:I


# direct methods
.method protected constructor <init>(IILorg/objectweb/asm/signature/SignatureVisitor;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    iput p2, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iput-object p3, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(IILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    const/4 v2, 0x2

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    if-ne v0, v2, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_10
    const/16 v0, 0x40

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    :goto_19
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_1f
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_19
.end method

.method public visitBaseType(C)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_10
    const/16 v0, 0x56

    if-ne p1, v0, :cond_1e

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->canBeVoid:Z

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1e
    const-string v0, "ZCBSIFJD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2d
    const/16 v0, 0x40

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    :cond_3a
    return-void
.end method

.method public visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    const/4 v2, 0x2

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    if-eq v0, v2, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    const/4 v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_13
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_13
.end method

.method public visitClassType(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_10
    const-string v0, "class name"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x80

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public visitEnd()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const/16 v0, 0x100

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    :cond_19
    return-void
.end method

.method public visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_11
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_18
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_11
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x2

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    if-eq v0, v2, :cond_13

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    if-eq v0, v2, :cond_19

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    const-string v0, "formal type parameter"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-string v0, "inner class name"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_11
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_18
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_11
.end method

.method public visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    const/4 v2, 0x2

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_15
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_15
.end method

.method public visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    and-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_11

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    const/16 v0, 0x10

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_1a
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_1a
.end method

.method public visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 5

    const/4 v3, 0x1

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    if-ne v0, v3, :cond_b

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    and-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_11

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    const/16 v0, 0x20

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_1a
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    iput-boolean v3, v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;->canBeVoid:Z

    return-object v1

    :cond_23
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_1a
.end method

.method public visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    if-nez v0, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    const/16 v0, 0x8

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_20

    const/4 v0, 0x0

    :goto_19
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_20
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_19
.end method

.method public visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    const-string v0, "+-="

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    :goto_20
    new-instance v1, Lorg/objectweb/asm/util/CheckSignatureAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/util/CheckSignatureAdapter;-><init>(ILorg/objectweb/asm/signature/SignatureVisitor;)V

    return-object v1

    :cond_27
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    goto :goto_20
.end method

.method public visitTypeArgument()V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    :cond_15
    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_10
    const-string v0, "type variable"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    iput v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->state:I

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckSignatureAdapter;->sv:Lorg/objectweb/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    :cond_22
    return-void
.end method
