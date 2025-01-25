.class public Lorg/antlr/v4/runtime/InterpreterRuleContext;
.super Lorg/antlr/v4/runtime/ParserRuleContext;
.source "InterpreterRuleContext.java"


# instance fields
.field protected ruleIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/InterpreterRuleContext;->ruleIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/ParserRuleContext;II)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>(Lorg/antlr/v4/runtime/ParserRuleContext;I)V

    .line 39
    iput p3, p0, Lorg/antlr/v4/runtime/InterpreterRuleContext;->ruleIndex:I

    return-void
.end method


# virtual methods
.method public getRuleIndex()I
    .registers 2

    .line 44
    iget v0, p0, Lorg/antlr/v4/runtime/InterpreterRuleContext;->ruleIndex:I

    return v0
.end method
