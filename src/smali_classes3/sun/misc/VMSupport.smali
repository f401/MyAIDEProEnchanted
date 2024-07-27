.class public Lsun/misc/VMSupport;
.super Ljava/lang/Object;
.source "VMSupport.java"


# static fields
.field private static agentProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/VMSupport;->agentProps:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgentProperties()Ljava/util/Properties;
    .registers 2

    const-class v0, Lsun/misc/VMSupport;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v0, Lsun/misc/VMSupport;->agentProps:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/misc/VMSupport;->agentProps:Ljava/util/Properties;

    .line 47
    invoke-static {v0}, Lsun/misc/VMSupport;->initAgentProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 49
    :cond_0
    sget-object v0, Lsun/misc/VMSupport;->agentProps:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lsun/misc/VMSupport;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    const-class v1, Lsun/misc/VMSupport;

    monitor-exit v1

    throw v0
.end method

.method private static native initAgentProperties(Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public static isClassPathAttributePresent(Ljava/lang/String;)Z
    .registers 3

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    sget-object v1, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serializeAgentPropertiesToByteArray()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lsun/misc/VMSupport;->getAgentProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/VMSupport;->serializePropertiesToByteArray(Ljava/util/Properties;)[B

    move-result-object v0

    return-object v0
.end method

.method public static serializePropertiesToByteArray()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/VMSupport;->serializePropertiesToByteArray(Ljava/util/Properties;)[B

    move-result-object v0

    return-object v0
.end method

.method private static serializePropertiesToByteArray(Ljava/util/Properties;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
