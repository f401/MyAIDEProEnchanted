.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "HostSpecifier.java"


# instance fields
.field private final canonicalForm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 115
    :catch_5
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid host specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v2, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 122
    throw v2
.end method

.method public static fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .registers 4

    .line 73
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 75
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_12
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_23

    move-result-object v0

    move-object v1, v0

    .line 88
    :goto_17
    if-eqz v1, :cond_26

    .line 89
    new-instance v0, Lcom/google/common/net/HostSpecifier;

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->toUriString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    .line 98
    :goto_22
    return-object v0

    .line 84
    :catch_23
    move-exception v1

    move-object v1, v0

    goto :goto_17

    .line 95
    :cond_26
    invoke-static {v2}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 98
    new-instance v0, Lcom/google/common/net/HostSpecifier;

    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    goto :goto_22

    .line 101
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domain name does not have a recognized public suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2

    .line 132
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_4
    return v0

    .line 134
    :catch_5
    move-exception v0

    .line 135
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 141
    if-ne p0, p1, :cond_4

    .line 142
    const/4 v0, 0x1

    .line 150
    :goto_3
    return v0

    .line 145
    :cond_4
    instance-of v0, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v0, :cond_13

    .line 146
    check-cast p1, Lcom/google/common/net/HostSpecifier;

    .line 147
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 150
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    return-object v0
.end method
