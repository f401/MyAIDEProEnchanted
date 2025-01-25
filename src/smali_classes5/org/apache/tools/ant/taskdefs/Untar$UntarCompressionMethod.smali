.class public final Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Untar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Untar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UntarCompressionMethod"
.end annotation


# static fields
.field private static final BZIP2:Ljava/lang/String; = "bzip2"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final XZ:Ljava/lang/String; = "xz"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 196
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 197
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;->setValue(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private static newXZInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 245
    :try_start_0
    const-string v0, "org.tukaani.xz.XZInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 247
    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 250
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_24} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_24} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_3b

    return-object v0

    .line 254
    :catch_25
    move-exception v0

    .line 259
    :goto_26
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "failed to create XZInputStream"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 251
    :catch_2e
    move-exception v0

    .line 252
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "xz decompression requires the XZ for Java library"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :catch_37
    move-exception v0

    goto :goto_26

    :catch_39
    move-exception v0

    goto :goto_26

    :catch_3b
    move-exception v0

    goto :goto_26
.end method


# virtual methods
.method public decompress(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 225
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    .line 239
    :cond_13
    :goto_13
    return-object p2

    .line 227
    :cond_14
    const-string v2, "xz"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 228
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;->newXZInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_13

    .line 230
    :cond_21
    const-string v2, "bzip2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 231
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/16 v2, 0x42

    aput-char v2, v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x5a

    aput-char v3, v1, v2

    .line 232
    array-length v2, v1

    :goto_36
    if-ge v0, v2, :cond_5a

    aget-char v3, v1, v0

    .line 233
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_43

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 234
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bz2 file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_5a
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2InputStream;

    invoke-direct {v0, p2}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    goto :goto_13
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gzip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xz"

    aput-object v2, v0, v1

    return-object v0
.end method
