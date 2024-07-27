.class final enum Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$4;
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

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;-><init>(Ljava/lang/String;IZLcom/google/googlejavaformat/java/TypeNameClassifier$1;)V

    return-void
.end method


# virtual methods
.method public next(Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .registers 3

    .line 118
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object v0
.end method
