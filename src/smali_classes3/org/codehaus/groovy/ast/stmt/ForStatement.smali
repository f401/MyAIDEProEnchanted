.class public Lorg/codehaus/groovy/ast/stmt/ForStatement;
.super Lorg/codehaus/groovy/ast/stmt/Statement;

# interfaces
.implements Lorg/codehaus/groovy/ast/stmt/LoopingStatement;


# static fields
.field public static final VH:Lorg/codehaus/groovy/ast/Parameter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/ast/Parameter;

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    const-string v2, "forLoopDummyParameter"

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/ast/Parameter;-><init>(Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/groovy/ast/stmt/ForStatement;->VH:Lorg/codehaus/groovy/ast/Parameter;

    return-void
.end method
