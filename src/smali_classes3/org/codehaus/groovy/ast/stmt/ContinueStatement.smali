.class public Lorg/codehaus/groovy/ast/stmt/ContinueStatement;
.super Lorg/codehaus/groovy/ast/stmt/Statement;


# instance fields
.field private VH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/ast/stmt/ContinueStatement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/stmt/Statement;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/stmt/ContinueStatement;->VH:Ljava/lang/String;

    return-void
.end method
