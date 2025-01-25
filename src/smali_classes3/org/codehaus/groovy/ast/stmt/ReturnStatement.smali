.class public Lorg/codehaus/groovy/ast/stmt/ReturnStatement;
.super Lorg/codehaus/groovy/ast/stmt/Statement;


# static fields
.field public static final VH:Lorg/codehaus/groovy/ast/stmt/ReturnStatement;


# instance fields
.field private gn:Lorg/codehaus/groovy/ast/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;

    sget-object v1, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->tp:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;)V

    sput-object v0, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;->VH:Lorg/codehaus/groovy/ast/stmt/ReturnStatement;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/ast/expr/Expression;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/stmt/Statement;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/stmt/ReturnStatement;->gn:Lorg/codehaus/groovy/ast/expr/Expression;

    return-void
.end method
