.class public Lsun/misc/Regexp;
.super Ljava/lang/Object;
.source "Regexp.java"


# instance fields
.field public exact:Z

.field public exp:Ljava/lang/String;

.field public ignoreCase:Z

.field public mids:[Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public prefixLen:I

.field public suffix:Ljava/lang/String;

.field public suffixLen:I

.field public totalLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x2a

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lsun/misc/Regexp;->exp:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 62
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 63
    if-gez v0, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lsun/misc/Regexp;->totalLen:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/Regexp;->exact:Z

    .line 98
    :cond_0
    return-void

    .line 67
    :cond_1
    iput v0, p0, Lsun/misc/Regexp;->prefixLen:I

    .line 68
    if-nez v0, :cond_2

    .line 69
    iput-object v3, p0, Lsun/misc/Regexp;->prefix:Ljava/lang/String;

    .line 72
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/misc/Regexp;->suffixLen:I

    .line 73
    if-nez v2, :cond_3

    .line 74
    iput-object v3, p0, Lsun/misc/Regexp;->suffix:Ljava/lang/String;

    :goto_1
    move v2, v0

    move v3, v1

    .line 79
    :goto_2
    if-ge v2, v4, :cond_4

    if-ltz v2, :cond_4

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/Regexp;->prefix:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_3
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/Regexp;->suffix:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_4
    iget v2, p0, Lsun/misc/Regexp;->prefixLen:I

    iget v4, p0, Lsun/misc/Regexp;->suffixLen:I

    add-int/2addr v2, v4

    iput v2, p0, Lsun/misc/Regexp;->totalLen:I

    .line 84
    if-lez v3, :cond_0

    .line 85
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lsun/misc/Regexp;->mids:[Ljava/lang/String;

    .line 87
    :goto_3
    if-ge v1, v3, :cond_0

    .line 88
    add-int/lit8 v2, v0, 0x1

    .line 89
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 90
    if-ge v2, v0, :cond_5

    .line 91
    iget-object v4, p0, Lsun/misc/Regexp;->mids:[Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 92
    iget v2, p0, Lsun/misc/Regexp;->totalLen:I

    iget-object v4, p0, Lsun/misc/Regexp;->mids:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lsun/misc/Regexp;->totalLen:I

    .line 94
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method final matches(Ljava/lang/String;)Z
    .registers 4

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Regexp;->matches(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method matches(Ljava/lang/String;II)Z
    .registers 14

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lsun/misc/Regexp;->exact:Z

    if-eqz v0, :cond_1

    .line 109
    iget v0, p0, Lsun/misc/Regexp;->totalLen:I

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lsun/misc/Regexp;->exp:Ljava/lang/String;

    iget-boolean v1, p0, Lsun/misc/Regexp;->ignoreCase:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 110
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v6

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    iget v0, p0, Lsun/misc/Regexp;->totalLen:I

    if-lt p3, v0, :cond_0

    .line 113
    iget v5, p0, Lsun/misc/Regexp;->prefixLen:I

    if-lez v5, :cond_2

    iget-object v0, p0, Lsun/misc/Regexp;->prefix:Ljava/lang/String;

    iget-boolean v1, p0, Lsun/misc/Regexp;->ignoreCase:Z

    move-object v3, p1

    move v4, p2

    .line 114
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget v5, p0, Lsun/misc/Regexp;->suffixLen:I

    if-lez v5, :cond_3

    iget-object v0, p0, Lsun/misc/Regexp;->suffix:Ljava/lang/String;

    iget-boolean v1, p0, Lsun/misc/Regexp;->ignoreCase:Z

    .line 118
    add-int v3, p2, p3

    sub-int v4, v3, v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :cond_3
    iget-object v0, p0, Lsun/misc/Regexp;->mids:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v2, v6

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    array-length v8, v0

    .line 125
    iget v0, p0, Lsun/misc/Regexp;->prefixLen:I

    add-int/2addr v0, p2

    .line 126
    add-int v1, p2, p3

    iget v3, p0, Lsun/misc/Regexp;->suffixLen:I

    sub-int v9, v1, v3

    move v7, v2

    move v1, v0

    .line 127
    :goto_1
    if-ge v7, v8, :cond_6

    .line 128
    iget-object v0, p0, Lsun/misc/Regexp;->mids:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    .line 130
    :goto_2
    add-int v1, v4, v5

    if-gt v1, v9, :cond_5

    iget-boolean v1, p0, Lsun/misc/Regexp;->ignoreCase:Z

    move-object v3, p1

    .line 131
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    :cond_5
    add-int v0, v4, v5

    if-gt v0, v9, :cond_0

    .line 136
    add-int v1, v4, v5

    .line 127
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    move v2, v6

    .line 138
    goto :goto_0
.end method
