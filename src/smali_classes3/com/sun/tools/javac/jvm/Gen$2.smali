.class Lcom/sun/tools/javac/jvm/Gen$2;
.super Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/Gen;->visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Gen;

.field final val$oldEnv:Lcom/sun/tools/javac/comp/Env;

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

.field final val$tryEnv:Lcom/sun/tools/javac/comp/Env;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Gen;Lcom/sun/tools/javac/tree/JCTree$JCTry;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5

    .line 1401
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iput-object p4, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$oldEnv:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;-><init>(Lcom/sun/tools/javac/jvm/Gen;)V

    return-void
.end method


# virtual methods
.method gen()V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1403
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Gen;->access$100(Lcom/sun/tools/javac/jvm/Gen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v4

    .line 1406
    sget-object v0, Lcom/sun/tools/javac/jvm/Code;->jsrReturnValue:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 1407
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    .line 1408
    new-instance v5, Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v1

    const/16 v6, 0xa8

    invoke-virtual {v1, v6}, Lcom/sun/tools/javac/jvm/Code;->emitJump(I)I

    move-result v6

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-direct {v5, v6, v1, v4}, Lcom/sun/tools/javac/jvm/Code$Chain;-><init>(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$State;)V

    iput-object v5, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1413
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1419
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1412
    goto :goto_0

    .line 1415
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :goto_2
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1416
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tryEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1417
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Gen$2;->genLast()V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1415
    goto :goto_2
.end method

.method genLast()V
    .registers 5

    .line 1422
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$oldEnv:Lcom/sun/tools/javac/comp/Env;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/jvm/Gen;->genStat(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;I)V

    .line 1424
    :cond_0
    return-void
.end method

.method hasFinalizer()Z
    .registers 2

    .line 1427
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$2;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCTry;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
