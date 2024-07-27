.class public Lorg/apache/tools/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/zip/ZipShort;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 46
    const-class v0, Lorg/apache/tools/zip/AsiExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lorg/apache/tools/zip/JarMarker;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lorg/apache/tools/zip/UnicodePathExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 92
    if-eqz v0, :cond_0

    .line 95
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipExtraField;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-direct {v1}, Ljava/lang/InstantiationException;-><init>()V

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-direct {v1}, Ljava/lang/InstantiationException;-><init>()V

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/UnrecognizedExtraField;

    invoke-direct {v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;-><init>()V

    .line 105
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/tools/zip/ZipShort;)V

    goto :goto_0
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .registers 11

    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 243
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 245
    :goto_0
    array-length v2, p0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 247
    :cond_0
    mul-int/lit8 v3, v2, 0x4

    .line 248
    array-length v5, p0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, p0, v4

    .line 249
    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v6

    add-int/2addr v3, v6

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 243
    goto :goto_0

    .line 251
    :cond_2
    new-array v5, v3, [B

    move v3, v1

    move v4, v1

    .line 253
    :goto_2
    if-ge v4, v2, :cond_3

    .line 254
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v1, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-static {v6, v1, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v6

    .line 259
    add-int/lit8 v7, v3, 0x4

    array-length v8, v6

    invoke-static {v6, v1, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 262
    :cond_3
    if-eqz v0, :cond_4

    .line 263
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v0

    .line 264
    array-length v2, v0

    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    :cond_4
    return-object v5
.end method

.method public static mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .registers 11

    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 209
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 211
    :goto_0
    array-length v2, p0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 213
    :cond_0
    mul-int/lit8 v3, v2, 0x4

    .line 214
    array-length v5, p0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, p0, v4

    .line 215
    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v6

    add-int/2addr v3, v6

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0

    .line 218
    :cond_2
    new-array v5, v3, [B

    move v3, v1

    move v4, v1

    .line 220
    :goto_2
    if-ge v4, v2, :cond_3

    .line 221
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v1, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-static {v6, v1, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v6

    .line 226
    add-int/lit8 v7, v3, 0x4

    array-length v8, v6

    invoke-static {v6, v1, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    :cond_3
    if-eqz v0, :cond_4

    .line 230
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v0

    .line 231
    array-length v2, v0

    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_4
    return-object v5
.end method

.method public static parse([B)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZ)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 133
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const/4 v1, 0x0

    move v3, v1

    .line 154
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-gt v3, v1, :cond_0

    .line 155
    new-instance v1, Lorg/apache/tools/zip/ZipShort;

    invoke-direct {v1, p0, v3}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    .line 156
    new-instance v2, Lorg/apache/tools/zip/ZipShort;

    add-int/lit8 v5, v3, 0x2

    invoke-direct {v2, p0, v5}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v5

    .line 157
    add-int/lit8 v2, v3, 0x4

    add-int/2addr v2, v5

    array-length v6, p0

    if-le v2, v6, :cond_2

    .line 158
    invoke-virtual {p2}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown UnparseableExtraField key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p2}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :pswitch_0
    new-instance v1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    invoke-direct {v1}, Lorg/apache/tools/zip/UnparseableExtraFieldData;-><init>()V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    array-length v2, p0

    sub-int/2addr v2, v3

    invoke-virtual {v1, p0, v3, v2}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 171
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    :pswitch_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/tools/zip/ZipExtraField;

    .line 199
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/zip/ZipExtraField;

    return-object v1

    .line 169
    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v3

    invoke-virtual {v1, p0, v3, v2}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    goto :goto_1

    .line 160
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad extra field starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Block length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes exceeds remaining data of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_2
    :try_start_0
    invoke-static {v1}, Lorg/apache/tools/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v2

    .line 185
    if-nez p1, :cond_3

    instance-of v1, v2, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    if-nez v1, :cond_4

    .line 186
    :cond_3
    add-int/lit8 v1, v3, 0x4

    invoke-interface {v2, p0, v1, v5}, Lorg/apache/tools/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 191
    :goto_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v1, v5, 0x4

    add-int/2addr v1, v3

    move v3, v1

    .line 196
    goto/16 :goto_0

    .line 188
    :cond_4
    move-object v0, v2

    check-cast v0, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    move-object v1, v0

    .line 189
    add-int/lit8 v6, v3, 0x4

    invoke-interface {v1, p0, v6, v5}, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 192
    :catch_0
    move-exception v1

    .line 193
    :goto_3
    new-instance v2, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :catch_1
    move-exception v1

    goto :goto_3

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipExtraField;

    .line 65
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'s no-arg constructor threw an exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'s no-arg constructor not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'s no-arg constructor is not public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :catch_3
    move-exception v0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a concrete class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :catch_4
    move-exception v0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t implement ZipExtraField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
