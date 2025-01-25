.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .registers 3

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .registers 11

    const-wide/16 v6, 0x1

    const v3, 0xdfff

    .line 82
    if-eqz p0, :cond_b8

    .line 83
    if-ltz p1, :cond_a1

    .line 84
    if-lt p2, p1, :cond_82

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_5f

    .line 92
    const-wide/16 v0, 0x0

    move-wide v4, v0

    .line 93
    :goto_14
    if-ge p1, p2, :cond_c0

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 96
    const/16 v0, 0x80

    if-ge v1, v0, :cond_25

    .line 98
    add-long v0, v4, v6

    .line 99
    add-int/lit8 v2, p1, 0x1

    :goto_22
    move-wide v4, v0

    move p1, v2

    .line 124
    goto :goto_14

    .line 101
    :cond_25
    const/16 v0, 0x800

    if-ge v1, v0, :cond_2f

    .line 103
    const-wide/16 v0, 0x2

    add-long/2addr v0, v4

    .line 104
    add-int/lit8 v2, p1, 0x1

    goto :goto_22

    .line 106
    :cond_2f
    const v0, 0xd800

    if-lt v1, v0, :cond_36

    if-le v1, v3, :cond_3c

    .line 108
    :cond_36
    const-wide/16 v0, 0x3

    add-long/2addr v0, v4

    .line 109
    add-int/lit8 v2, p1, 0x1

    goto :goto_22

    .line 112
    :cond_3c
    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_57

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    :goto_46
    const v2, 0xdbff

    if-gt v1, v2, :cond_52

    const v1, 0xdc00

    if-lt v0, v1, :cond_52

    if-le v0, v3, :cond_59

    .line 115
    :cond_52
    add-long v0, v4, v6

    .line 116
    add-int/lit8 v2, p1, 0x1

    goto :goto_22

    .line 112
    :cond_57
    const/4 v0, 0x0

    goto :goto_46

    .line 120
    :cond_59
    const-wide/16 v0, 0x4

    add-long/2addr v0, v4

    .line 121
    add-int/lit8 v2, p1, 0x2

    goto :goto_22

    .line 88
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginIndex < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_c0
    return-wide v4
.end method
