.class public abstract Lorg/objectweb/asm/tree/analysis/Interpreter;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/tree/analysis/Interpreter;->api:I

    return-void
.end method


# virtual methods
.method public abstract binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
.end method

.method public abstract naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;
.end method

.method public abstract returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method
