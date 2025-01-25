.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return-void

    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_35

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_f

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2f

    :cond_f
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2f

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1b

    const/16 v2, 0x39

    if-le v1, v2, :cond_2f

    :cond_1b
    const/16 v2, 0x61

    if-lt v1, v2, :cond_23

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2f

    :cond_23
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2b

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2f

    :cond_2b
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_36

    :cond_2f
    const/4 v1, 0x1

    :goto_30
    xor-int/lit8 v2, p3, 0x1

    if-ne v1, v2, :cond_38

    move p2, v0

    :cond_35
    return p2

    :cond_36
    const/4 v1, 0x0

    goto :goto_30

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_27

    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_27
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 24
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v2, 0x0

    const/16 v3, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2, v4}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    if-ne v3, v2, :cond_1c

    const/4 v3, 0x0

    :goto_1b
    return-object v3

    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-static {v4}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    :cond_30
    const/4 v3, 0x0

    goto :goto_1b

    :cond_32
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_43

    const/4 v3, 0x0

    goto :goto_1b

    :cond_43
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, -0x1

    const-wide v8, 0xe677d21fdbffL

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_52
    move/from16 v0, v16

    if-ge v2, v0, :cond_e0

    const/16 v3, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v17

    const/16 v3, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    if-ge v3, v0, :cond_99

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v2, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :goto_7e
    const-string v3, "expires"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const/4 v3, 0x0

    :try_start_89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v3, v0}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_92} :catch_16a

    move-result-wide v8

    move-wide v2, v6

    :goto_94
    const/4 v13, 0x1

    move-wide v6, v2

    :cond_96
    :goto_96
    add-int/lit8 v2, v17, 0x1

    goto :goto_52

    :cond_99
    const-string v2, ""

    goto :goto_7e

    :cond_9c
    const-string v3, "max-age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    :try_start_a6
    invoke-static {v2}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_a9} :catch_167

    move-result-wide v2

    goto :goto_94

    :cond_ab
    const-string v3, "domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    :try_start_b5
    invoke-static {v2}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b5 .. :try_end_b8} :catch_16a

    move-result-object v2

    const/4 v12, 0x0

    move-object v14, v2

    goto :goto_96

    :cond_bc
    const-string v3, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c8

    move-object v15, v2

    goto :goto_96

    :cond_c8
    const-string v2, "secure"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const/4 v10, 0x1

    goto :goto_96

    :cond_d4
    const-string v2, "httponly"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    const/4 v11, 0x1

    goto :goto_96

    :cond_e0
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v6, v16

    if-nez v16, :cond_107

    :cond_e8
    move-wide v6, v2

    :goto_e9
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    if-nez v14, :cond_136

    move-object v8, v2

    :goto_f0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_141

    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v2

    invoke-virtual {v2, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_141

    const/4 v3, 0x0

    goto/16 :goto_1b

    :cond_107
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_134

    const-wide v2, 0x20c49ba5e353f7L

    cmp-long v2, v6, v2

    if-gtz v2, :cond_12e

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v6

    :goto_119
    add-long v2, v2, p0

    cmp-long v6, v2, p0

    if-ltz v6, :cond_128

    const-wide v6, 0xe677d21fdbffL

    cmp-long v6, v2, v6

    if-lez v6, :cond_e8

    :cond_128
    const-wide v6, 0xe677d21fdbffL

    goto :goto_e9

    :cond_12e
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_119

    :cond_134
    move-wide v6, v8

    goto :goto_e9

    :cond_136
    invoke-static {v2, v14}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13f

    const/4 v3, 0x0

    goto/16 :goto_1b

    :cond_13f
    move-object v8, v14

    goto :goto_f0

    :cond_141
    const-string v9, "/"

    if-eqz v15, :cond_14d

    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_165

    :cond_14d
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eqz v3, :cond_15e

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_15e
    :goto_15e
    new-instance v3, Lokhttp3/Cookie;

    invoke-direct/range {v3 .. v13}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_1b

    :cond_165
    move-object v9, v15

    goto :goto_15e

    :catch_167
    move-exception v2

    goto/16 :goto_96

    :catch_16a
    move-exception v2

    goto/16 :goto_96
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_2b

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v5

    if-nez v5, :cond_1f

    :goto_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_1f
    if-nez v1, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1b

    :cond_2b
    if-eqz v1, :cond_32

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_31

    :cond_37
    move-object v0, v1

    goto :goto_26
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_15
    invoke-static {p0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .registers 13

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    sget-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    :goto_11
    if-ge v6, p2, :cond_a6

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {p0, v8, p2, v9}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4f

    sget-object v6, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_47
    :goto_47
    add-int/lit8 v6, v8, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, p2, v8}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    goto :goto_11

    :cond_4f
    const/4 v6, -0x1

    if-ne v3, v6, :cond_68

    sget-object v6, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_68

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_47

    :cond_68
    const/4 v6, -0x1

    if-ne v2, v6, :cond_8d

    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_8d

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    goto :goto_47

    :cond_8d
    const/4 v6, -0x1

    if-ne v5, v6, :cond_47

    sget-object v6, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_47

    :cond_a6
    const/16 v6, 0x46

    if-lt v5, v6, :cond_b0

    const/16 v6, 0x63

    if-gt v5, v6, :cond_b0

    add-int/lit16 v5, v5, 0x76c

    :cond_b0
    if-ltz v5, :cond_b8

    const/16 v6, 0x45

    if-gt v5, v6, :cond_b8

    add-int/lit16 v5, v5, 0x7d0

    :cond_b8
    const/16 v6, 0x641

    if-lt v5, v6, :cond_129

    const/4 v6, -0x1

    if-eq v2, v6, :cond_123

    const/4 v6, 0x1

    if-lt v3, v6, :cond_11d

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_11d

    if-ltz v4, :cond_117

    const/16 v6, 0x17

    if-gt v4, v6, :cond_117

    if-ltz v1, :cond_111

    const/16 v6, 0x3b

    if-gt v1, v6, :cond_111

    if-ltz v0, :cond_10b

    const/16 v6, 0x3b

    if-gt v0, v6, :cond_10b

    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v7, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v6, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_f

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d

    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    goto :goto_c

    :catch_f
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_c

    :cond_26
    throw v2
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_b

    :cond_26
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/Cookie;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lokhttp3/Cookie;

    iget-object v1, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public expiresAt()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public hostOnly()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_f
    if-nez v1, :cond_1d

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v1, v2}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_f

    :cond_1d
    iget-object v1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v1}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_2f
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v0, :cond_25

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_5b

    const-string v0, "; max-age=0"

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v0, :cond_3a

    const-string v0, "; domain="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_35

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    const-string v0, "; path="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v0, :cond_4d

    const-string v0, "; secure"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v0, :cond_56

    const-string v0, "; httponly"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const-string v0, "; expires="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
