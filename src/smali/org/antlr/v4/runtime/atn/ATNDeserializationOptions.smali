.class public Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;
.super Ljava/lang/Object;
.source "ATNDeserializationOptions.java"


# static fields
.field private static final defaultOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;


# instance fields
.field private generateRuleBypassTransitions:Z

.field private readOnly:Z

.field private verifyATN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->defaultOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    .line 17
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->makeReadOnly()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->verifyATN:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->generateRuleBypassTransitions:Z

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->verifyATN:Z

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->verifyATN:Z

    .line 31
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->generateRuleBypassTransitions:Z

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->generateRuleBypassTransitions:Z

    return-void
.end method

.method public static getDefaultOptions()Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;
    .locals 1

    .line 36
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->defaultOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    return-object v0
.end method


# virtual methods
.method public final isGenerateRuleBypassTransitions()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->generateRuleBypassTransitions:Z

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->readOnly:Z

    return v0
.end method

.method public final isVerifyATN()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->verifyATN:Z

    return v0
.end method

.method public final makeReadOnly()V
    .locals 1

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->readOnly:Z

    return-void
.end method

.method public final setGenerateRuleBypassTransitions(Z)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->throwIfReadOnly()V

    .line 62
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->generateRuleBypassTransitions:Z

    return-void
.end method

.method public final setVerifyATN(Z)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->throwIfReadOnly()V

    .line 53
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->verifyATN:Z

    return-void
.end method

.method protected throwIfReadOnly()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The object is read only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
