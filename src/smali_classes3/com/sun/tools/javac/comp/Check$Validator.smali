.class Lcom/sun/tools/javac/comp/Check$Validator;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Validator"
.end annotation


# instance fields
.field env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field isOuter:Z

.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/comp/Env;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 1055
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 1056
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Check$Validator;->env:Lcom/sun/tools/javac/comp/Env;

    .line 1057
    return-void
.end method


# virtual methods
.method checkRaw(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$300(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->RAW:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1167
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 1168
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 1169
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->RAW:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 1171
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1170
    const-string v5, "raw.class.use"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_0
    return-void
.end method

.method public validateTree(Lcom/sun/tools/javac/tree/JCTree;ZZ)V
    .registers 7

    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    :try_start_0
    iput-boolean p3, p0, Lcom/sun/tools/javac/comp/Check$Validator;->isOuter:Z

    .line 1150
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 1151
    if-eqz p2, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check$Validator;->checkRaw(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method public validateTrees(Lcom/sun/tools/javac/util/List;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1160
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/comp/Check$Validator;->validateTree(Lcom/sun/tools/javac/tree/JCTree;ZZ)V

    .line 1160
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1162
    :cond_0
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 6

    .line 1117
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1118
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Check$Validator;->visitSelectInternal(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 1122
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "improperly.formed.type.param.missing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public visitSelectInternal(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 6

    .line 1128
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 1129
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "cant.select.static.class.from.param.type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    goto :goto_0
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 1144
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1066
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 1067
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    .line 1068
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1, v5}, Lcom/sun/tools/javac/comp/Check;->access$000(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1071
    if-eqz v5, :cond_1

    .line 1072
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1073
    iget-object v7, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-ne v7, v5, :cond_0

    .line 1074
    iget-object v7, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v7}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v7

    const-string v8, "not.within.bounds"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v2

    iget-object v10, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v10, v9, v3

    invoke-virtual {v7, v0, v8, v9}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 1077
    goto :goto_0

    .line 1080
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1082
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v5}, Lcom/sun/tools/javac/comp/Check;->access$200(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Names;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->java_lang_Class:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v5, :cond_3

    move-object v5, v0

    move v6, v3

    .line 1086
    :goto_1
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1087
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/Check$Validator;->isOuter:Z

    if-eqz v1, :cond_2

    if-nez v6, :cond_4

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Check$Validator;->validateTree(Lcom/sun/tools/javac/tree/JCTree;ZZ)V

    .line 1090
    iget-object v0, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1091
    iget-object v1, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v0

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, v0

    move v6, v2

    .line 1082
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1087
    goto :goto_2

    .line 1096
    :cond_5
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1097
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "improperly.formed.type.inner.raw.param"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    :cond_6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 1099
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$Validator;->visitSelectInternal(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 1101
    :cond_7
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 3

    .line 1061
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 1062
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 5

    .line 1105
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Check$Validator;->isOuter:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Check$Validator;->validateTrees(Lcom/sun/tools/javac/util/List;ZZ)V

    .line 1106
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$Validator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->checkClassBounds(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 1107
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 5

    .line 1111
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sun/tools/javac/comp/Check$Validator;->isOuter:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/Check$Validator;->validateTree(Lcom/sun/tools/javac/tree/JCTree;ZZ)V

    .line 1113
    :cond_0
    return-void
.end method
