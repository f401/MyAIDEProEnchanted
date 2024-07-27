.class public Lorg/apache/tools/ant/util/Native2AsciiUtils;
.super Ljava/lang/Object;
.source "Native2AsciiUtils.java"


# static fields
.field private static final MAX_ASCII:I = 0x7f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ascii2native(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 58
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v2, -0x5

    if-lt v0, v4, :cond_1

    .line 59
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 62
    const/16 v5, 0x75

    if-ne v4, v5, :cond_2

    .line 63
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v5}, Lorg/apache/tools/ant/util/Native2AsciiUtils;->tryParse(Ljava/lang/String;I)I

    move-result v5

    .line 64
    if-ltz v5, :cond_2

    .line 65
    int-to-char v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v0, v0, 0x4

    .line 67
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native2ascii(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-char v5, v3, v0

    .line 38
    const/16 v6, 0x7f

    if-gt v5, v6, :cond_0

    .line 39
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const-string v6, "\\u%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static tryParse(Ljava/lang/String;I)I
    .registers 4

    .line 79
    add-int/lit8 v0, p1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, -0x1

    goto :goto_0
.end method
