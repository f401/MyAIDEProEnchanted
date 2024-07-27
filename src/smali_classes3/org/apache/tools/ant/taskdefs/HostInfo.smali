.class public Lorg/apache/tools/ant/taskdefs/HostInfo;
.super Lorg/apache/tools/ant/Task;
.source "HostInfo.java"


# static fields
.field private static final ADDR4:Ljava/lang/String; = "ADDR4"

.field private static final ADDR6:Ljava/lang/String; = "ADDR6"

.field private static final DEF_DOMAIN:Ljava/lang/String; = "localdomain"

.field private static final DEF_LOCAL_ADDR4:Ljava/lang/String; = "127.0.0.1"

.field private static final DEF_LOCAL_ADDR6:Ljava/lang/String; = "::1"

.field private static final DEF_LOCAL_NAME:Ljava/lang/String; = "localhost"

.field private static final DEF_REM_ADDR4:Ljava/lang/String; = "0.0.0.0"

.field private static final DEF_REM_ADDR6:Ljava/lang/String; = "::"

.field private static final DOMAIN:Ljava/lang/String; = "DOMAIN"

.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private best4:Ljava/net/InetAddress;

.field private best6:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private inetAddrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private nameAddr:Ljava/net/InetAddress;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    return-void
.end method

.method private executeLocal()V
    .registers 4

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    .line 120
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/HostInfo;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 122
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectAddresses()V

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    .line 130
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 131
    const-string v1, "ADDR4"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 136
    const-string v1, "ADDR6"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_2
    return-void

    .line 127
    :cond_0
    const-string v0, "DOMAIN"

    const-string v1, "localdomain"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "NAME"

    const-string v1, "localhost"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "Error retrieving local host information"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/HostInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 142
    const-string v0, "DOMAIN"

    const-string v1, "localdomain"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "NAME"

    const-string v1, "localhost"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "ADDR4"

    const-string v1, "127.0.0.1"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "ADDR6"

    const-string v1, "::1"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :cond_1
    :try_start_1
    const-string v0, "ADDR4"

    const-string v1, "127.0.0.1"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    const-string v0, "ADDR6"

    const-string v1, "::1"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private executeRemote()V
    .registers 4

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectAddresses()V

    .line 210
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 216
    const-string v1, "ADDR4"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 221
    const-string v1, "ADDR6"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_2
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving remote host information for host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/HostInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    .line 229
    const-string v0, "ADDR4"

    const-string v1, "0.0.0.0"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "ADDR6"

    const-string v1, "::"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :cond_1
    :try_start_1
    const-string v0, "ADDR4"

    const-string v1, "0.0.0.0"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_2
    const-string v0, "ADDR6"

    const-string v1, "::"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private hasHostName(Ljava/net/InetAddress;)Z
    .registers 4

    .line 150
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private selectAddresses()V
    .registers 4

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 155
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    goto :goto_0

    .line 158
    :cond_1
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    .line 165
    return-void
.end method

.method private selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 4

    .line 169
    .line 170
    if-nez p1, :cond_1

    move-object p1, p2

    .line 201
    :cond_0
    :goto_0
    return-object p1

    .line 173
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move-object p1, p2

    .line 187
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move-object p1, p2

    .line 198
    goto :goto_0
.end method

.method private setDomainAndName(Ljava/lang/String;)V
    .registers 5

    .line 235
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 236
    if-lez v0, :cond_0

    .line 237
    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "DOMAIN"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "NAME"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "DOMAIN"

    const-string v1, "localdomain"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->executeLocal()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->executeRemote()V

    goto :goto_0
.end method

.method public synthetic lambda$executeLocal$0$HostInfo(Ljava/net/NetworkInterface;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    .line 85
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method
