.class public Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;
.super Lorg/antlr/v4/runtime/atn/SemanticContext;
.source "SemanticContext.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/SemanticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrecedencePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/atn/SemanticContext;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;",
        ">;"
    }
.end annotation


# instance fields
.field public final precedence:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;-><init>()V

    .line 131
    iput p1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 123
    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->compareTo(Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;)I
    .locals 2

    .line 151
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    iget v1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    if-nez v2, :cond_1

    move v0, v1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-eq p0, p1, :cond_0

    .line 171
    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    .line 172
    iget v2, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")Z"
        }
    .end annotation

    .line 136
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    invoke-virtual {p1, p2, v0}, Lorg/antlr/v4/runtime/Recognizer;->precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z

    move-result v0

    return v0
.end method

.method public evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;"
        }
    .end annotation

    .line 141
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    invoke-virtual {p1, p2, v0}, Lorg/antlr/v4/runtime/Recognizer;->precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">=prec}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
