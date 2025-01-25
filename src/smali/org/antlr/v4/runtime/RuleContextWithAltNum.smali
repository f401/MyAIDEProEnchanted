.class public Lorg/antlr/v4/runtime/RuleContextWithAltNum;
.super Lorg/antlr/v4/runtime/ParserRuleContext;
.source "RuleContextWithAltNum.java"


# instance fields
.field public altNum:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/RuleContextWithAltNum;->altNum:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/ParserRuleContext;I)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>(Lorg/antlr/v4/runtime/ParserRuleContext;I)V

    return-void
.end method


# virtual methods
.method public getAltNumber()I
    .registers 2

    .line 28
    iget v0, p0, Lorg/antlr/v4/runtime/RuleContextWithAltNum;->altNum:I

    return v0
.end method

.method public setAltNumber(I)V
    .registers 2

    .line 29
    iput p1, p0, Lorg/antlr/v4/runtime/RuleContextWithAltNum;->altNum:I

    return-void
.end method
