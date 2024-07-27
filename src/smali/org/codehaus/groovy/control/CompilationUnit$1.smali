.class Lorg/codehaus/groovy/control/CompilationUnit$1;
.super Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/control/CompilationUnit;-><init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Ljava/security/CodeSource;Lgroovy/lang/GroovyClassLoader;Lgroovy/lang/GroovyClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/control/CompilationUnit;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/control/CompilationUnit;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/CompilationUnit$1;->j6:Lorg/codehaus/groovy/control/CompilationUnit;

    invoke-direct {p0}, Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;-><init>()V

    return-void
.end method
