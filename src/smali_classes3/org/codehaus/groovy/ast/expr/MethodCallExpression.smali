.class public Lorg/codehaus/groovy/ast/expr/MethodCallExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;

# interfaces
.implements Lorg/codehaus/groovy/ast/expr/MethodCall;


# static fields
.field public static final tp:Lorg/codehaus/groovy/ast/expr/Expression;


# instance fields
.field private EQ:Lorg/codehaus/groovy/ast/expr/Expression;

.field private J0:Lorg/codehaus/groovy/ast/expr/Expression;

.field private we:Lorg/codehaus/groovy/ast/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/ast/expr/TupleExpression;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/expr/TupleExpression;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/MethodCallExpression;->tp:Lorg/codehaus/groovy/ast/expr/Expression;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/MethodCallExpression;->EQ:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/MethodCallExpression;->we:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/MethodCallExpression;->J0:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
