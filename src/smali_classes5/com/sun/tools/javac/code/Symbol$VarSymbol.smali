.class public Lcom/sun/tools/javac/code/Symbol$VarSymbol;
.super Lcom/sun/tools/javac/code/Symbol;
.source "Symbol.java"

# interfaces
.implements Ljavax/lang/model/element/VariableElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarSymbol"
.end annotation


# instance fields
.field public adr:I

.field private data:Ljava/lang/Object;

.field public pos:I


# direct methods
.method public constructor <init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 15

    const/4 v7, -0x1

    .line 923
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symbol;-><init>(IJLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 907
    iput v7, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 918
    iput v7, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 924
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$Visitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1023
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/ElementVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 964
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/ElementVisitor;->visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    .line 942
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p2, p1, p0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    return-object v1
.end method

.method public bridge synthetic asType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 903
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 9

    .line 929
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 930
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput v0, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 931
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    iput v0, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 932
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    .line 934
    return-object v1
.end method

.method public bridge synthetic clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 903
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 903
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConstValue()Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x0

    .line 1000
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v2, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v2, :cond_f

    :cond_d
    move-object v0, v1

    .line 1014
    :goto_e
    return-object v0

    .line 1003
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1f

    .line 1006
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 1007
    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    .line 1009
    :try_start_19
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_22

    .line 1014
    :cond_1f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    goto :goto_e

    .line 1010
    :catch_22
    move-exception v0

    .line 1011
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getConstantValue()Ljava/lang/Object;
    .registers 3

    .line 968
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->decode(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 903
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/element/ElementKind;
    .registers 7

    const-wide/16 v4, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    .line 947
    const-wide v2, 0x200000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 948
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->isExceptionParameter()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 949
    sget-object v0, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    .line 959
    :goto_18
    return-object v0

    .line 951
    :cond_19
    sget-object v0, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    goto :goto_18

    .line 952
    :cond_1c
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_26

    .line 953
    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    goto :goto_18

    .line 954
    :cond_26
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_38

    .line 955
    :cond_35
    sget-object v0, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    goto :goto_18

    .line 956
    :cond_38
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 957
    sget-object v0, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    goto :goto_18

    .line 959
    :cond_41
    sget-object v0, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    goto :goto_18
.end method

.method public bridge synthetic getSimpleName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 903
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public isExceptionParameter()Z
    .registers 3

    .line 991
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isResourceVariable()Z
    .registers 3

    .line 995
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 3

    .line 1018
    instance-of v0, p1, Lcom/sun/tools/javac/comp/Env;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, p0}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    .line 1019
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->data:Ljava/lang/Object;

    .line 1020
    return-void
.end method

.method public setLazyConstValue(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/comp/Attr;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")V"
        }
    .end annotation

    .line 975
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;-><init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    .line 980
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
