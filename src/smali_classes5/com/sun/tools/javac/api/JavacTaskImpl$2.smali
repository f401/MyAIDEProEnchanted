.class Lcom/sun/tools/javac/api/JavacTaskImpl$2;
.super Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;
.source "JavacTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/api/JavacTaskImpl;->generate(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;

.field final val$results:Lcom/sun/tools/javac/util/ListBuffer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/JavacTaskImpl;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 3

    .line 429
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$2;->this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;

    iput-object p2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$2;->val$results:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;-><init>(Lcom/sun/tools/javac/api/JavacTaskImpl;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$2;->this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-static {v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->access$000(Lcom/sun/tools/javac/api/JavacTaskImpl;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$2;->this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-static {v1}, Lcom/sun/tools/javac/api/JavacTaskImpl;->access$000(Lcom/sun/tools/javac/api/JavacTaskImpl;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v1

    invoke-static {p1}, Lcom/sun/tools/javac/util/ListBuffer;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$2;->val$results:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;Ljava/util/Queue;)V

    .line 432
    return-void
.end method
