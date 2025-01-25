.class Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setLazyConstValue(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

.field final val$attr:Lcom/sun/tools/javac/comp/Attr;

.field final val$env:Lcom/sun/tools/javac/comp/Env;

.field final val$initializer:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 5

    .line 975
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->this$0:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object p2, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$attr:Lcom/sun/tools/javac/comp/Attr;

    iput-object p3, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$env:Lcom/sun/tools/javac/comp/Env;

    iput-object p4, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$initializer:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5

    .line 977
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->val$initializer:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symbol$VarSymbol$1;->this$0:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Attr;->attribLazyConstantValue(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
