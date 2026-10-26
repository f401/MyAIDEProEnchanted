.class public Lorg/antlr/v4/runtime/misc/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static count(Ljava/lang/String;C)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 199
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-char v4, v2, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_0

    .line 64
    const/16 v4, 0xb7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 65
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 66
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 67
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expandTabs(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    .line 156
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 158
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_2

    .line 166
    :cond_2
    rem-int v4, v2, p1

    sub-int v4, p1, v4

    add-int/2addr v2, v4

    .line 168
    invoke-static {v4}, Lorg/antlr/v4/runtime/misc/Utils;->spaces(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 37
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 38
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newlines(I)Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "\n"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->sequence(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numNonnull([Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    .line 50
    :cond_0
    return v0

    :cond_1
    array-length v3, p0

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v2, v0

    .line 106
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 108
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v0

    .line 115
    :goto_0
    :try_start_0
    new-array v0, v2, [C

    .line 116
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 118
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([CI)[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object v0

    .line 111
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    throw v0
.end method

.method public static removeAllElements(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 58
    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sequence(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p0, :cond_0

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static spaces(I)Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, " "

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->sequence(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Lorg/antlr/v4/runtime/misc/IntegerList;)[C
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public static toMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 132
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 133
    aget-object v2, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toSet(Ljava/util/BitSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 3

    const/4 v2, 0x0

    .line 144
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v2, [I

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 145
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/antlr/v4/runtime/misc/Utils;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    .line 82
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 89
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    throw v1
.end method
