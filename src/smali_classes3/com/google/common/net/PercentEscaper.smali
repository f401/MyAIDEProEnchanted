.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field private static final PLUS_SIGN:[C

.field private static final UPPER_HEX_DIGITS:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    .line 60
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz p2, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    .line 102
    invoke-static {v0}, Lcom/google/common/net/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 103
    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .registers 7

    const/4 v0, 0x0

    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 113
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v5, v3, v2

    .line 114
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    .line 117
    array-length v2, v3

    :goto_1
    if-ge v0, v2, :cond_1

    aget-char v4, v3, v0

    .line 118
    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    return-object v1
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    .line 150
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/net/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_1
    return-object p1

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .registers 15

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x25

    .line 161
    iget-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    if-eqz v0, :cond_1

    .line 164
    sget-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    goto :goto_0

    .line 165
    :cond_1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    .line 168
    sget-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    .line 171
    ushr-int/lit8 v2, p1, 0x4

    aget-char v2, v0, v2

    .line 172
    new-array v0, v12, [C

    aput-char v9, v0, v8

    aput-char v2, v0, v10

    aput-char v1, v0, v11

    goto :goto_0

    .line 173
    :cond_2
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_3

    .line 176
    sget-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    .line 180
    ushr-int/lit8 v2, p1, 0x4

    .line 181
    and-int/lit8 v3, v2, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v3, v0, v3

    .line 182
    ushr-int/lit8 v2, v2, 0x2

    .line 183
    and-int/lit8 v4, v2, 0xf

    aget-char v4, v0, v4

    .line 184
    ushr-int/lit8 v2, v2, 0x4

    or-int/lit8 v2, v2, 0xc

    aget-char v2, v0, v2

    .line 186
    const/4 v0, 0x6

    new-array v0, v0, [C

    aput-char v9, v0, v8

    aput-char v2, v0, v10

    aput-char v4, v0, v11

    aput-char v9, v0, v12

    const/4 v2, 0x4

    aput-char v3, v0, v2

    const/4 v2, 0x5

    aput-char v1, v0, v2

    goto :goto_0

    .line 187
    :cond_3
    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 190
    sget-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    .line 196
    ushr-int/lit8 v2, p1, 0x4

    .line 197
    and-int/lit8 v3, v2, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v3, v0, v3

    .line 198
    ushr-int/lit8 v2, v2, 0x2

    .line 199
    and-int/lit8 v4, v2, 0xf

    aget-char v4, v0, v4

    .line 200
    ushr-int/lit8 v2, v2, 0x4

    .line 201
    and-int/lit8 v5, v2, 0x3

    or-int/lit8 v5, v5, 0x8

    aget-char v5, v0, v5

    .line 202
    ushr-int/lit8 v2, v2, 0x2

    aget-char v2, v0, v2

    .line 204
    const/16 v0, 0x9

    new-array v0, v0, [C

    aput-char v9, v0, v8

    const/16 v6, 0x45

    aput-char v6, v0, v10

    aput-char v2, v0, v11

    aput-char v9, v0, v12

    const/4 v2, 0x4

    aput-char v5, v0, v2

    const/4 v2, 0x5

    aput-char v4, v0, v2

    const/4 v2, 0x6

    aput-char v9, v0, v2

    const/4 v2, 0x7

    aput-char v3, v0, v2

    const/16 v2, 0x8

    aput-char v1, v0, v2

    goto/16 :goto_0

    .line 205
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 206
    sget-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    .line 215
    ushr-int/lit8 v2, p1, 0x4

    .line 216
    and-int/lit8 v3, v2, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v3, v0, v3

    .line 217
    ushr-int/lit8 v2, v2, 0x2

    .line 218
    and-int/lit8 v4, v2, 0xf

    aget-char v4, v0, v4

    .line 219
    ushr-int/lit8 v2, v2, 0x4

    .line 220
    and-int/lit8 v5, v2, 0x3

    or-int/lit8 v5, v5, 0x8

    aget-char v5, v0, v5

    .line 221
    ushr-int/lit8 v2, v2, 0x2

    .line 222
    and-int/lit8 v6, v2, 0xf

    aget-char v6, v0, v6

    .line 223
    ushr-int/lit8 v2, v2, 0x4

    .line 224
    and-int/lit8 v7, v2, 0x3

    or-int/lit8 v7, v7, 0x8

    aget-char v7, v0, v7

    .line 225
    ushr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x7

    aget-char v2, v0, v2

    .line 227
    const/16 v0, 0xc

    new-array v0, v0, [C

    aput-char v9, v0, v8

    const/16 v8, 0x46

    aput-char v8, v0, v10

    aput-char v2, v0, v11

    aput-char v9, v0, v12

    const/4 v2, 0x4

    aput-char v7, v0, v2

    const/4 v2, 0x5

    aput-char v6, v0, v2

    const/4 v2, 0x6

    aput-char v9, v0, v2

    const/4 v2, 0x7

    aput-char v5, v0, v2

    const/16 v2, 0x8

    aput-char v4, v0, v2

    const/16 v2, 0x9

    aput-char v9, v0, v2

    const/16 v2, 0xa

    aput-char v3, v0, v2

    const/16 v2, 0xb

    aput-char v1, v0, v2

    goto/16 :goto_0

    .line 230
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid unicode character value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 7

    .line 129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    if-ge p2, p3, :cond_0

    .line 131
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v0, v1, v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    return p2

    .line 130
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
