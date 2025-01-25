.class abstract Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;
.super Lcom/sun/tools/javac/code/Type$DelegatedType;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UninferredMethodType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;
    }
.end annotation


# instance fields
.field final tvars:Lcom/sun/tools/javac/util/List;
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
.method public constructor <init>(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$MethodType;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 522
    const/16 v0, 0xc

    new-instance v1, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type$MethodType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Type$DelegatedType;-><init>(ILcom/sun/tools/javac/code/Type;)V

    .line 523
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->tvars:Lcom/sun/tools/javac/util/List;

    .line 524
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v0

    new-instance v1, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, p0, p2, v2}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;-><init>(Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    .line 525
    return-void
.end method


# virtual methods
.method public asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v0

    return-object v0
.end method

.method abstract check(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Types;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation
.end method

.method abstract getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end method

.method instantiateReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Types;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p3, v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 541
    new-instance v1, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p3, v2, v3, p2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 543
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->check(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)V

    .line 544
    return-void
.end method

.method public map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
