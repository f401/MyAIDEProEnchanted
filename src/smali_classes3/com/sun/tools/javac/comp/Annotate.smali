.class public Lcom/sun/tools/javac/comp/Annotate;
.super Ljava/lang/Object;
.source "Annotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Annotate$Annotator;
    }
.end annotation


# static fields
.field protected static final annotateKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Annotate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final attr:Lcom/sun/tools/javac/comp/Attr;

.field final cfolder:Lcom/sun/tools/javac/comp/ConstFold;

.field final chk:Lcom/sun/tools/javac/comp/Check;

.field private enterCount:I

.field final log:Lcom/sun/tools/javac/util/Log;

.field final make:Lcom/sun/tools/javac/tree/TreeMaker;

.field final names:Lcom/sun/tools/javac/util/Names;

.field q:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/comp/Annotate$Annotator;",
            ">;"
        }
    .end annotation
.end field

.field final rs:Lcom/sun/tools/javac/comp/Resolve;

.field final syms:Lcom/sun/tools/javac/code/Symtab;

.field final types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Annotate;->annotateKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    .line 83
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->q:Lcom/sun/tools/javac/util/ListBuffer;

    .line 65
    sget-object v0, Lcom/sun/tools/javac/comp/Annotate;->annotateKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 66
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 67
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 68
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    .line 69
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 70
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->names:Lcom/sun/tools/javac/util/Names;

    .line 71
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->rs:Lcom/sun/tools/javac/comp/Resolve;

    .line 72
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->types:Lcom/sun/tools/javac/code/Types;

    .line 73
    invoke-static {p1}, Lcom/sun/tools/javac/comp/ConstFold;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/ConstFold;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    .line 74
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 75
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;
    .registers 2

    .line 48
    sget-object v0, Lcom/sun/tools/javac/comp/Annotate;->annotateKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Annotate;

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sun/tools/javac/comp/Annotate;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Annotate;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public earlier(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->q:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 91
    return-void
.end method

.method enterAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute$Compound;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Attribute$Compound;"
        }
    .end annotation

    .line 140
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/sun/tools/javac/comp/Check;->checkType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    .line 143
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    .line 187
    :goto_1
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1, p3}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    .line 147
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v3, "not.annotation.type"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    .line 151
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Annotate;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Annotate;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->value:Lcom/sun/tools/javac/util/Name;

    .line 154
    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 156
    :cond_3
    new-instance v11, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v11}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object v10, v1

    .line 158
    :goto_2
    invoke-virtual {v10}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, v10, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 160
    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_4

    .line 161
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.value.must.be.name.value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :goto_3
    iget-object v0, v10, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v10, v0

    goto :goto_2

    :cond_4
    move-object v8, v7

    .line 164
    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 165
    iget-object v0, v8, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_5

    .line 166
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.value.must.be.name.value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 169
    :cond_5
    iget-object v0, v8, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v9, v0

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 170
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v9, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    .line 174
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 170
    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 176
    iput-object v0, v9, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 177
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v9, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    .line 178
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v1, v2, :cond_6

    .line 179
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "no.annotation.member"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v9, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_6
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 181
    iget-object v2, v8, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v2, p3}, Lcom/sun/tools/javac/comp/Annotate;->enterAttributeValue(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v2

    .line 182
    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_7

    .line 183
    new-instance v3, Lcom/sun/tools/javac/util/Pair;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {v3, v0, v2}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 182
    :cond_7
    iput-object v1, v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_3

    .line 187
    :cond_8
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v11}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    goto/16 :goto_1
.end method

.method enterAttributeValue(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Attribute;"
        }
    .end annotation

    const-wide/16 v8, 0x4000

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 197
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->complete()V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 205
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 267
    :goto_0
    return-object v0

    .line 213
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_4

    .line 214
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.value.must.be.class.literal"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 221
    :cond_3
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Class;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v2, p2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Class;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    .line 226
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.value.must.be.annotation"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p1, v0, Lcom/sun/tools/javac/code/Symtab;->errorType:Lcom/sun/tools/javac/code/Type;

    .line 229
    :cond_5
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/tools/javac/comp/Annotate;->enterAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_6
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 232
    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_10

    .line 233
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 234
    const/4 v1, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    .line 236
    :goto_1
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 237
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_7

    .line 238
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v2, "new.not.allowed.in.annotation"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 241
    :cond_7
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 242
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v4, v1, p3}, Lcom/sun/tools/javac/comp/Annotate;->enterAttributeValue(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 242
    iget-object v1, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v1

    goto :goto_2

    .line 247
    :cond_8
    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 248
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Array;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    new-array v0, v0, [Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Attribute;

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/code/Attribute$Array;-><init>(Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Attribute;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 251
    :cond_9
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 252
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    .line 253
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 254
    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_a

    .line 256
    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->nonstaticSelect(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 258
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v8

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "enum.annotation.must.be.enum.constant"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 262
    :cond_b
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 263
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Enum;

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/code/Attribute$Enum;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 265
    :cond_c
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_d

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.value.not.allowable.type"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_d
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v1, p2, p3, p1}, Lcom/sun/tools/javac/comp/Attr;->attribExpr(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 206
    :cond_e
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 207
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "attribute.value.must.be.constant"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 210
    :cond_f
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->cfolder:Lcom/sun/tools/javac/comp/ConstFold;

    invoke-virtual {v1, v0, p1}, Lcom/sun/tools/javac/comp/ConstFold;->coerce(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 211
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Constant;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/code/Attribute$Constant;-><init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Annotate;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "cant.resolve"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v5}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Error;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Attribute$Error;-><init>(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    :cond_10
    move-object v0, p2

    goto/16 :goto_1
.end method

.method public enterDone()V
    .registers 2

    .line 100
    iget v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    .line 101
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    .line 102
    return-void
.end method

.method public enterStart()V
    .registers 2

    .line 95
    iget v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    .line 96
    return-void
.end method

.method public flush()V
    .registers 3

    .line 105
    iget v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    .line 108
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->q:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->q:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Annotate$Annotator;

    invoke-interface {v0}, Lcom/sun/tools/javac/comp/Annotate$Annotator;->enterAnnotation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    .line 112
    throw v0

    .line 111
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Annotate;->enterCount:I

    goto :goto_0
.end method

.method public later(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Annotate;->q:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 87
    return-void
.end method
