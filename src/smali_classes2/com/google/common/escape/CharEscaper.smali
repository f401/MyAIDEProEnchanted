.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "CharEscaper.java"


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .registers 5

    const/4 v1, 0x0

    .line 163
    if-ltz p2, :cond_1

    .line 166
    new-array v0, p2, [C

    .line 167
    if-lez p1, :cond_0

    .line 168
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    :cond_0
    return-object v0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cannot increase internal buffer any further"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 60
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 65
    :cond_0
    return-object p1

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    const/4 v5, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 100
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v0

    .line 101
    array-length v3, v0

    move v2, v5

    move v4, v5

    .line 107
    :goto_0
    if-ge p2, v6, :cond_2

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v7

    .line 113
    if-nez v7, :cond_0

    move-object v1, v0

    .line 107
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_0
    array-length v8, v7

    .line 118
    sub-int v9, p2, v2

    .line 123
    add-int v1, v4, v9

    add-int/2addr v1, v8

    .line 124
    if-ge v3, v1, :cond_6

    .line 125
    sub-int v3, v6, p2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 126
    invoke-static {v0, v4, v3}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 130
    :goto_2
    if-lez v9, :cond_5

    .line 131
    invoke-virtual {p1, v2, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 132
    add-int v0, v4, v9

    .line 136
    :goto_3
    if-lez v8, :cond_1

    .line 137
    invoke-static {v7, v5, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int/2addr v0, v8

    .line 140
    :cond_1
    add-int/lit8 v2, p2, 0x1

    move v4, v0

    goto :goto_1

    .line 144
    :cond_2
    sub-int v1, v6, v2

    .line 145
    if-lez v1, :cond_4

    .line 146
    add-int/2addr v1, v4

    .line 147
    if-ge v3, v1, :cond_3

    .line 150
    invoke-static {v0, v4, v1}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v0

    .line 152
    :cond_3
    invoke-virtual {p1, v2, v6, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v1

    .line 153
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v5, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method
