.class public Lorg/codehaus/groovy/control/customizers/builder/CompilerCustomizationBuilder;
.super Lgroovy/util/FactoryBuilderSupport;


# static fields
.field public static __timeStamp:J

.field public static __timeStamp__239_neverHappen1402495628015:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/builder/CompilerCustomizationBuilder;->j6()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/builder/CompilerCustomizationBuilder;->__timeStamp__239_neverHappen1402495628015:J

    const-wide v0, 0x1468b40f2efL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/builder/CompilerCustomizationBuilder;->__timeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgroovy/util/FactoryBuilderSupport;-><init>()V

    invoke-direct {p0}, Lorg/codehaus/groovy/control/customizers/builder/CompilerCustomizationBuilder;->DW()V

    return-void
.end method

.method private DW()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;-><init>()V

    const-string v1, "ast"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/CustomizersFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/CustomizersFactory;-><init>()V

    const-string v1, "customizers"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/ImportCustomizerFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/ImportCustomizerFactory;-><init>()V

    const-string v1, "imports"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/InlinedASTCustomizerFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/InlinedASTCustomizerFactory;-><init>()V

    const-string v1, "inline"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/SecureASTCustomizerFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/SecureASTCustomizerFactory;-><init>()V

    const-string v1, "secureAst"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    new-instance v0, Lorg/codehaus/groovy/control/customizers/builder/SourceAwareCustomizerFactory;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/customizers/builder/SourceAwareCustomizerFactory;-><init>()V

    const-string v1, "source"

    invoke-virtual {p0, v1, v0}, Lgroovy/util/FactoryBuilderSupport;->registerFactory(Ljava/lang/String;Lgroovy/util/Factory;)V

    return-void
.end method

.method public static synthetic j6()V
    .registers 0

    return-void
.end method
