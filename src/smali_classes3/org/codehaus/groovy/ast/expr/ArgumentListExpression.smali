.class public Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;
.super Lorg/codehaus/groovy/ast/expr/TupleExpression;


# static fields
.field public static final EQ:[Ljava/lang/Object;

.field public static final we:Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;->EQ:[Ljava/lang/Object;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;->we:Lorg/codehaus/groovy/ast/expr/ArgumentListExpression;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/expr/TupleExpression;-><init>()V

    return-void
.end method
