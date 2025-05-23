.class public abstract Lcom/google/common/reflect/TypeParameter;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeParameter;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 44
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const-string v2, "%s should be a type variable."

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 45
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    iput-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 46
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 55
    instance-of v0, p1, Lcom/google/common/reflect/TypeParameter;

    if-eqz v0, :cond_f

    .line 56
    check-cast p1, Lcom/google/common/reflect/TypeParameter;

    .line 57
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iget-object v1, p1, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final hashCode()I
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
