.class Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FreeVarCollector"
.end annotation


# instance fields
.field clazz:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field fvs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/sun/tools/javac/code/Symbol;

.field final this$0:Lcom/sun/tools/javac/comp/Lower;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 4

    .line 220
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->clazz:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 222
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 223
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lcom/sun/tools/javac/util/List;

    .line 224
    return-void
.end method

.method private addFreeVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lcom/sun/tools/javac/util/List;

    :goto_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 230
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v1, p1, :cond_d

    .line 232
    :goto_c
    return-void

    .line 229
    :cond_d
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2

    .line 231
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lcom/sun/tools/javac/util/List;

    goto :goto_c
.end method

.method private addFreeVars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 239
    if-eqz v0, :cond_1e

    move-object v1, v0

    .line 240
    :goto_d
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 241
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->addFreeVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 240
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_d

    .line 244
    :cond_1e
    return-void
.end method

.method private visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 255
    .line 256
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_57

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3a

    move-object v0, p1

    .line 257
    :goto_c
    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, v2, :cond_27

    .line 258
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Lower;->proxies:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/comp/Lower;->proxyName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_c

    .line 259
    :cond_27
    if-eqz v0, :cond_3b

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_3b

    .line 260
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 261
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 262
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->addFreeVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 270
    :cond_3a
    :goto_3a
    return-void

    .line 265
    :cond_3b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, p1, :cond_3a

    .line 267
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_3a

    :cond_57
    move-object v0, p1

    goto :goto_c
.end method


# virtual methods
.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 4

    .line 301
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_4a

    .line 302
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->addFreeVars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 303
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 304
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 305
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 306
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_4a

    .line 308
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    .line 310
    :cond_4a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V

    .line 311
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/comp/Lower;->access$002(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    .line 251
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    .line 252
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 4

    .line 276
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 277
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->addFreeVars(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 278
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v1, :cond_26

    .line 279
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_26

    .line 281
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    .line 282
    :cond_26
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V

    .line 283
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 290
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_18

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_35

    :cond_18
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->clazz:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_35

    .line 293
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->outerThisStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    .line 294
    :cond_35
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 295
    return-void
.end method
