.class public abstract Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
.super Ljava/lang/Object;
.source "SignatureVisitor.java"


# static fields
.field public static final EXTENDS:C = '+'

.field public static final INSTANCEOF:C = '='

.field public static final SUPER:C = '-'


# instance fields
.field protected final api:I


# direct methods
.method protected constructor <init>(I)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x10a0000

    if-ne p1, v0, :cond_20

    goto :goto_35

    .line 82
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported api "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_35
    :goto_35
    iput p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->api:I

    return-void
.end method


# virtual methods
.method public visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitBaseType(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    return-void
.end method

.method public visitClassBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public visitEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public visitInterface()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitInterfaceBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 1

    return-object p0
.end method

.method public visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;
    .registers 2

    return-object p0
.end method

.method public visitTypeArgument()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
