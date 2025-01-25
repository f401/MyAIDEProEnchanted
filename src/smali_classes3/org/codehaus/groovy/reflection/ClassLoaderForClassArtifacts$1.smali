.class Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:[B

.field final FH:Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;

.field final j6:Ljava/lang/String;


# virtual methods
.method public run()Ljava/lang/Class;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts$1;->FH:Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts$1;->j6:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts$1;->DW:[B

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts;->j6(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassLoaderForClassArtifacts$1;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
