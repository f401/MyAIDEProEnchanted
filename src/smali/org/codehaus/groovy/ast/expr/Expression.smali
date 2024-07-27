.class public abstract Lorg/codehaus/groovy/ast/expr/Expression;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;


# instance fields
.field private u7:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;-><init>()V

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v0, p0, Lorg/codehaus/groovy/ast/expr/Expression;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/expr/Expression;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/Expression;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method
