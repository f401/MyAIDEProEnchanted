.class public final Lio/github/zeroaicy/readclass/classInfo/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final INPUT_STREAM_DATA_CHUNK_SIZE:I = 0x1000


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asArrayList([B)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 86
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 88
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 90
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 89
    :cond_13
    aget-byte v2, p0, v1

    .line 90
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([C)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 119
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 121
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 123
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 122
    :cond_13
    aget-char v2, p0, v1

    .line 123
    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([D)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 163
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 165
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 167
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 166
    :cond_13
    aget-wide v2, p0, v1

    .line 167
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 141
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 143
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 145
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 144
    :cond_13
    aget v2, p0, v1

    .line 145
    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 130
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 132
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 134
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 133
    :cond_13
    aget v2, p0, v1

    .line 134
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 152
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 154
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 156
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 155
    :cond_13
    aget-wide v2, p0, v1

    .line 156
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([S)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 108
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 110
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 112
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 111
    :cond_13
    aget-short v2, p0, v1

    .line 112
    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static asArrayList([Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 97
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 99
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 101
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_13

    return-object v0

    .line 100
    :cond_13
    aget-boolean v2, p0, v1

    .line 101
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static basicTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    .line 55
    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_12

    .line 56
    check-cast p0, [B

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 58
    :cond_12
    instance-of v0, p0, [Z

    if-eqz v0, :cond_21

    .line 59
    check-cast p0, [Z

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 61
    :cond_21
    instance-of v0, p0, [S

    if-eqz v0, :cond_30

    .line 62
    check-cast p0, [S

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([S)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 64
    :cond_30
    instance-of v0, p0, [C

    if-eqz v0, :cond_3f

    .line 65
    check-cast p0, [C

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 67
    :cond_3f
    instance-of v0, p0, [I

    if-eqz v0, :cond_4e

    .line 68
    check-cast p0, [I

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 70
    :cond_4e
    instance-of v0, p0, [J

    if-eqz v0, :cond_5d

    .line 71
    check-cast p0, [J

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([J)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 73
    :cond_5d
    instance-of v0, p0, [F

    if-eqz v0, :cond_6c

    .line 74
    check-cast p0, [F

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([F)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_7a

    .line 76
    :cond_6c
    instance-of v0, p0, [D

    if-eqz v0, :cond_7a

    .line 77
    check-cast p0, [D

    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->asArrayList([D)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    :cond_7a
    :goto_7a
    return-object p0
.end method

.method public static readStream(Ljava/io/InputStream;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_31

    .line 28
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->toString()Ljava/lang/String;

    .line 34
    :goto_e
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_26

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p1, :cond_25

    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_25
    return-object v1

    .line 35
    :cond_26
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2a

    goto :goto_e

    :catchall_2a
    move-exception v0

    if-eqz p1, :cond_30

    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_30
    throw v0

    .line 24
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "inputStream not null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw p0

    :goto_3a
    goto :goto_39
.end method
