.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    .line 33
    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 123
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_10

    move/from16 v3, p5

    .line 124
    :goto_0
    move/from16 v0, p6

    if-ge v3, v0, :cond_1

    .line 125
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move/from16 v0, p3

    if-lt v2, v0, :cond_0

    .line 124
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 128
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 129
    add-int/lit8 v3, p6, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 130
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 134
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 135
    add-int/lit8 v7, p5, 0x1

    .line 136
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move-object v4, v2

    .line 139
    :goto_1
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v2

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v2, v6, :cond_b

    .line 141
    add-int/lit8 v2, v7, 0x1

    const/4 v4, 0x1

    move v3, v2

    :goto_2
    move/from16 v0, p6

    if-ge v3, v0, :cond_3

    .line 143
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 144
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v6, v2, :cond_11

    .line 145
    add-int/lit8 v2, v4, 0x1

    .line 142
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_2

    .line 133
    :cond_2
    const/4 v5, -0x1

    move-object v4, v2

    move/from16 v7, p5

    goto :goto_1

    .line 150
    :cond_3
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p0

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    mul-int/lit8 v6, v4, 0x2

    int-to-long v8, v6

    add-long/2addr v2, v8

    .line 152
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v5, v7

    .line 155
    :goto_4
    move/from16 v0, p6

    if-ge v5, v0, :cond_6

    .line 156
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 157
    if-eq v5, v7, :cond_4

    add-int/lit8 v4, v5, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v6, v4, :cond_5

    .line 158
    :cond_4
    and-int/lit16 v4, v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 155
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 162
    :cond_6
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 164
    :goto_5
    move/from16 v0, p6

    if-ge v7, v0, :cond_a

    .line 165
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 166
    add-int/lit8 v8, v7, 0x1

    :goto_6
    move/from16 v0, p6

    if-ge v8, v0, :cond_8

    .line 168
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v6, v5, :cond_7

    .line 174
    :goto_7
    add-int/lit8 v5, v7, 0x1

    if-ne v5, v8, :cond_9

    .line 175
    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v6, v5, :cond_9

    .line 177
    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :goto_8
    move v7, v8

    .line 191
    goto :goto_5

    .line 167
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    move/from16 v8, p6

    goto :goto_7

    .line 180
    :cond_9
    invoke-static {v4}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v10, v2

    const-wide/16 v12, -0x1

    mul-long/2addr v10, v12

    long-to-int v5, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 181
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v6, p4

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    goto :goto_8

    .line 194
    :cond_a
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 238
    :goto_9
    return-void

    .line 198
    :cond_b
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v6, 0x0

    move/from16 v2, p3

    :goto_a
    if-ge v2, v8, :cond_c

    .line 200
    invoke-virtual {v4, v2}, Lokio/ByteString;->getByte(I)B

    move-result v9

    invoke-virtual {v3, v2}, Lokio/ByteString;->getByte(I)B

    move-result v10

    if-ne v9, v10, :cond_c

    .line 201
    add-int/lit8 v6, v6, 0x1

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 208
    :cond_c
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p0

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    int-to-long v8, v6

    add-long/2addr v2, v8

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 210
    neg-int v8, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v5, p3

    .line 213
    :goto_b
    add-int v8, p3, v6

    if-ge v5, v8, :cond_d

    .line 214
    invoke-virtual {v4, v5}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 217
    :cond_d
    add-int/lit8 v4, v7, 0x1

    move/from16 v0, p6

    if-ne v4, v0, :cond_f

    .line 219
    add-int v3, p3, v6

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-ne v3, v2, :cond_e

    .line 222
    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_9

    .line 220
    :cond_e
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 225
    :cond_f
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 226
    invoke-static {v4}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v8, v2

    const-wide/16 v10, -0x1

    mul-long/2addr v8, v10

    long-to-int v5, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 227
    add-int v5, p3, v6

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_9

    .line 123
    :cond_10
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_11
    move v2, v4

    goto/16 :goto_3
.end method

.method private static intCount(Lokio/Buffer;)I
    .registers 5

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 10

    const/4 v3, 0x0

    .line 36
    array-length v0, p0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lokio/Options;

    new-array v1, v3, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 88
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 46
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 47
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 49
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 50
    aget-object v1, p0, v0

    invoke-static {v4, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 53
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    .line 60
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 61
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    .line 62
    add-int/lit8 v1, v2, 0x1

    move v5, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    .line 63
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    .line 64
    invoke-virtual {v1, v0}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 60
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 65
    :cond_4
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v6, v8, :cond_6

    .line 68
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_5

    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v5

    :goto_5
    move v5, v1

    .line 74
    goto :goto_4

    .line 72
    :cond_5
    add-int/lit8 v1, v5, 0x1

    goto :goto_5

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_7
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v5, v3

    invoke-static/range {v0 .. v7}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v0

    new-array v4, v0, [I

    .line 81
    :goto_6
    array-length v0, v4

    if-ge v3, v0, :cond_8

    .line 82
    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    move-result v0

    aput v0, v4, v3

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 84
    :cond_8
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    new-instance v1, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokio/ByteString;

    invoke-direct {v1, v0, v4}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 85
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the empty byte string is not a supported option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lokio/ByteString;
    .registers 3

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
