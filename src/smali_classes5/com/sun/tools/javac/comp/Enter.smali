.class public Lcom/sun/tools/javac/comp/Enter;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Enter.java"


# static fields
.field protected static final enterKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Enter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field annotate:Lcom/sun/tools/javac/comp/Annotate;

.field chk:Lcom/sun/tools/javac/comp/Check;

.field protected env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field fileManager:Ljavax/tools/JavaFileManager;

.field lint:Lcom/sun/tools/javac/code/Lint;

.field log:Lcom/sun/tools/javac/util/Log;

.field make:Lcom/sun/tools/javac/tree/TreeMaker;

.field memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

.field names:Lcom/sun/tools/javac/util/Names;

.field pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

.field private predefClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

.field reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field result:Lcom/sun/tools/javac/code/Type;

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field private final todo:Lcom/sun/tools/javac/comp/Todo;

.field typeEnvs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field types:Lcom/sun/tools/javac/code/Types;

.field uncompleted:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Enter;->enterKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 9

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    .line 145
    sget-object v0, Lcom/sun/tools/javac/comp/Enter;->enterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 147
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    .line 148
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 149
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 150
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 151
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 152
    invoke-static {p1}, Lcom/sun/tools/javac/comp/MemberEnter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 153
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->types:Lcom/sun/tools/javac/code/Types;

    .line 154
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Annotate;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 155
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 156
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->names:Lcom/sun/tools/javac/util/Names;

    .line 158
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 159
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->predefClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 161
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 162
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Todo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Todo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->todo:Lcom/sun/tools/javac/comp/Todo;

    .line 163
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->fileManager:Ljavax/tools/JavaFileManager;

    .line 165
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->get(Lcom/sun/tools/javac/util/Options;)Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    .line 167
    return-void
.end method

.method private static classNameMatchesFileName(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/comp/Env;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    .line 459
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v1, v2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;
    .registers 2

    .line 138
    sget-object v0, Lcom/sun/tools/javac/comp/Enter;->enterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Enter;

    .line 139
    if-nez v0, :cond_f

    .line 140
    new-instance v0, Lcom/sun/tools/javac/comp/Enter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Enter;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 141
    :cond_f
    return-object v0
.end method


# virtual methods
.method classEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 281
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 283
    :try_start_2
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 284
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 285
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;
    :try_end_9
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_9} :catch_c
    .catchall {:try_start_2 .. :try_end_9} :catchall_1a

    .line 289
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 287
    :goto_b
    return-object v0

    .line 286
    :catch_c
    move-exception v0

    .line 287
    :try_start_d
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    move-result-object v0

    .line 289
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    goto :goto_b

    :catchall_1a
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 290
    throw v0
.end method

.method classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 297
    :goto_5
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 298
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_18

    .line 300
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 297
    :cond_18
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_5

    .line 302
    :cond_1b
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public classEnv(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 220
    iput-object p1, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 221
    iput-object p2, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 222
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 223
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 225
    return-object v1
.end method

.method public complete(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->enterStart()V

    .line 505
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    .line 506
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    .line 510
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    .line 513
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    if-eqz v0, :cond_72

    .line 514
    :goto_1e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 515
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 516
    if-eqz p2, :cond_34

    if-eq p2, v0, :cond_34

    if-nez v1, :cond_41

    .line 517
    :cond_34
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_38

    goto :goto_1e

    .line 535
    :catchall_38
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    .line 536
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v1}, Lcom/sun/tools/javac/comp/Annotate;->enterDone()V

    .line 537
    throw v0

    .line 520
    :cond_41
    :try_start_41
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1e

    .line 525
    :cond_45
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 526
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Scope$StarImportScope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-nez v3, :cond_49

    .line 527
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 528
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Enter;->topLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v4

    .line 529
    iget-object v5, p0, Lcom/sun/tools/javac/comp/Enter;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-virtual {v5, v0, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 530
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_38

    goto :goto_49

    .line 535
    :cond_72
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    .line 536
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Annotate;->enterDone()V

    .line 537
    return-void
.end method

.method protected duplicateClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 8

    .line 465
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "duplicate.class"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method enterScope(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Scope;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Scope;"
        }
    .end annotation

    .line 257
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 258
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 257
    :goto_11
    return-object v0

    .line 259
    :cond_12
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    goto :goto_11
.end method

.method public getClassEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    move-object v1, v2

    .line 184
    :goto_5
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v0, :cond_11

    .line 185
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    move-object v1, v0

    goto :goto_5

    .line 186
    :cond_11
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 187
    return-object v2
.end method

.method public getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    return-object v0
.end method

.method public getTopLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v1, Lcom/sun/tools/javac/comp/Env;

    new-instance v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-direct {v0}, Lcom/sun/tools/javac/comp/AttrContext;-><init>()V

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/comp/Env;-><init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    .line 244
    iput-object p1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 245
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->predefClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 246
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 247
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->lint:Lcom/sun/tools/javac/code/Lint;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 248
    return-object v1
.end method

.method public main(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Enter;->complete(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 496
    return-void
.end method

.method topLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v1, Lcom/sun/tools/javac/comp/Env;

    new-instance v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-direct {v0}, Lcom/sun/tools/javac/comp/AttrContext;-><init>()V

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/comp/Env;-><init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    .line 233
    iput-object p1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 234
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->predefClassDef:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 235
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ImportScope;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/code/Scope$ImportScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    .line 236
    new-instance v0, Lcom/sun/tools/javac/code/Scope$StarImportScope;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/code/Scope$StarImportScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    .line 237
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 238
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->lint:Lcom/sun/tools/javac/code/Lint;

    iput-object v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 239
    return-object v1
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 14

    .line 368
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Enter;->enterScope(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    .line 371
    iget v0, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8c

    move-object v0, v6

    .line 373
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-object v1, v0

    .line 374
    :goto_19
    if-eqz v1, :cond_2b

    iget v3, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 375
    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v8, 0x800000

    or-long/2addr v4, v8

    iput-wide v4, v1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 374
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_19

    .line 376
    :cond_2b
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v3, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    .line 377
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Scope;->enterIfAbsent(Lcom/sun/tools/javac/code/Symbol;)V

    .line 378
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x1

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-static {v4, v0}, Lcom/sun/tools/javac/comp/Enter;->classNameMatchesFileName(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 379
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "class.public.should.be.in.file"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    aput-object v8, v5, v7

    invoke-virtual {v0, v1, v3, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_62
    :goto_62
    iput-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 405
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    iget-object v1, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 406
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/comp/Enter;->duplicateClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 407
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    check-cast v6, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    .line 408
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 453
    :goto_8b
    return-void

    .line 383
    :cond_8c
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 384
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/tools/javac/comp/Check;->checkUniqueClassName(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    goto :goto_8b

    .line 388
    :cond_a6
    iget v0, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cb

    .line 390
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    move-object v0, v6

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v3, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    .line 391
    iget-wide v0, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x200

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_62

    .line 392
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v8, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x9

    or-long/2addr v8, v10

    iput-wide v8, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_62

    .line 396
    :cond_cb
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1, v6}, Lcom/sun/tools/javac/jvm/ClassReader;->defineClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/comp/Check;->localClassName(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 398
    iget-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 399
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/tools/javac/comp/Check;->checkTransparentClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Scope;)V

    goto/16 :goto_62

    .line 411
    :cond_f6
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    iget-object v1, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 416
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Enter;->classEnv(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v7

    .line 417
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 421
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Check;->checkFlags(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 422
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    iput-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 423
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v4}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 425
    iget-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 426
    iget v1, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_163

    iget-wide v2, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v8, 0x8

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_163

    .line 432
    :goto_145
    iget v1, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_159

    iget-wide v2, v6, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x8

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_159

    .line 434
    iget-object v6, v6, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_145

    .line 432
    :cond_159
    iget v1, v6, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_163

    .line 437
    iget-object v1, v6, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type$ClassType;->setEnclosingType(Lcom/sun/tools/javac/code/Type;)V

    .line 426
    :cond_163
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v7}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 446
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isLocal()Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->uncompleted:Lcom/sun/tools/javac/util/ListBuffer;

    if-eqz v0, :cond_178

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 450
    :cond_178
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v7}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    .line 452
    iget-object v0, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_8b
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 307
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v5

    .line 309
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    const-string v1, "package-info"

    sget-object v6, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v1, v6}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v6

    .line 311
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_7e

    .line 312
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->fullName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 313
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->pkginfoOpt:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    sget-object v1, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ALWAYS:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    if-ne v0, v1, :cond_11a

    .line 314
    :cond_35
    if-eqz v6, :cond_69

    move v1, v3

    .line 324
    :goto_38
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->complete()V

    .line 325
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Enter;->topLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v7

    .line 328
    if-eqz v6, :cond_106

    .line 329
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 330
    if-nez v0, :cond_86

    .line 331
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_56
    :goto_56
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    :goto_58
    if-eqz v0, :cond_cb

    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v3, :cond_cb

    .line 348
    iget-wide v8, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v10, 0x800000

    or-long/2addr v8, v10

    iput-wide v8, v0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 347
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_58

    .line 317
    :cond_69
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v7, "pkg.annotations.sb.in.package-info.java"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_38

    .line 322
    :cond_7e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move v1, v2

    goto :goto_38

    .line 333
    :cond_86
    iget-object v6, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 334
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->fileManager:Ljavax/tools/JavaFileManager;

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    iget-object v9, v6, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-interface {v0, v8, v9}, Ljavax/tools/JavaFileManager;->isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 335
    iget-object v8, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_c9

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 336
    :goto_a0
    iget-object v9, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 335
    const-string v10, "pkg-info.already.seen"

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v9, v11, v2

    invoke-virtual {v8, v0, v10, v11}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    if-nez v1, :cond_c1

    iget-object v0, v6, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    if-eqz v0, :cond_56

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    .line 341
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 342
    :cond_c1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_c9
    move-object v0, v4

    .line 336
    goto :goto_a0

    .line 350
    :cond_cb
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->package_info:Lcom/sun/tools/javac/util/Name;

    .line 351
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Enter;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 353
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    iput-object v0, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 354
    iput-object v4, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 355
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 356
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 358
    :cond_106
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v7}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    .line 359
    if-eqz v1, :cond_112

    .line 360
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/comp/Todo;->append(Lcom/sun/tools/javac/comp/Env;)V

    .line 362
    :cond_112
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 363
    iput-object v4, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    .line 364
    return-void

    :cond_11a
    move v1, v2

    goto/16 :goto_38
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    .line 489
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 7

    .line 474
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_31

    .line 475
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    move-object v1, v0

    .line 477
    :goto_9
    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    .line 478
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Enter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/tools/javac/comp/Check;->checkUnique(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 479
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 481
    :cond_2e
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Enter;->result:Lcom/sun/tools/javac/code/Type;

    .line 482
    return-void

    .line 476
    :cond_31
    new-instance v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Enter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Enter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, v2, v0, v3}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_9
.end method
