.class public Lcom/sun/tools/javac/code/Type$MethodType;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/ExecutableType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodType"
.end annotation


# instance fields
.field public argtypes:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field public restype:Lcom/sun/tools/javac/code/Type;

.field public thrown:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")V"
        }
    .end annotation

    .line 914
    const/16 v0, 0xc

    invoke-direct {p0, v0, p4}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 915
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 916
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    .line 917
    iput-object p3, p0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    .line 918
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Type$Visitor",
            "<TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 922
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1009
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
    .registers 2

    .line 1001
    const/4 v0, 0x0

    return-object v0
.end method

.method public asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;
    .registers 1

    .line 986
    return-object p0
.end method

.method public complete()V
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 990
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->complete()V

    .line 989
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3

    .line 991
    :cond_14
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->complete()V

    .line 992
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_1c
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 993
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->complete()V

    .line 992
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1c

    .line 994
    :cond_2d
    return-void
.end method

.method public contains(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 983
    if-eq p1, p0, :cond_12

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/code/Type$MethodType;->contains(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v3, 0x0

    .line 935
    if-ne p0, p1, :cond_5

    .line 936
    const/4 v0, 0x1

    .line 950
    :goto_4
    return v0

    .line 937
    :cond_5
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;

    if-nez v0, :cond_b

    move v0, v3

    .line 938
    goto :goto_4

    .line 939
    :cond_b
    check-cast p1, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 940
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 941
    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 942
    :goto_12
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 943
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v4, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v3

    .line 944
    goto :goto_4

    .line 945
    :cond_2c
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 946
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_12

    .line 948
    :cond_32
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3e
    move v0, v3

    .line 949
    goto :goto_4

    .line 950
    :cond_40
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 1005
    sget-object v0, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getParameterTypes()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .registers 2

    .line 904
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$MethodType;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 963
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getReturnType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 904
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$MethodType;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getThrownTypes()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getThrownTypes()Ljava/util/List;
    .registers 2

    .line 904
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$MethodType;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            ">;"
        }
    .end annotation

    .line 997
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeVariables()Ljava/util/List;
    .registers 2

    .line 904
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$MethodType;->getTypeVariables()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 954
    const/16 v2, 0xc

    .line 955
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 956
    :goto_5
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_18

    .line 958
    shl-int/lit8 v2, v2, 0x5

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 957
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5

    .line 959
    :cond_18
    shl-int/lit8 v0, v2, 0x5

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isErroneous()Z
    .registers 2

    .line 967
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 968
    invoke-static {v0}, Lcom/sun/tools/javac/code/Type$MethodType;->isErroneous(Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_14

    .line 969
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 967
    :goto_13
    return v0

    .line 969
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 973
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/code/Type$MethodType;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 974
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Type$Mapping;->apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 975
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/code/Type$MethodType;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 976
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    if-ne v1, v0, :cond_1f

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    if-ne v2, v0, :cond_1f

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    if-ne v3, v0, :cond_1f

    .line 979
    :goto_1e
    return-object p0

    :cond_1f
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Type$MethodType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p0, v0

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
