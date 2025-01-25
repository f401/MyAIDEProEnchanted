.class public abstract Lcom/sun/tools/javac/util/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljavax/lang/model/element/Name;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/Name$Table;
    }
.end annotation


# instance fields
.field public final table:Lcom/sun/tools/javac/util/Name$Table;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name$Table;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    .line 43
    return-void
.end method


# virtual methods
.method public append(CLcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 7

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    .line 88
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 89
    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/util/Name;->getBytes([BI)V

    .line 90
    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/sun/tools/javac/util/Name;->getBytes([BI)V

    .line 92
    iget-object v0, p0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/Name$Table;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public append(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 6

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 78
    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/util/Name;->getBytes([BI)V

    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/sun/tools/javac/util/Name;->getBytes([BI)V

    .line 80
    iget-object v0, p0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/Name$Table;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/sun/tools/javac/util/Name;)I
    .registers 4

    .line 98
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getByteArray()[B
.end method

.method public abstract getByteAt(I)B
.end method

.method public abstract getByteLength()I
.end method

.method public abstract getByteOffset()I
.end method

.method public getBytes([BI)V
    .registers 6

    .line 173
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    return-void
.end method

.method public abstract getIndex()I
.end method

.method public isEmpty()Z
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lastIndexOf(B)I
    .registers 6

    .line 110
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 113
    :goto_e
    if-ltz v0, :cond_19

    add-int v3, v2, v0

    aget-byte v3, v1, v3

    if-eq v3, p1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 114
    :cond_19
    return v0
.end method

.method public length()I
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public startsWith(Lcom/sun/tools/javac/util/Name;)Z
    .registers 12

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v3

    .line 122
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v4

    .line 123
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v5

    .line 124
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v6

    .line 125
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v7

    move v1, v0

    .line 128
    :goto_1a
    if-ge v1, v7, :cond_2b

    if-ge v1, v4, :cond_2b

    add-int v8, v3, v1

    aget-byte v8, v2, v8

    add-int v9, v6, v1

    aget-byte v9, v5, v9

    if-ne v8, v9, :cond_2b

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 132
    :cond_2b
    if-ne v1, v7, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0
.end method

.method public subName(II)Lcom/sun/tools/javac/util/Name;
    .registers 7

    .line 139
    if-ge p2, p1, :cond_3

    move p2, p1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v2

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Name$Table;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUtf()[B
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    new-array v0, v0, [B

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Name;->getBytes([BI)V

    .line 154
    return-object v0
.end method
