.class public Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 78
    array-length v0, p1

    if-lez v0, :cond_11

    .line 79
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    .line 83
    :goto_10
    return-void

    .line 81
    :cond_11
    sget-object v0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_10
.end method


# virtual methods
.method public isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z
    .registers 3

    .line 92
    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 102
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_2e

    add-int/lit8 v0, v5, -0x2

    if-ge p2, v0, :cond_2e

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2e

    .line 103
    add-int/lit8 v3, p2, 0x2

    .line 106
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 107
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2a

    const/16 v4, 0x58

    if-ne v0, v4, :cond_d3

    .line 108
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    .line 112
    if-ne v3, v5, :cond_2f

    .line 157
    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    move v0, v2

    :goto_30
    move v6, v3

    .line 119
    :goto_31
    if-ge v6, v5, :cond_67

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x30

    if-lt v4, v7, :cond_43

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x39

    if-le v4, v7, :cond_63

    .line 120
    :cond_43
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x61

    if-lt v4, v7, :cond_53

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x66

    if-le v4, v7, :cond_63

    .line 121
    :cond_53
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x41

    if-lt v4, v7, :cond_67

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x46

    if-gt v4, v7, :cond_67

    .line 122
    :cond_63
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_31

    .line 125
    :cond_67
    if-eq v6, v5, :cond_b1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_b1

    move v5, v2

    .line 127
    :goto_72
    if-nez v5, :cond_84

    .line 128
    sget-object v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 131
    sget-object v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v4

    if-nez v4, :cond_b3

    .line 138
    :cond_84
    if-eqz v0, :cond_bb

    .line 139
    :try_start_86
    invoke-interface {p1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_93} :catch_ce

    move-result v4

    .line 145
    :goto_94
    const v7, 0xffff

    if-le v4, v7, :cond_ca

    .line 148
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    .line 149
    aget-char v7, v4, v1

    invoke-virtual {p3, v7}, Ljava/io/Writer;->write(I)V

    .line 150
    aget-char v4, v4, v2

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    .line 155
    :goto_a7
    if-eqz v5, :cond_d1

    :goto_a9
    add-int/lit8 v1, v6, 0x2

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v1, v0, v2

    goto/16 :goto_2e

    :cond_b1
    move v5, v1

    .line 125
    goto :goto_72

    .line 132
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Semi-colon required at end of numeric entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_bb
    :try_start_bb
    invoke-interface {p1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_c8} :catch_ce

    move-result v4

    goto :goto_94

    .line 152
    :cond_ca
    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_a7

    .line 143
    :catch_ce
    move-exception v0

    goto/16 :goto_2e

    :cond_d1
    move v2, v1

    goto :goto_a9

    :cond_d3
    move v0, v1

    goto/16 :goto_30
.end method
