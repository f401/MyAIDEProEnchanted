.class public Lorg/codehaus/groovy/ast/expr/VariableExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;

# interfaces
.implements Lorg/codehaus/groovy/ast/Variable;


# static fields
.field public static final EQ:Lorg/codehaus/groovy/ast/expr/VariableExpression;

.field public static final tp:Lorg/codehaus/groovy/ast/expr/VariableExpression;


# instance fields
.field private J0:Z

.field private J8:Lorg/codehaus/groovy/ast/Variable;

.field QX:Z

.field Ws:Z

.field private final XL:Lorg/codehaus/groovy/ast/ClassNode;

.field private we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/ast/expr/VariableExpression;

    const-string v1, "this"

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/ast/expr/VariableExpression;-><init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->tp:Lorg/codehaus/groovy/ast/expr/VariableExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/VariableExpression;

    const-string v1, "super"

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/ast/expr/VariableExpression;-><init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->EQ:Lorg/codehaus/groovy/ast/expr/VariableExpression;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J0:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->Ws:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->QX:Z

    iput-object p1, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->we:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-static {p2}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Lorg/codehaus/groovy/ast/ClassNode;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/expr/VariableExpression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    invoke-super {p0, p1}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J0:Z

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v1, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J0:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->we:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J8:Lorg/codehaus/groovy/ast/Variable;

    if-eqz v0, :cond_b

    if-eq v0, p0, :cond_b

    invoke-interface {v0}, Lorg/codehaus/groovy/ast/Variable;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Lorg/codehaus/groovy/ast/expr/Expression;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J8:Lorg/codehaus/groovy/ast/Variable;

    if-eqz v0, :cond_b

    if-eq v0, p0, :cond_b

    invoke-interface {v0}, Lorg/codehaus/groovy/ast/Variable;->j6()Z

    move-result v0

    return v0

    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->J0:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/VariableExpression;->we:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/expr/VariableExpression;->j6()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, ""

    goto :goto_34

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/expr/VariableExpression;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
