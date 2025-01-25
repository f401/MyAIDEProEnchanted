.class synthetic Lcom/google/googlejavaformat/java/ModifierOrderer$1;
.super Ljava/lang/Object;
.source "ModifierOrderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/ModifierOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    :try_start_9
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PUBLIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_99

    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PROTECTED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_97

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->PRIVATE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_95

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ABSTRACT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_93

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STATIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_91

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FINAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_8f

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->TRANSIENT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_8d

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->VOLATILE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_8b

    :goto_60
    :try_start_60
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SYNCHRONIZED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_89

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->NATIVE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_87

    :goto_78
    :try_start_78
    sget-object v0, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRICTFP:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_85

    :goto_84
    return-void

    :catch_85
    move-exception v0

    goto :goto_84

    :catch_87
    move-exception v0

    goto :goto_78

    :catch_89
    move-exception v0

    goto :goto_6c

    :catch_8b
    move-exception v0

    goto :goto_60

    :catch_8d
    move-exception v0

    goto :goto_54

    :catch_8f
    move-exception v0

    goto :goto_49

    :catch_91
    move-exception v0

    goto :goto_3e

    :catch_93
    move-exception v0

    goto :goto_33

    :catch_95
    move-exception v0

    goto :goto_28

    :catch_97
    move-exception v0

    goto :goto_1d

    :catch_99
    move-exception v0

    goto/16 :goto_12
.end method
