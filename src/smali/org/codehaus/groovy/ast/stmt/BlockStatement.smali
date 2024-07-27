.class public Lorg/codehaus/groovy/ast/stmt/BlockStatement;
.super Lorg/codehaus/groovy/ast/stmt/Statement;


# instance fields
.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/stmt/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Lorg/codehaus/groovy/ast/VariableScope;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/codehaus/groovy/ast/VariableScope;

    invoke-direct {v1}, Lorg/codehaus/groovy/ast/VariableScope;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/groovy/ast/stmt/BlockStatement;-><init>(Ljava/util/List;Lorg/codehaus/groovy/ast/VariableScope;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/codehaus/groovy/ast/VariableScope;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/stmt/Statement;",
            ">;",
            "Lorg/codehaus/groovy/ast/VariableScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/stmt/Statement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/stmt/BlockStatement;->VH:Ljava/util/List;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/stmt/BlockStatement;->VH:Ljava/util/List;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/stmt/BlockStatement;->gn:Lorg/codehaus/groovy/ast/VariableScope;

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

    iget-object v1, p0, Lorg/codehaus/groovy/ast/stmt/BlockStatement;->VH:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
