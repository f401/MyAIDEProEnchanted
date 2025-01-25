.class public Lsun/misc/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"


# instance fields
.field private indexMap:Ljava/util/HashMap;

.field private jarFiles:[Ljava/lang/String;

.field private jarMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lsun/misc/JarIndex;->read(Ljava/io/InputStream;)V

    .line 85
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 94
    iput-object p1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lsun/misc/JarIndex;->parseJars([Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6

    .line 133
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 134
    if-nez v0, :cond_14

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 136
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_13
    :goto_13
    return-void

    .line 138
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 139
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    .line 109
    if-eqz p1, :cond_c

    .line 110
    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {p1, v1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 118
    :cond_b
    :goto_b
    return-object v0

    .line 113
    :cond_c
    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_b

    .line 116
    new-instance v0, Lsun/misc/JarIndex;

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/JarIndex;-><init>(Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method private parseJars([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    if-nez p1, :cond_3

    .line 218
    :cond_2
    return-void

    .line 198
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 201
    aget-object v2, p1, v1

    .line 202
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 203
    new-instance v3, Ljava/util/zip/ZipFile;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 206
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 207
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v5, "META-INF/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 210
    const-string v5, "META-INF/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 211
    const-string v5, "META-INF/INDEX.LIST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 212
    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 213
    :cond_4b
    invoke-virtual {p0, v0, v2}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 216
    :cond_4f
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 176
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_e
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 186
    iget-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 187
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 5

    .line 149
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_20

    .line 153
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 154
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 157
    :cond_20
    return-object v0
.end method

.method public getJarFiles()[Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lsun/misc/JarIndex;Ljava/lang/String;)V
    .registers 7

    .line 296
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 297
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 301
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 302
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 303
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    if-eqz p2, :cond_38

    .line 305
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_38
    invoke-virtual {p1, v1, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 310
    :cond_3c
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 259
    const/4 v0, 0x0

    .line 263
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 266
    :cond_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 268
    :cond_20
    :goto_20
    if-eqz v1, :cond_45

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    .line 268
    :goto_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 272
    :cond_2d
    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 273
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_28

    .line 276
    :cond_3a
    iget-object v4, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, v4}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 278
    iget-object v4, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v4}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_28

    .line 282
    :cond_45
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 283
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    const-string v0, "JarIndex-Version: 1.0\n\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    if-eqz v0, :cond_6d

    .line 232
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    array-length v3, v0

    if-ge v1, v3, :cond_6a

    .line 234
    aget-object v0, v0, v1

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 237
    if-eqz v0, :cond_61

    .line 238
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_40

    .line 243
    :cond_61
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 245
    :cond_6a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 247
    :cond_6d
    return-void
.end method
