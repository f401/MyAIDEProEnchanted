.class public final Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TarCompressionMethod"
.end annotation


# static fields
.field private static final BZIP2:Ljava/lang/String; = "bzip2"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final XZ:Ljava/lang/String; = "xz"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 978
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 979
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->setValue(Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1002
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1003
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 1013
    :cond_12
    :goto_12
    return-object p1

    .line 1005
    :cond_13
    const-string v1, "xz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1006
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->newXZOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_12

    .line 1008
    :cond_20
    const-string v1, "bzip2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1009
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1010
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1011
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_12
.end method

.method private static newXZOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1019
    :try_start_0
    const-string v0, "org.tukaani.xz.FilterOptions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1020
    const-string v1, "org.tukaani.xz.LZMA2Options"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1021
    const-string v2, "org.tukaani.xz.XZOutputStream"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1023
    const-class v3, Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 1024
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/OutputStream;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1026
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_44} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_44} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_44} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_44} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_44} :catch_5b

    return-object v0

    .line 1030
    :catch_45
    move-exception v0

    .line 1035
    :goto_46
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "failed to create XZOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1027
    :catch_4e
    move-exception v0

    .line 1028
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "xz compression requires the XZ for Java library"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1030
    :catch_57
    move-exception v0

    goto :goto_46

    :catch_59
    move-exception v0

    goto :goto_46

    :catch_5b
    move-exception v0

    goto :goto_46
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 988
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
