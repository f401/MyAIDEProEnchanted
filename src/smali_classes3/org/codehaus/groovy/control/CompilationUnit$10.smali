.class Lorg/codehaus/groovy/control/CompilationUnit$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/codehaus/groovy/control/SourceUnit;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Lorg/codehaus/groovy/control/CompilationUnit;

.field j6:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit$10;->j6:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/control/CompilationUnit$10;->next()Lorg/codehaus/groovy/control/SourceUnit;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/codehaus/groovy/control/SourceUnit;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit$10;->j6:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/groovy/control/CompilationUnit$10;->DW:Lorg/codehaus/groovy/control/CompilationUnit;

    iget-object v1, v1, Lorg/codehaus/groovy/control/CompilationUnit;->Zo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/control/SourceUnit;

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
