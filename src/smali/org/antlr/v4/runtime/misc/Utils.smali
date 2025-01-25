.class public Lorg/antlr/v4/runtime/misc/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static count(Ljava/lang/String;C)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public static escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3f

    aget-char v3, p0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    if-eqz p1, :cond_1b

    .line 64
    const/16 v3, 0xb7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_1b
    const/16 v4, 0x9

    if-ne v3, v4, :cond_25

    .line 65
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_25
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2f

    .line 66
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_2f
    const/16 v4, 0xd

    if-ne v3, v4, :cond_39

    .line 67
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 68
    :cond_39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 70
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expandTabs(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 158
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_38

    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_29

    const/16 v5, 0xa

    if-eq v4, v5, :cond_24

    add-int/lit8 v3, v3, 0x1

    .line 172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 163
    :cond_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_35

    .line 166
    :cond_29
    rem-int v4, v3, p1

    sub-int v4, p1, v4

    add-int/2addr v3, v4

    .line 168
    invoke-static {v4}, Lorg/antlr/v4/runtime/misc/Utils;->spaces(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 176
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 32
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 37
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 38
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newlines(I)Ljava/lang/String;
    .registers 2

    .line 186
    const-string v0, "\n"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->sequence(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static numNonnull([Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 50
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v0, v1, :cond_11

    aget-object v3, p0, v0

    if-eqz v3, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    return v2
.end method

.method public static readFile(Ljava/lang/String;)[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)[C
    .registers 4
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

    long-to-int v1, v0

    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 108
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1c

    .line 111
    :cond_17
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 115
    :goto_1c
    :try_start_1c
    new-array p1, v1, [C

    .line 116
    invoke-virtual {p0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    if-ge v0, v1, :cond_28

    .line 118
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    .line 122
    :cond_28
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    return-object p1

    :catchall_2c
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    throw p1
.end method

.method public static removeAllElements(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 58
    :cond_3
    :goto_3
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    return-void
.end method

.method public static sequence(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    :goto_6
    if-gt v1, p0, :cond_e

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 193
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static spaces(I)Ljava/lang/String;
    .registers 2

    .line 181
    const-string v0, " "

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/Utils;->sequence(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Lorg/antlr/v4/runtime/misc/IntegerList;)[C
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toMap([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 132
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 133
    aget-object v2, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method public static toSet(Ljava/util/BitSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    .line 144
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 145
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_c
    if-ltz v1, :cond_18

    .line 147
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_c

    :cond_18
    return-object v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_12

    .line 82
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_17

    .line 85
    :cond_12
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 89
    :goto_17
    :try_start_17
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    throw p0
.end method
