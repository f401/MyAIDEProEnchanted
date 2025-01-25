.class public Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;
.super Lorg/apache/tools/ant/Task;
.source "SetProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;
    }
.end annotation


# static fields
.field private static final HTTP_PORT:I = 0x50

.field private static final SOCKS_PORT:I = 0x438


# instance fields
.field private nonProxyHosts:Ljava/lang/String;

.field protected proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field protected proxyPort:I

.field private proxyUser:Ljava/lang/String;

.field private socksProxyHost:Ljava/lang/String;

.field private socksProxyPort:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 66
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    .line 71
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    .line 78
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    .line 83
    const/16 v0, 0x438

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    .line 89
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method private traceSettingInfo()V
    .registers 3

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting proxy to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_24

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    .line 256
    return-void

    .line 253
    :cond_24
    const-string v0, "\'\'"

    goto :goto_e
.end method


# virtual methods
.method public applyWebProxySettings()V
    .registers 8

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 179
    .line 181
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_106

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 185
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->traceSettingInfo()V

    .line 187
    const-string v0, "http.proxyHost"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v2, "http.proxyPort"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "https.proxyHost"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v2, "https.proxyPort"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v2, "ftp.proxyHost"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v2, "ftp.proxyPort"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 195
    const-string v2, "http.nonProxyHosts"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "https.nonProxyHosts"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "ftp.nonProxyHosts"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 200
    const-string v2, "http.proxyUser"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "http.proxyPassword"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    move v0, v1

    move v3, v1

    .line 217
    :goto_68
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_96

    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 221
    const-string v0, "socksProxyHost"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "socksProxyPort"

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v0, :cond_103

    .line 225
    const-string v2, "java.net.socks.username"

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "java.net.socks.password"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v3, v1

    .line 238
    :cond_96
    :goto_96
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v1, :cond_a8

    .line 239
    if-eqz v3, :cond_f4

    .line 240
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$1;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 246
    :cond_a8
    :goto_a8
    return-void

    .line 204
    :cond_a9
    const-string v0, "resetting http proxy"

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    .line 205
    const-string v0, "http.proxyHost"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "http.proxyPort"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "http.proxyUser"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "http.proxyPassword"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "https.proxyHost"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "https.proxyPort"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "ftp.proxyHost"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "ftp.proxyPort"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v3, v2

    goto :goto_68

    .line 230
    :cond_d9
    const-string v0, "resetting socks proxy"

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    .line 231
    const-string v0, "socksProxyHost"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "socksProxyPort"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "java.net.socks.username"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "java.net.socks.password"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_96

    .line 242
    :cond_f4
    if-eqz v0, :cond_a8

    .line 243
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$1;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_a8

    :cond_103
    move v0, v1

    move v3, v1

    goto :goto_96

    :cond_106
    move v0, v2

    move v3, v2

    goto/16 :goto_68
.end method

.method public execute()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->applyWebProxySettings()V

    .line 266
    return-void
.end method

.method public setNonProxyHosts(Ljava/lang/String;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setProxyPort(I)V
    .registers 2

    .line 118
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    .line 119
    return-void
.end method

.method public setProxyUser(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setSocksProxyPort(I)V
    .registers 2

    .line 138
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    .line 139
    return-void
.end method
