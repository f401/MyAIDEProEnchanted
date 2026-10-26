.class public Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;
.super Lorg/antlr/v4/runtime/atn/SemanticContext;
.source "SemanticContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/SemanticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Predicate"
.end annotation


# instance fields
.field public final isCtxDependent:Z

.field public final predIndex:I

.field public final ruleIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 79
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;-><init>()V

    .line 80
    iput v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    .line 81
    iput v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;-><init>()V

    .line 86
    iput p1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    .line 87
    iput p2, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    .line 88
    iput-boolean p3, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    if-nez v2, :cond_1

    move v0, v1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-eq p0, p1, :cond_0

    .line 111
    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    .line 112
    iget v2, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")Z"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/antlr/v4/runtime/Recognizer;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 99
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 100
    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 101
    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 102
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->isCtxDependent:Z

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 103
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->ruleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;->predIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
