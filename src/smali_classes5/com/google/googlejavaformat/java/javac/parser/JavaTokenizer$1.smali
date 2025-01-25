.class synthetic Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;
.super Ljava/lang/Object;
.source "JavaTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 865
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    :try_start_9
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_3a

    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_38

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_36

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33

    :catch_36
    move-exception v0

    goto :goto_28

    :catch_38
    move-exception v0

    goto :goto_1d

    :catch_3a
    move-exception v0

    goto :goto_12
.end method
