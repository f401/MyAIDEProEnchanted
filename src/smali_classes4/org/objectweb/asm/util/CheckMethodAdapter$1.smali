.class Lorg/objectweb/asm/util/CheckMethodAdapter$1;
.super Lorg/objectweb/asm/tree/MethodNode;


# instance fields
.field final val$cmv:Lorg/objectweb/asm/MethodVisitor;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 8

    iput-object p7, p0, Lorg/objectweb/asm/util/CheckMethodAdapter$1;->val$cmv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct/range {p0 .. p6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .registers 6

    new-instance v1, Lorg/objectweb/asm/tree/analysis/Analyzer;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicVerifier;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;-><init>()V

    invoke-direct {v1, v0}, Lorg/objectweb/asm/tree/analysis/Analyzer;-><init>(Lorg/objectweb/asm/tree/analysis/Interpreter;)V

    :try_start_a
    const-string v0, "dummy"

    invoke-virtual {v1, v0, p0}, Lorg/objectweb/asm/tree/analysis/Analyzer;->analyze(Ljava/lang/String;Lorg/objectweb/asm/tree/MethodNode;)[Lorg/objectweb/asm/tree/analysis/Frame;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_15

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckMethodAdapter$1;->val$cmv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter$1;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    return-void

    :catch_15
    move-exception v0

    instance-of v2, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v2, :cond_2a

    iget v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter$1;->maxLocals:I

    if-nez v2, :cond_2a

    iget v2, p0, Lorg/objectweb/asm/util/CheckMethodAdapter$1;->maxStack:I

    if-nez v2, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Data flow checking option requires valid, non zero maxLocals and maxStack values."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-static {p0, v1, v3}, Lorg/objectweb/asm/util/CheckClassAdapter;->printAnalyzerResult(Lorg/objectweb/asm/tree/MethodNode;Lorg/objectweb/asm/tree/analysis/Analyzer;Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
