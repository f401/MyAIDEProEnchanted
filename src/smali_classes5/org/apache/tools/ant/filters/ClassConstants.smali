.class public final Lorg/apache/tools/ant/filters/ClassConstants;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "ClassConstants.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final JAVA_CLASS_HELPER:Ljava/lang/String; = "org.apache.tools.ant.filters.util.JavaClassHelper"


# instance fields
.field private queuedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 151
    new-instance v0, Lorg/apache/tools/ant/filters/ClassConstants;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ClassConstants;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 92
    iput-object v2, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 95
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ClassConstants;->readFully()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 98
    :cond_1f
    const/4 v0, -0x1

    .line 137
    :cond_20
    :goto_20
    return v0

    .line 100
    :cond_21
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 102
    :try_start_27
    const-string v1, "org.apache.tools.ant.filters.util.JavaClassHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1f

    .line 104
    const-string v2, "getConstants"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 108
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ClassConstants;->read()I
    :try_end_59
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_27 .. :try_end_59} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_59} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_59} :catch_62
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_59} :catch_5b

    move-result v0

    goto :goto_20

    .line 126
    :catch_5b
    move-exception v0

    .line 127
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_62
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 119
    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-nez v1, :cond_78

    .line 122
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_72

    .line 123
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 125
    :cond_72
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :cond_78
    check-cast v0, Ljava/lang/NoClassDefFoundError;

    throw v0

    .line 115
    :catch_7b
    move-exception v0

    .line 116
    :goto_7c
    throw v0

    .line 131
    :cond_7d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    iget-object v1, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 134
    iput-object v2, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    goto :goto_20

    .line 115
    :catch_92
    move-exception v0

    goto :goto_7c
.end method
