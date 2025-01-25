.class public Lcom/sun/tools/javac/comp/MemberEnter;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "MemberEnter.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;
    }
.end annotation


# static fields
.field static final checkClash:Z = true

.field protected static final memberEnterKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/MemberEnter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotate:Lcom/sun/tools/javac/comp/Annotate;

.field private final attr:Lcom/sun/tools/javac/comp/Attr;

.field private final chk:Lcom/sun/tools/javac/comp/Check;

.field completionEnabled:Z

.field private final deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

.field private final diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field private final enter:Lcom/sun/tools/javac/comp/Enter;

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

.field halfcompleted:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field isFirst:Z

.field private final log:Lcom/sun/tools/javac/util/Log;

.field private final make:Lcom/sun/tools/javac/tree/TreeMaker;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private final reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field private final skipAnnotations:Z

.field private final syms:Lcom/sun/tools/javac/code/Symtab;

.field private final target:Lcom/sun/tools/javac/jvm/Target;

.field private final todo:Lcom/sun/tools/javac/comp/Todo;

.field private final types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnterKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 112
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->halfcompleted:Lcom/sun/tools/javac/util/ListBuffer;

    .line 117
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->isFirst:Z

    .line 123
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    .line 90
    sget-object v0, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 91
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    .line 92
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 93
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    .line 94
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 95
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 96
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 97
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 98
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 99
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Todo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Todo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->todo:Lcom/sun/tools/javac/comp/Todo;

    .line 100
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Annotate;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    .line 101
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    .line 102
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 103
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 104
    invoke-static {p1}, Lcom/sun/tools/javac/code/DeferredLintHandler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 105
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 106
    const-string v1, "skipAnnotations"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->skipAnnotations:Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/comp/Check;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/MemberEnter;->enterAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/MemberEnter;->enterDefaultValue(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Symtab;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Names;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    return-object v0
.end method

.method private addEnumMembers(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    new-instance v1, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v3}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 433
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 434
    const-wide/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->values:Lcom/sun/tools/javac/util/Name;

    .line 437
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 438
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 439
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 434
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 445
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 446
    const-wide/16 v2, 0x9

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 448
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 449
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 450
    const-wide v6, 0x200000000L

    invoke-virtual {v5, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    .line 451
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v9, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 452
    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    .line 450
    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 453
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 446
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 456
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 459
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 495
    :goto_8b
    return-void

    .line 462
    :cond_8c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 463
    const-wide/16 v2, 0x11

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->ordinal:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 465
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 466
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 467
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 468
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 463
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 474
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 475
    const-wide/16 v2, 0x11

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 477
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 478
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 479
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 480
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 475
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->compareTo:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 489
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 491
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 494
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    goto/16 :goto_8b
.end method

.method private baseEnv(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
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

    .line 1034
    new-instance v2, Lcom/sun/tools/javac/code/Scope;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1036
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_11
    if-eqz v0, :cond_23

    .line 1037
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1038
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1036
    :cond_20
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_11

    .line 1042
    :cond_23
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_3f

    .line 1043
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 1044
    :goto_2a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1046
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1045
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_2a

    .line 1047
    :cond_3f
    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 1048
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 1049
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/sun/tools/javac/comp/Env;->baseClause:Z

    .line 1050
    iput-object v1, v2, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 1051
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 1052
    return-object v2
.end method

.method private enterAnnotations(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    .line 773
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 775
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 776
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->skipAnnotations:Z

    if-nez v0, :cond_a5

    .line 777
    :goto_f
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 778
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 779
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->annotationType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v0, v4, p2}, Lcom/sun/tools/javac/comp/Annotate;->enterAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v3

    .line 782
    if-nez v3, :cond_28

    .line 777
    :cond_25
    :goto_25
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_f

    .line 783
    :cond_28
    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 785
    iget-object v4, v3, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, p3, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v4, v4, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_51

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v3, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->deprecatedType:Lcom/sun/tools/javac/code/Type;

    .line 787
    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 788
    iget-wide v4, p3, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v6, 0x20000

    or-long/2addr v4, v6

    iput-wide v4, p3, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 791
    :cond_51
    iget-object v4, v3, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_8f

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->polymorphicSignatureType:Lcom/sun/tools/javac/code/Type;

    .line 792
    invoke-virtual {v4, v3, v5}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 793
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->hasMethodHandles()Z

    move-result v3

    if-nez v3, :cond_85

    .line 796
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v4, p2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "wrong.target.for.polymorphic.signature.definition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    iget-object v7, v7, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    :cond_85
    iget-wide v4, p3, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v6, 0x10000000000L

    or-long/2addr v4, v6

    iput-wide v4, p3, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 803
    :cond_8f
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 804
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    const-string v4, "duplicate.annotation"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    .line 806
    :cond_a5
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 807
    return-void
.end method

.method private enterDefaultValue(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    iget-object v1, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sun/tools/javac/comp/Annotate;->enterAttributeValue(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    iput-object v0, p3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    .line 836
    return-void
.end method

.method private enumBase(ILcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 1073
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1074
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1075
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1074
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    .line 1076
    return-object v0
.end method

.method private finish(Lcom/sun/tools/javac/comp/Env;)V
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

    .line 1059
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 1061
    :try_start_a
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1062
    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/comp/MemberEnter;->finishClass(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 1064
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1065
    return-void

    .line 1064
    :catchall_17
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1065
    throw v0
.end method

.method private hasDeprecatedAnnotation(Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)Z"
        }
    .end annotation

    .line 760
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 761
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 762
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->deprecatedType:Lcom/sun/tools/javac/code/Type;

    if-ne v1, v2, :cond_1e

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 763
    const/4 v0, 0x1

    .line 765
    :goto_1d
    return v0

    .line 760
    :cond_1e
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 765
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private importAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->kind:I

    if-ne v0, v3, :cond_30

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-nez v0, :cond_30

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    move-object v0, p2

    .line 140
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v2, "doesnt.exist"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_30
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->importAll(Lcom/sun/tools/javac/code/Scope;)V

    .line 148
    return-void

    .line 141
    :cond_3c
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "fatal.err.no.java.lang"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/sun/tools/javac/util/FatalError;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/FatalError;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    throw v1
.end method

.method private importNamed(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 338
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    .line 339
    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/tools/javac/comp/Check;->checkUniqueImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 340
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sun/tools/javac/code/Scope$ImportScope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 341
    :cond_1e
    return-void
.end method

.method private importNamedStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 248
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v3, "static.imp.only.classes.and.interfaces"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :goto_17
    return-void

    .line 253
    :cond_18
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v7, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    .line 254
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 255
    new-instance v1, Lcom/sun/tools/javac/comp/MemberEnter$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sun/tools/javac/comp/MemberEnter$3;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Scope;)V

    .line 281
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/MemberEnter$3;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v8, Lcom/sun/tools/javac/comp/MemberEnter$4;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v7

    move-object/from16 v16, p4

    invoke-direct/range {v8 .. v16}, Lcom/sun/tools/javac/comp/MemberEnter$4;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/comp/Env;)V

    invoke-virtual {v1, v8}, Lcom/sun/tools/javac/comp/Annotate;->earlier(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    goto :goto_17
.end method

.method private importStaticAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 160
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    .line 161
    iget-object v0, p3, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 162
    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter$1;

    invoke-direct {v0, p0, v4, p2, v5}, Lcom/sun/tools/javac/comp/MemberEnter$1;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 187
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter$1;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 190
    iget-object v7, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/comp/MemberEnter$2;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/comp/Annotate;->earlier(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    .line 220
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/MemberEnter;
    .registers 2

    .line 83
    sget-object v0, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/MemberEnter;

    .line 84
    if-nez v0, :cond_f

    .line 85
    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/MemberEnter;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 86
    :cond_f
    return-object v0
.end method


# virtual methods
.method DefaultConstructor(Lcom/sun/tools/javac/tree/TreeMaker;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;JZ)Lcom/sun/tools/javac/tree/JCTree;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/TreeMaker;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;JZ)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 1228
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Params(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 1229
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1230
    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-eq v3, v4, :cond_20

    .line 1231
    move/from16 v0, p8

    invoke-virtual {p0, p1, p3, v7, v0}, Lcom/sun/tools/javac/comp/MemberEnter;->SuperCall(Lcom/sun/tools/javac/tree/TreeMaker;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1230
    :cond_20
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v8, 0x4000

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1233
    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v3, v4, :cond_45

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 1234
    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1236
    :cond_45
    const-wide/16 v4, -0x8

    and-long v4, v4, p6

    const-wide/16 v8, 0x2

    or-long/2addr v4, v8

    const-wide v8, 0x1000000000L

    or-long/2addr v4, v8

    .line 1239
    :goto_52
    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-wide/32 v8, 0x20000000

    or-long/2addr v4, v8

    .line 1240
    :cond_5e
    invoke-virtual {p1, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    .line 1244
    invoke-virtual {p1, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParams(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1246
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 1247
    const-wide/16 v10, 0x0

    invoke-virtual {p1, v10, v11, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v9

    .line 1240
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    .line 1249
    return-object v2

    .line 1238
    :cond_7e
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v8, 0x7

    and-long/2addr v4, v8

    const-wide v8, 0x1000000000L

    or-long/2addr v4, v8

    or-long v4, v4, p6

    goto :goto_52
.end method

.method SuperCall(Lcom/sun/tools/javac/tree/TreeMaker;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Z)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/TreeMaker;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;Z)",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;"
        }
    .end annotation

    .line 1272
    if-eqz p4, :cond_2b

    .line 1273
    iget-object v0, p3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    .line 1274
    iget-object p3, p3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1278
    :goto_14
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1279
    :goto_1e
    invoke-virtual {p1, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    return-object v0

    .line 1276
    :cond_2b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    goto :goto_14

    .line 1278
    :cond_34
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method annotateDefaultValueLater(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v1, Lcom/sun/tools/javac/comp/MemberEnter$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sun/tools/javac/comp/MemberEnter$6;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Annotate;->later(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    .line 827
    return-void
.end method

.method annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 753
    :goto_6
    return-void

    .line 732
    :cond_7
    iget v0, p3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 733
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    new-instance v1, Lcom/sun/tools/javac/comp/MemberEnter$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/sun/tools/javac/comp/MemberEnter$5;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Annotate;->later(Lcom/sun/tools/javac/comp/Annotate$Annotator;)V

    goto :goto_6
.end method

.method attribImportType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 5
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

    const/4 v1, 0x1

    .line 712
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 716
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    .line 717
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    move-result-object v0

    .line 719
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    .line 717
    return-object v0

    .line 719
    :catchall_12
    move-exception v0

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    .line 720
    throw v0
.end method

.method public complete(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 847
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->completionEnabled:Z

    const/4 v2, 0x0

    if-nez v3, :cond_20

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x1000000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_16

    const/4 v2, 0x1

    :cond_16
    invoke-static {v2}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 1031
    :cond_1f
    :goto_1f
    return-void

    :cond_20
    move-object/from16 v11, p1

    .line 854
    check-cast v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 855
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v12, v2

    check-cast v12, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Enter;->typeEnvs:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/sun/tools/javac/comp/Env;

    .line 857
    iget-object v2, v13, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    move-object v14, v2

    check-cast v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 858
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sun/tools/javac/comp/MemberEnter;->isFirst:Z

    .line 859
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->isFirst:Z

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, v13, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v16

    .line 864
    :try_start_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->halfcompleted:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v13}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 867
    iget-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v4, 0x10000000

    or-long/2addr v2, v4

    iput-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 871
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I
    :try_end_63
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_50 .. :try_end_63} :catch_3b2
    .catchall {:try_start_50 .. :try_end_63} :catchall_3c6

    const/4 v3, 0x1

    if-ne v2, v3, :cond_79

    .line 872
    :try_start_66
    iget-object v2, v13, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/sun/tools/javac/comp/Env;->enclosing(I)Lcom/sun/tools/javac/comp/Env;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v2, v13}, Lcom/sun/tools/javac/comp/Todo;->append(Lcom/sun/tools/javac/comp/Env;)V
    :try_end_79
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_66 .. :try_end_79} :catch_149
    .catchall {:try_start_66 .. :try_end_79} :catchall_3da

    .line 876
    :cond_79
    :try_start_79
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I
    :try_end_7d
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_79 .. :try_end_7d} :catch_3b2
    .catchall {:try_start_79 .. :try_end_7d} :catchall_3c6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    .line 877
    :try_start_80
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->complete()V
    :try_end_85
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_80 .. :try_end_85} :catch_149
    .catchall {:try_start_80 .. :try_end_85} :catchall_3da

    .line 880
    :cond_85
    :try_start_85
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/sun/tools/javac/comp/MemberEnter;->baseEnv(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v4

    .line 884
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :try_end_8d
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_85 .. :try_end_8d} :catch_3b2
    .catchall {:try_start_85 .. :try_end_8d} :catchall_3c6

    if-eqz v2, :cond_183

    .line 885
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Attr;->attribBase(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;
    :try_end_9b
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_8f .. :try_end_9b} :catch_149
    .catchall {:try_start_8f .. :try_end_9b} :catchall_3da

    move-result-object v2

    move-object v9, v2

    .line 892
    :goto_9d
    :try_start_9d
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v3}, Lcom/sun/tools/javac/comp/MemberEnter;->modelMissingTypes(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 895
    new-instance v10, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v10}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 896
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 898
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    .line 899
    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v3, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J
    :try_end_b8
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_9d .. :try_end_b8} :catch_3b2
    .catchall {:try_start_9d .. :try_end_b8} :catchall_3c6

    const-wide/16 v18, 0x4000

    and-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-eqz v3, :cond_107

    :try_start_c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3, v11}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    new-instance v5, Lcom/sun/tools/javac/code/Type$ClassType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->comparableType:Lcom/sun/tools/javac/code/Type;

    .line 902
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 903
    invoke-static {v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_e1
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_c2 .. :try_end_e1} :catch_1c8
    .catchall {:try_start_c2 .. :try_end_e1} :catchall_3d2

    move-result-object v7

    :try_start_e2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->comparableType:Lcom/sun/tools/javac/code/Type;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 902
    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    .line 907
    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_106
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_e2 .. :try_end_106} :catch_3d4
    .catchall {:try_start_e2 .. :try_end_106} :catchall_3d8

    move-result-object v2

    .line 899
    :cond_107
    :try_start_107
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v8, 0x0

    :goto_10c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10f
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_107 .. :try_end_10f} :catch_3c8
    .catchall {:try_start_107 .. :try_end_10f} :catchall_3cc

    move-result v2

    if-eqz v2, :cond_1ea

    :try_start_112
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Attr;->attribBase(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 911
    iget v2, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0xa

    if-ne v2, v6, :cond_1cb

    .line 912
    invoke-virtual {v10, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_12c
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_112 .. :try_end_12c} :catch_1e6
    .catchall {:try_start_112 .. :try_end_12c} :catchall_3d0

    .line 913
    if-eqz v8, :cond_131

    :try_start_12e
    invoke-virtual {v8, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_131
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_12e .. :try_end_131} :catch_3d4
    .catchall {:try_start_12e .. :try_end_131} :catchall_3d8

    .line 914
    :cond_131
    :try_start_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    :try_end_138
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_131 .. :try_end_138} :catch_1e6
    .catchall {:try_start_131 .. :try_end_138} :catchall_3d0

    move-result-object v3

    :try_start_139
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v5, v0}, Lcom/sun/tools/javac/comp/Check;->checkNotRepeated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Ljava/util/Set;)V
    :try_end_146
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_139 .. :try_end_146} :catch_1e2
    .catchall {:try_start_139 .. :try_end_146} :catchall_3a4

    move-object v2, v8

    :goto_147
    move-object v8, v2

    .line 920
    goto :goto_10c

    .line 1011
    :catch_149
    move-exception v3

    move v2, v15

    .line 1012
    :goto_14b
    :try_start_14b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v14}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    :try_end_156
    .catchall {:try_start_14b .. :try_end_156} :catchall_3c4

    move v15, v2

    .line 1014
    :cond_157
    :goto_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1015
    if-eqz v15, :cond_1f

    .line 1021
    :goto_162
    :try_start_162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->halfcompleted:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b6

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->halfcompleted:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/comp/Env;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->finish(Lcom/sun/tools/javac/comp/Env;)V
    :try_end_17b
    .catchall {:try_start_162 .. :try_end_17b} :catchall_17c

    goto :goto_162

    .line 1025
    :catchall_17c
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->isFirst:Z

    .line 1026
    throw v2

    .line 886
    :cond_183
    :try_start_183
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J
    :try_end_187
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_183 .. :try_end_187} :catch_3b2
    .catchall {:try_start_183 .. :try_end_187} :catchall_3c6

    const-wide/16 v6, 0x4000

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1b0

    :try_start_190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2, v11}, Lcom/sun/tools/javac/jvm/Target;->compilerBootstrap(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_1b0

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/sun/tools/javac/comp/MemberEnter;->enumBase(ILcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Attr;->attribBase(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ZZZ)Lcom/sun/tools/javac/code/Type;
    :try_end_1ac
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_190 .. :try_end_1ac} :catch_149
    .catchall {:try_start_190 .. :try_end_1ac} :catchall_3da

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_9d

    .line 889
    :cond_1b0
    :try_start_1b0
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;
    :try_end_1b8
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1b0 .. :try_end_1b8} :catch_3b2
    .catchall {:try_start_1b0 .. :try_end_1b8} :catchall_3c6

    if-ne v2, v3, :cond_1bf

    .line 890
    :try_start_1ba
    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;
    :try_end_1bc
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1ba .. :try_end_1bc} :catch_149
    .catchall {:try_start_1ba .. :try_end_1bc} :catchall_3da

    move-object v9, v2

    goto/16 :goto_9d

    .line 891
    :cond_1bf
    :try_start_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;
    :try_end_1c5
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1bf .. :try_end_1c5} :catch_3b2
    .catchall {:try_start_1bf .. :try_end_1c5} :catchall_3c6

    move-object v9, v2

    goto/16 :goto_9d

    .line 1011
    :catch_1c8
    move-exception v3

    move v2, v15

    goto :goto_14b

    .line 916
    :cond_1cb
    if-nez v8, :cond_3dc

    .line 917
    :try_start_1cd
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2, v10}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 918
    :goto_1d6
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/sun/tools/javac/comp/MemberEnter;->modelMissingTypes(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_1e0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1cd .. :try_end_1e0} :catch_1e2
    .catchall {:try_start_1cd .. :try_end_1e0} :catchall_3a4

    goto/16 :goto_147

    .line 1011
    :catch_1e2
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    :catch_1e6
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 921
    :cond_1ea
    :try_start_1ea
    iget-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J
    :try_end_1ec
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1ea .. :try_end_1ec} :catch_374
    .catchall {:try_start_1ea .. :try_end_1ec} :catchall_3ce

    const-wide/16 v6, 0x2000

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_366

    .line 922
    :try_start_1f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->annotationType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 923
    iget-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->all_interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_205
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1f5 .. :try_end_205} :catch_1e2
    .catchall {:try_start_1f5 .. :try_end_205} :catchall_3a4

    .line 930
    :goto_205
    :try_start_205
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;
    :try_end_20d
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_205 .. :try_end_20d} :catch_374
    .catchall {:try_start_205 .. :try_end_20d} :catchall_3ce

    if-ne v2, v3, :cond_224

    .line 931
    :try_start_20f
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_37d

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 934
    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;
    :try_end_224
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_20f .. :try_end_224} :catch_1e2
    .catchall {:try_start_20f .. :try_end_224} :catchall_3a4

    .line 947
    :cond_224
    :goto_224
    :try_start_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribAnnotationTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 948
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->hasDeprecatedAnnotation(Lcom/sun/tools/javac/util/List;)Z
    :try_end_238
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_224 .. :try_end_238} :catch_374
    .catchall {:try_start_224 .. :try_end_238} :catchall_3ce

    move-result v2

    if-eqz v2, :cond_243

    .line 949
    :try_start_23b
    iget-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v6, 0x20000

    or-long/2addr v2, v6

    iput-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J
    :try_end_243
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_23b .. :try_end_243} :catch_1e2
    .catchall {:try_start_23b .. :try_end_243} :catchall_3a4

    .line 950
    :cond_243
    :try_start_243
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v11}, Lcom/sun/tools/javac/comp/MemberEnter;->annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2, v14}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclicDecl(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/comp/Attr;->attribTypeVariables(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 957
    invoke-virtual {v11}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2de

    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 958
    invoke-static {v2}, Lcom/sun/tools/javac/tree/TreeInfo;->hasConstructors(Lcom/sun/tools/javac/util/List;)Z

    move-result v2

    if-nez v2, :cond_2de

    .line 959
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 960
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 961
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 962
    const-wide/16 v8, 0x0

    .line 963
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 964
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z
    :try_end_286
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_243 .. :try_end_286} :catch_374
    .catchall {:try_start_243 .. :try_end_286} :catchall_3ce

    move-result v2

    if-eqz v2, :cond_2c5

    .line 965
    :try_start_289
    iget-object v2, v13, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 966
    iget-object v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v4, :cond_2c5

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 969
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 970
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 971
    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide v18, 0x400000000L

    and-long v8, v8, v18

    .line 972
    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v7, :cond_3af

    .line 973
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 974
    const/4 v10, 0x1

    .line 976
    :goto_2c1
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;
    :try_end_2c4
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_289 .. :try_end_2c4} :catch_1e2
    .catchall {:try_start_289 .. :try_end_2c4} :catchall_3a4

    move-result-object v7

    .line 964
    :cond_2c5
    :try_start_2c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->make:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;
    :try_end_2ce
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2c5 .. :try_end_2ce} :catch_374
    .catchall {:try_start_2c5 .. :try_end_2ce} :catchall_3ce

    move-result-object v3

    move-object/from16 v2, p0

    move-object v4, v11

    :try_start_2d2
    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/comp/MemberEnter;->DefaultConstructor(Lcom/sun/tools/javac/tree/TreeMaker;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;JZ)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    .line 982
    iget-object v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 957
    :cond_2de
    iget-wide v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_32b

    .line 988
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/32 v4, 0x40010

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    iget-object v7, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 990
    const/4 v2, 0x0

    iput v2, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 991
    iget-object v2, v13, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 992
    iget-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_32b

    .line 993
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/32 v4, 0x40010

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    iget-object v7, v12, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 996
    const/4 v2, 0x0

    iput v2, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 997
    iget-object v2, v13, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 987
    :cond_32b
    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_157

    iget-object v2, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    if-eq v2, v3, :cond_157

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v11, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    .line 1006
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->packageExists(Lcom/sun/tools/javac/util/Name;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    const-string v4, "clash.with.pkg.of.same.name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_360
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2d2 .. :try_end_360} :catch_362
    .catchall {:try_start_2d2 .. :try_end_360} :catchall_3c4

    goto/16 :goto_157

    .line 1011
    :catch_362
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 925
    :cond_366
    :try_start_366
    invoke-virtual {v10}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_36c
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_366 .. :try_end_36c} :catch_374
    .catchall {:try_start_366 .. :try_end_36c} :catchall_3ce

    .line 926
    if-nez v8, :cond_378

    .line 927
    :try_start_36e
    iget-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_370
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_36e .. :try_end_370} :catch_1e2
    .catchall {:try_start_36e .. :try_end_370} :catchall_3a4

    :goto_370
    :try_start_370
    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->all_interfaces_field:Lcom/sun/tools/javac/util/List;

    goto/16 :goto_205

    .line 1011
    :catch_374
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 927
    :cond_378
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;
    :try_end_37b
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_370 .. :try_end_37b} :catch_374
    .catchall {:try_start_370 .. :try_end_37b} :catchall_3ce

    move-result-object v2

    goto :goto_370

    .line 936
    :cond_37d
    :try_start_37d
    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_224

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, v14, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v5, v2}, Lcom/sun/tools/javac/comp/Check;->checkNonCyclic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)V

    .line 939
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v12, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_3a2
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_37d .. :try_end_3a2} :catch_1e2
    .catchall {:try_start_37d .. :try_end_3a2} :catchall_3a4

    goto/16 :goto_224

    .line 1014
    :catchall_3a4
    move-exception v2

    :goto_3a5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1015
    throw v2

    :cond_3af
    move v10, v3

    .line 972
    goto/16 :goto_2c1

    .line 1011
    :catch_3b2
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 1025
    :cond_3b6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->isFirst:Z

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/comp/MemberEnter;->annotate:Lcom/sun/tools/javac/comp/Annotate;

    invoke-virtual {v2}, Lcom/sun/tools/javac/comp/Annotate;->flush()V

    goto/16 :goto_1f

    .line 1014
    :catchall_3c4
    move-exception v2

    goto :goto_3a5

    :catchall_3c6
    move-exception v2

    goto :goto_3a5

    .line 1011
    :catch_3c8
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 1014
    :catchall_3cc
    move-exception v2

    goto :goto_3a5

    :catchall_3ce
    move-exception v2

    goto :goto_3a5

    :catchall_3d0
    move-exception v2

    goto :goto_3a5

    :catchall_3d2
    move-exception v2

    goto :goto_3a5

    .line 1011
    :catch_3d4
    move-exception v3

    move v2, v15

    goto/16 :goto_14b

    .line 1014
    :catchall_3d8
    move-exception v2

    goto :goto_3a5

    :catchall_3da
    move-exception v2

    goto :goto_3a5

    :cond_3dc
    move-object v2, v8

    goto/16 :goto_1d6
.end method

.method finishClass(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x4000

    const-wide/16 v2, 0x0

    .line 419
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 420
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->addEnumMembers(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lcom/sun/tools/javac/comp/Env;)V

    .line 423
    :cond_25
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 424
    return-void
.end method

.method public getInitEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
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

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->initEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 704
    return-object v0
.end method

.method public getMethodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
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

    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->methodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 694
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/sun/tools/javac/code/Lint;->augment(Lcom/sun/tools/javac/util/List;J)Lcom/sun/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 695
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_21
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 696
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v3, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Scope;->enterIfAbsent(Lcom/sun/tools/javac/code/Symbol;)V

    .line 695
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_21

    .line 697
    :cond_3c
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3f
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 698
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v3, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Scope;->enterIfAbsent(Lcom/sun/tools/javac/code/Symbol;)V

    .line 697
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3f

    .line 699
    :cond_58
    return-object v2
.end method

.method initEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
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

    const-wide/16 v6, 0x0

    .line 671
    new-instance v1, Lcom/sun/tools/javac/comp/AttrContextEnv;

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/AttrContext;->dup()Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/comp/AttrContextEnv;-><init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/AttrContext;)V

    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/comp/Env;->dupto(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 672
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 673
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    new-instance v3, Lcom/sun/tools/javac/code/Scope$DelegatedScope;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v3, v1}, Lcom/sun/tools/javac/code/Scope$DelegatedScope;-><init>(Lcom/sun/tools/javac/code/Scope;)V

    iput-object v3, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 674
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 676
    :cond_37
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_51

    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 677
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5b

    .line 678
    :cond_51
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    .line 679
    :cond_5b
    return-object v2
.end method

.method protected memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V
    .registers 7
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

    .line 398
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 400
    :try_start_2
    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 401
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    :try_end_7
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_15

    .line 405
    :goto_7
    iput-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 407
    return-void

    .line 402
    :catch_a
    move-exception v0

    .line 403
    :try_start_b
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/comp/Check;->completionError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$CompletionFailure;)Lcom/sun/tools/javac/code/Type;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_7

    .line 405
    :catchall_15
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 406
    throw v0
.end method

.method memberEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 412
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 413
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 412
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 414
    :cond_10
    return-void
.end method

.method methodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
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

    .line 610
    iget-object v0, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 611
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dupUnshared()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 612
    iput-object p1, v1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 613
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iput-object v2, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 614
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    .line 615
    :cond_39
    return-object v1
.end method

.method modelMissingTypes(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/code/Type;
    .registers 10

    .line 1080
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_7

    .line 1083
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter$7;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/code/Type$ErrorType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$ErrorType;->getOriginalType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v1, p0

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/comp/MemberEnter$7;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    move-object p1, v0

    goto :goto_6
.end method

.method signature(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v0, p1, p5}, Lcom/sun/tools/javac/comp/Enter;->classEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 359
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1, p5}, Lcom/sun/tools/javac/comp/Attr;->attribTypeVariables(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 362
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 363
    :goto_10
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p5}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)V

    .line 365
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 363
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_10

    .line 369
    :cond_2b
    if-nez p3, :cond_61

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    move-object v1, v0

    .line 372
    :goto_32
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 373
    :goto_37
    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 374
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, p4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2, v0, p5}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 375
    iget v0, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v6, 0xe

    if-eq v0, v6, :cond_88

    .line 376
    iget-object v6, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, p4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lcom/sun/tools/javac/comp/Check;->checkClassType(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 377
    :goto_5b
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 373
    iget-object p4, p4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_37

    .line 369
    :cond_61
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p3, p5}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_32

    .line 379
    :cond_69
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 381
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 383
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_81

    :goto_80
    return-object v0

    :cond_81
    new-instance v1, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-direct {v1, v3, v0}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    move-object v0, v1

    goto :goto_80

    :cond_88
    move-object v0, v2

    goto :goto_5b
.end method

.method staticImportAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 225
    if-eqz v2, :cond_15

    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    const/4 v3, 0x4

    if-eq v2, v3, :cond_15

    .line 233
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 230
    goto :goto_12

    .line 233
    :cond_15
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v2

    if-eq v2, p2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 4

    .line 688
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_b

    .line 689
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    .line 690
    :cond_b
    return-void
.end method

.method public visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V
    .registers 10

    .line 530
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    .line 531
    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 536
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v4

    move-object v0, v1

    .line 539
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 540
    iget-object v5, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 543
    iget-boolean v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v2, :cond_39

    const/4 v2, 0x2

    :goto_18
    sget-object v7, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 541
    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/sun/tools/javac/comp/Attr;->attribTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;ILcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 545
    iget-object v5, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v5, v5, Lcom/sun/tools/javac/util/Names;->asterisk:Lcom/sun/tools/javac/util/Name;

    if-ne v3, v5, :cond_43

    .line 547
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkCanonical(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 548
    iget-boolean v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v0, :cond_3b

    .line 549
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos:I

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->importStaticAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V

    .line 563
    :goto_38
    return-void

    .line 543
    :cond_39
    const/4 v2, 0x3

    goto :goto_18

    .line 551
    :cond_3b
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos:I

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->importAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_38

    .line 554
    :cond_43
    iget-boolean v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v5, :cond_56

    .line 555
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->importNamedStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)V

    .line 556
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Check;->checkCanonical(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_38

    .line 558
    :cond_56
    invoke-virtual {p0, v1, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->attribImportType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 559
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/comp/Check;->checkCanonical(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 560
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->importNamed(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_38
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 12

    .line 566
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Enter;->enterScope(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v8

    .line 567
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 568
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v6, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/Check;->checkFlags(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    .line 569
    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 570
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/MemberEnter;->methodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v7

    .line 572
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 573
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/DeferredLintHandler;->setPos(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v9

    .line 576
    :try_start_3e
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/tools/javac/comp/MemberEnter;->signature(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_bb

    .line 580
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v9}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 581
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 585
    const/4 v0, 0x0

    .line 586
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    :goto_5a
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 587
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 588
    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-static {v4}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 586
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_5a

    .line 590
    :cond_70
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    .line 593
    if-eqz v0, :cond_92

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_92

    .line 594
    iget-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    const-wide v4, 0x400000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    .line 596
    :cond_92
    iget-object v0, v7, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->leave()Lcom/sun/tools/javac/code/Scope;

    .line 597
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v8}, Lcom/sun/tools/javac/comp/Check;->checkUnique(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 598
    invoke-virtual {v8, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 600
    :cond_aa
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v7, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V

    .line 601
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_ba

    .line 602
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v7, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->annotateDefaultValueLater(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 603
    :cond_ba
    return-void

    .line 580
    :catchall_bb
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v1, v9}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 581
    throw v0
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 8

    .line 498
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$StarImportScope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_7

    .line 526
    :goto_6
    return-void

    .line 505
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_3a

    .line 506
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 507
    :goto_d
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    if-eq v1, v2, :cond_3a

    .line 508
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    .line 509
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 510
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->log:Lcom/sun/tools/javac/util/Log;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pos:I

    const-string v3, "pkg.clashes.with.class.of.same.name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_37
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_d

    .line 519
    :cond_3a
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V

    .line 522
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pos:I

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->importAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V

    .line 525
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->memberEnter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_6
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 685
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 14

    const-wide/16 v2, 0x0

    .line 619
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    .line 620
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 621
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x200

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f8

    .line 622
    :cond_24
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/AttrContext;->dup()Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 623
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iget v4, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    move-object v10, v1

    .line 625
    :goto_3d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->deferredLintHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 626
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/DeferredLintHandler;->setPos(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    move-result-object v1

    .line 628
    :try_start_4d
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v4, v10}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Type;
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_fb

    .line 630
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 631
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x400000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_75

    .line 638
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 639
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ArrayType;->makeVarargs()Lcom/sun/tools/javac/code/Type$ArrayType;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 641
    :cond_75
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->enter:Lcom/sun/tools/javac/comp/Enter;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Enter;->enterScope(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v11

    .line 642
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, v11, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 644
    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v8, v1

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sun/tools/javac/comp/Check;->checkFlags(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 645
    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 646
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_d4

    .line 647
    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    iput-wide v4, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    .line 648
    iget-wide v4, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags_field:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_d4

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_d4

    .line 649
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/MemberEnter;->getInitEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 650
    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    .line 651
    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/comp/MemberEnter;->initEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->attr:Lcom/sun/tools/javac/comp/Attr;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setLazyConstValue(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 654
    :cond_d4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v11}, Lcom/sun/tools/javac/comp/Check;->checkUnique(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 655
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v11}, Lcom/sun/tools/javac/comp/Check;->checkTransparentVar(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 656
    invoke-virtual {v11, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 658
    :cond_ec
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v10, v1}, Lcom/sun/tools/javac/comp/MemberEnter;->annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V

    .line 659
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos:I

    iput v0, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    .line 660
    return-void

    :cond_f8
    move-object v10, v1

    .line 621
    goto/16 :goto_3d

    .line 630
    :catchall_fb
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/comp/Check;->setDeferredLintHandler(Lcom/sun/tools/javac/code/DeferredLintHandler;)Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 631
    throw v0
.end method
