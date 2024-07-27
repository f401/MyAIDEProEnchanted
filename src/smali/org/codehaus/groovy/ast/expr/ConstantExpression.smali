.class public Lorg/codehaus/groovy/ast/expr/ConstantExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# static fields
.field public static final EQ:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final J0:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final J8:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final QX:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final Ws:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final XL:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final tp:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

.field public static final we:Lorg/codehaus/groovy/ast/expr/ConstantExpression;


# instance fields
.field private aM:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, v3}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->tp:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->EQ:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->we:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->J0:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->J8:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->Ws:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    const-class v1, Ljava/lang/Void;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->QX:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    new-instance v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    invoke-direct {v0, v3}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->XL:Lorg/codehaus/groovy/ast/expr/ConstantExpression;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/ast/expr/ConstantExpression;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/expr/Expression;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->aM:Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/expr/Expression;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_0
.end method


# virtual methods
.method public Zo()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->aM:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantExpression["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/expr/ConstantExpression;->aM:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
