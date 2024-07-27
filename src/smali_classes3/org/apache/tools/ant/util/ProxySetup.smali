.class public Lorg/apache/tools/ant/util/ProxySetup;
.super Ljava/lang/Object;
.source "ProxySetup.java"


# static fields
.field public static final FTP_NON_PROXY_HOSTS:Ljava/lang/String; = "ftp.nonProxyHosts"

.field public static final FTP_PROXY_HOST:Ljava/lang/String; = "ftp.proxyHost"

.field public static final FTP_PROXY_PORT:Ljava/lang/String; = "ftp.proxyPort"

.field public static final HTTPS_NON_PROXY_HOSTS:Ljava/lang/String; = "https.nonProxyHosts"

.field public static final HTTPS_PROXY_HOST:Ljava/lang/String; = "https.proxyHost"

.field public static final HTTPS_PROXY_PORT:Ljava/lang/String; = "https.proxyPort"

.field public static final HTTP_NON_PROXY_HOSTS:Ljava/lang/String; = "http.nonProxyHosts"

.field public static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_USERNAME:Ljava/lang/String; = "http.proxyUser"

.field public static final SOCKS_PROXY_HOST:Ljava/lang/String; = "socksProxyHost"

.field public static final SOCKS_PROXY_PASSWORD:Ljava/lang/String; = "java.net.socks.password"

.field public static final SOCKS_PROXY_PORT:Ljava/lang/String; = "socksProxyPort"

.field public static final SOCKS_PROXY_USERNAME:Ljava/lang/String; = "java.net.socks.username"

.field public static final USE_SYSTEM_PROXIES:Ljava/lang/String; = "java.net.useSystemProxies"


# instance fields
.field private owner:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/util/ProxySetup;->owner:Lorg/apache/tools/ant/Project;

    .line 76
    return-void
.end method

.method public static getSystemProxySetting()Ljava/lang/String;
    .registers 1

    .line 84
    :try_start_0
    const-string v0, "java.net.useSystemProxies"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableProxies()V
    .registers 5

    .line 98
    invoke-static {}, Lorg/apache/tools/ant/util/ProxySetup;->getSystemProxySetting()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/util/ProxySetup;->owner:Lorg/apache/tools/ant/Project;

    const-string v1, "java.net.useSystemProxies"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    const-string v0, "true"

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting java.net.useSystemProxies to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/util/ProxySetup;->owner:Lorg/apache/tools/ant/Project;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 106
    const-string v2, "java.net.useSystemProxies"

    invoke-static {v2, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/util/ProxySetup;->owner:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception when "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
