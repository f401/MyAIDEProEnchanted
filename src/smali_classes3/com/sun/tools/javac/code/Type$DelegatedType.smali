.class public abstract Lcom/sun/tools/javac/code/Type$DelegatedType;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelegatedType"
.end annotation


# instance fields
.field public qtype:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>(ILcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 1139
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1140
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 1141
    return-void
.end method


# virtual methods
.method public allparams()Lcom/sun/tools/javac/util/List;
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

    .line 1148
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

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

    .line 1145
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

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

    .line 1147
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
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

    .line 1143
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBound()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1149
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public isErroneous()Z
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$DelegatedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
