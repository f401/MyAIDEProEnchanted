.class public Lorg/codehaus/groovy/cli/GroovyPosixParser;
.super Lorg/apache/commons/cli/Parser;


# instance fields
.field private tokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/cli/Parser;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/cli/GroovyPosixParser;->tokens:Ljava/util/List;

    return-void
.end method
