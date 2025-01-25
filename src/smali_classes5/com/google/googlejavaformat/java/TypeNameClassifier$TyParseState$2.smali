.class final enum Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$2;
.super Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.source "TypeNameClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;-><init>(Ljava/lang/String;IZLcom/google/googlejavaformat/java/TypeNameClassifier$1;)V

    return-void
.end method


# virtual methods
.method public next(Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .registers 4

    .line 90
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$1;->$SwitchMap$com$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat:[I

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 96
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    :goto_16
    return-object v0

    .line 98
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_1d
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->FIRST_STATIC_MEMBER:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    goto :goto_16
.end method
