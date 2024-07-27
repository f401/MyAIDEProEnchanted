.class Lcom/sun/tools/javac/jvm/ClassReader$1;
.super Lcom/sun/tools/javac/code/Type$ClassType;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/ClassReader;->classSigToType()Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field completed:Z

.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 6

    .line 784
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p2, p3, p4}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->completed:Z

    return-void
.end method


# virtual methods
.method public getEnclosingType()Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 789
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->completed:Z

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->completed:Z

    .line 791
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->complete()V

    .line 792
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 793
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_2

    .line 794
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 796
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 798
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 800
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    .line 810
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 802
    :cond_1
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$1;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0, v2, v1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 807
    :cond_2
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-super {p0, v0}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public bridge synthetic getEnclosingType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 784
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassReader$1;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public setEnclosingType(Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
