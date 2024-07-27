.class public Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;
.super Lorg/apache/tools/ant/input/InputRequest;
.source "MultipleChoiceInputRequest.java"


# instance fields
.field private final choices:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/input/InputRequest;-><init>(Ljava/lang/String;)V

    .line 51
    if-eqz p2, :cond_0

    .line 54
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choices must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getChoices()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isInputValid()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
