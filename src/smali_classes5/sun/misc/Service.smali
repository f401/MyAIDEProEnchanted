.class public final Lsun/misc/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/Service$LazyIterator;
    }
.end annotation


# static fields
.field private static final prefix:Ljava/lang/String; = "META-INF/services/"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 128
    invoke-static {p0, p1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 128
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 128
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun/misc/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p2}, Lsun/misc/ServiceConfigurationError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    throw v1
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static installedProviders(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 417
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 418
    const/4 v0, 0x0

    .line 419
    :goto_5
    if-eqz v1, :cond_e

    .line 421
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    .line 423
    :cond_e
    invoke-static {p0, v0}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v3, 0x0

    .line 217
    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :try_start_6
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_79
    .catchall {:try_start_6 .. :try_end_9} :catchall_6b

    move-result-object v6

    .line 222
    :try_start_a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_9a
    .catchall {:try_start_a .. :try_end_16} :catchall_9d

    .line 223
    const/4 v3, 0x1

    :cond_17
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 224
    :try_start_1a
    invoke-static/range {v0 .. v5}, Lsun/misc/Service;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_43
    .catchall {:try_start_1a .. :try_end_1d} :catchall_7d

    move-result v3

    if-gez v3, :cond_17

    .line 229
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    if-eqz v6, :cond_28

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_2d

    .line 235
    :cond_28
    :goto_28
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 231
    :catch_2d
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_33
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_28

    .line 225
    :catch_43
    move-exception v1

    move-object v0, v6

    .line 226
    :goto_45
    :try_start_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_97

    .line 229
    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_5e
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_64

    goto :goto_28

    .line 231
    :catch_64
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_33

    .line 228
    :catchall_6b
    move-exception v0

    move-object v6, v3

    :goto_6d
    move-object v1, v0

    .line 229
    :goto_6e
    if-eqz v3, :cond_73

    :try_start_70
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_73
    if-eqz v6, :cond_78

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_78} :catch_81

    .line 233
    :cond_78
    :goto_78
    throw v1

    .line 225
    :catch_79
    move-exception v1

    move-object v0, v3

    :goto_7b
    move-object v2, v3

    goto :goto_45

    .line 228
    :catchall_7d
    move-exception v0

    move-object v1, v0

    :goto_7f
    move-object v3, v2

    goto :goto_6e

    .line 231
    :catch_81
    move-exception v0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_78

    .line 228
    :catchall_97
    move-exception v1

    move-object v6, v0

    goto :goto_7f

    .line 225
    :catch_9a
    move-exception v1

    move-object v0, v6

    goto :goto_7b

    .line 228
    :catchall_9d
    move-exception v0

    goto :goto_6d
.end method

.method private static parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_9

    .line 166
    const/4 v0, -0x1

    .line 188
    :goto_8
    return v0

    .line 168
    :cond_9
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 169
    if-ltz v1, :cond_15

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    if-eqz v2, :cond_8c

    .line 173
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2f

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_34

    .line 174
    :cond_2f
    const-string v0, "Illegal configuration-file syntax"

    invoke-static {p0, p1, p3, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 175
    :cond_34
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 176
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v3

    if-nez v3, :cond_52

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal provider-class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, p3, v3}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 178
    :cond_52
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_56
    if-ge v0, v2, :cond_80

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 180
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v4

    if-nez v4, :cond_7a

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7a

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal provider-class name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, p3, v4}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 178
    :cond_7a
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_56

    .line 183
    :cond_80
    invoke-interface {p5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 184
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_8c
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_8
.end method

.method public static providers(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 381
    invoke-static {p0, v0}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 348
    new-instance v0, Lsun/misc/Service$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$1;)V

    return-object v0
.end method
