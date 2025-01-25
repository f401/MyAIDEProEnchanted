.class public Lorg/codehaus/groovy/ast/expr/EmptyExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# static fields
.field public static final tp:Lorg/codehaus/groovy/ast/expr/EmptyExpression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/ast/expr/EmptyExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/EmptyExpression;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/EmptyExpression;->tp:Lorg/codehaus/groovy/ast/expr/EmptyExpression;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/expr/Expression;-><init>()V

    return-void
.end method
