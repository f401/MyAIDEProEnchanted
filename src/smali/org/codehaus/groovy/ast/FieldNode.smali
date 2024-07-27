.class public Lorg/codehaus/groovy/ast/FieldNode;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;
.implements Lorg/codehaus/groovy/ast/Variable;


# instance fields
.field private EQ:Lorg/codehaus/groovy/ast/ClassNode;

.field private J0:Lorg/codehaus/groovy/ast/expr/Expression;

.field private J8:Z

.field private Ws:Lorg/codehaus/groovy/ast/ClassNode;

.field private tp:I

.field private u7:Ljava/lang/String;

.field private we:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/expr/Expression;)V
    .registers 8

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;-><init>()V

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v0, p0, Lorg/codehaus/groovy/ast/FieldNode;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/FieldNode;->u7:Ljava/lang/String;

    iput p2, p0, Lorg/codehaus/groovy/ast/FieldNode;->tp:I

    iput-object p3, p0, Lorg/codehaus/groovy/ast/FieldNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/FieldNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v1, v0, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lorg/codehaus/groovy/ast/expr/Expression;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/FieldNode;->FH(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_0
    invoke-virtual {p0, p3}, Lorg/codehaus/groovy/ast/FieldNode;->FH(Lorg/codehaus/groovy/ast/ClassNode;)V

    iput-object p3, p0, Lorg/codehaus/groovy/ast/FieldNode;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p4, p0, Lorg/codehaus/groovy/ast/FieldNode;->we:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p5, p0, Lorg/codehaus/groovy/ast/FieldNode;->J0:Lorg/codehaus/groovy/ast/expr/Expression;

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/FieldNode;->we:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public FH(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    iput-object p1, p0, Lorg/codehaus/groovy/ast/FieldNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/FieldNode;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    iget-boolean v1, p0, Lorg/codehaus/groovy/ast/FieldNode;->J8:Z

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/FieldNode;->J8:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/FieldNode;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/FieldNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/FieldNode;->J8:Z

    return v0
.end method
