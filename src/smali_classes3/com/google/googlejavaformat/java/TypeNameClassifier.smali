.class public final Lcom/google/googlejavaformat/java/TypeNameClassifier;
.super Ljava/lang/Object;
.source "TypeNameClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;,
        Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static typePrefixLength(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 43
    const/4 v2, -0x1

    .line 44
    const/4 v3, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 45
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->from(Ljava/lang/String;)Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->next(Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    if-ne v0, v1, :cond_1

    .line 53
    :cond_0
    return v2

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0
.end method
