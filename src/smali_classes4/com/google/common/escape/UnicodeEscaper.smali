.class public abstract Lcom/google/common/escape/UnicodeEscaper;
.super Lcom/google/common/escape/Escaper;
.source "UnicodeEscaper.java"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .registers 7

    .line 246
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-ge p1, p2, :cond_98

    .line 248
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 249
    const v2, 0xd800

    if-lt v0, v2, :cond_15

    const v2, 0xdfff

    if-le v0, v2, :cond_16

    .line 260
    :cond_15
    :goto_15
    return v0

    .line 252
    :cond_16
    const v2, 0xdbff

    if-gt v0, v2, :cond_62

    .line 254
    if-ne v1, p2, :cond_1f

    .line 255
    neg-int v0, v0

    goto :goto_15

    .line 258
    :cond_1f
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 259
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 260
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_15

    .line 262
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected low surrogate but got char \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' with value "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_98
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static growBuffer([CII)[C
    .registers 5

    const/4 v1, 0x0

    .line 293
    if-ltz p2, :cond_b

    .line 296
    new-array v0, p2, [C

    .line 297
    if-lez p1, :cond_a

    .line 298
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_a
    return-object v0

    .line 294
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cannot increase internal buffer any further"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 105
    if-ne v1, v0, :cond_f

    :goto_e
    return-object p1

    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 161
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    move v2, v4

    move v0, v4

    .line 165
    :goto_b
    if-ge p2, v5, :cond_52

    .line 166
    invoke-static {p1, p2, v5}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 167
    if-ltz v3, :cond_4a

    .line 173
    invoke-virtual {p0, v3}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 174
    invoke-static {v3}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x2

    :goto_1e
    add-int/2addr v3, p2

    .line 175
    if-eqz v6, :cond_43

    .line 176
    sub-int v7, p2, v2

    .line 180
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 181
    array-length v9, v1

    if-ge v9, v8, :cond_33

    .line 182
    sub-int v9, v5, p2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x20

    invoke-static {v1, v0, v8}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 186
    :cond_33
    if-lez v7, :cond_39

    .line 187
    invoke-virtual {p1, v2, p2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 188
    add-int/2addr v0, v7

    .line 190
    :cond_39
    array-length v2, v6

    if-lez v2, :cond_42

    .line 191
    array-length v2, v6

    invoke-static {v6, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    array-length v2, v6

    add-int/2addr v0, v2

    :cond_42
    move v2, v3

    .line 197
    :cond_43
    invoke-virtual {p0, p1, v3, v5}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_b

    .line 174
    :cond_48
    const/4 v3, 0x1

    goto :goto_1e

    .line 168
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_52
    sub-int v3, v5, v2

    .line 203
    if-lez v3, :cond_62

    .line 204
    add-int/2addr v3, v0

    .line 205
    array-length v6, v1

    if-ge v6, v3, :cond_5e

    .line 206
    invoke-static {v1, v0, v3}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 208
    :cond_5e
    invoke-virtual {p1, v2, v5, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v3

    .line 209
    :cond_62
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 6

    .line 131
    :goto_0
    if-ge p2, p3, :cond_e

    .line 133
    invoke-static {p1, p2, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 134
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    if-eqz v1, :cond_f

    .line 139
    :cond_e
    return p2

    .line 137
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    :goto_16
    add-int/2addr p2, v0

    .line 138
    goto :goto_0

    .line 137
    :cond_18
    const/4 v0, 0x1

    goto :goto_16
.end method
