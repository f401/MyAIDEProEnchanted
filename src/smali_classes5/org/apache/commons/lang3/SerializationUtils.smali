.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 150
    :goto_3
    return-object v0

    .line 138
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    .line 139
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    :try_start_d
    new-instance v2, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1a} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_34

    .line 141
    :try_start_1a
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2d

    .line 150
    :try_start_20
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_34

    goto :goto_3

    .line 152
    :catch_24
    move-exception v0

    .line 153
    new-instance v1, Lorg/apache/commons/lang3/SerializationException;

    const-string v2, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catchall_2d
    move-exception v0

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 152
    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    :goto_33
    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_34} :catch_24
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    .line 154
    :catch_34
    move-exception v0

    .line 155
    new-instance v1, Lorg/apache/commons/lang3/SerializationException;

    const-string v2, "IOException while reading or closing cloned object data"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :catchall_3d
    move-exception v1

    goto :goto_33
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 212
    const-string v0, "inputStream"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :try_start_8
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_d} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_25

    .line 215
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    move-result-object v1

    .line 216
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_25

    return-object v1

    .line 213
    :catchall_15
    move-exception v1

    :try_start_16
    throw v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 217
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_23

    :goto_1b
    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_25

    :catch_1c
    move-exception v0

    .line 218
    :goto_1d
    new-instance v1, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 217
    :catchall_23
    move-exception v0

    goto :goto_1b

    :catch_25
    move-exception v0

    goto :goto_1d
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .line 178
    const-string v0, "objectData"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 235
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 4

    .line 269
    const-string v0, "outputStream"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :try_start_8
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1b

    .line 271
    :try_start_d
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 272
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1b

    .line 274
    return-void

    .line 270
    :catchall_14
    move-exception v1

    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 272
    :catchall_16
    move-exception v1

    :try_start_17
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    :goto_1a
    :try_start_1a
    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    .line 273
    new-instance v1, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 272
    :catchall_22
    move-exception v0

    goto :goto_1a
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3

    .line 247
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 248
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
