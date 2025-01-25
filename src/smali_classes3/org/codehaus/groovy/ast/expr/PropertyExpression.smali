.class public Lorg/codehaus/groovy/ast/expr/PropertyExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# instance fields
.field private EQ:Lorg/codehaus/groovy/ast/expr/Expression;

.field private J0:Z

.field private J8:Z

.field private Ws:Z

.field private tp:Lorg/codehaus/groovy/ast/expr/Expression;

.field private we:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/ast/expr/Expression;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, p2}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/codehaus/groovy/ast/expr/PropertyExpression;-><init>(Lorg/codehaus/groovy/ast/expr/Expression;Lorg/codehaus/groovy/ast/expr/Expression;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/ast/expr/Expression;Lorg/codehaus/groovy/ast/expr/Expression;Z)V
    .registers 5

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->we:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->J0:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->J8:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->Ws:Z

    iput-object p1, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->tp:Lorg/codehaus/groovy/ast/expr/Expression;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->EQ:Lorg/codehaus/groovy/ast/expr/Expression;

    iput-boolean p3, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->J0:Z

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

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->tp:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/PropertyExpression;->EQ:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
