.class public Lorg/objectweb/asm/tree/analysis/AnalyzerException;
.super Ljava/lang/Exception;


# instance fields
.field public final node:Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;->node:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V
    .registers 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p2, :cond_25

    const-string v0, "Expected "

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;->node:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ": expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;->node:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method
