.class Lcom/sun/tools/javac/jvm/Gen$1;
.super Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/Gen;->visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Gen;

.field final val$lockVar:Lcom/sun/tools/javac/jvm/Items$LocalItem;

.field final val$syncEnv:Lcom/sun/tools/javac/comp/Env;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Gen;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/jvm/Items$LocalItem;)V
    .registers 4

    .line 1369
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Gen$1;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$syncEnv:Lcom/sun/tools/javac/comp/Env;

    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$lockVar:Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;-><init>(Lcom/sun/tools/javac/jvm/Gen;)V

    return-void
.end method


# virtual methods
.method gen()V
    .registers 3

    .line 1371
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Gen$1;->genLast()V

    .line 1372
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$syncEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1373
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$syncEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$1;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1374
    return-void

    .line 1372
    :cond_31
    const/4 v0, 0x0

    goto :goto_14
.end method

.method genLast()V
    .registers 3

    .line 1377
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1378
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$lockVar:Lcom/sun/tools/javac/jvm/Items$LocalItem;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 1379
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 1380
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$1;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Gen;->access$000(Lcom/sun/tools/javac/jvm/Gen;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$1;->val$lockVar:Lcom/sun/tools/javac/jvm/Items$LocalItem;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->unlock(I)V

    .line 1382
    :cond_2b
    return-void
.end method
