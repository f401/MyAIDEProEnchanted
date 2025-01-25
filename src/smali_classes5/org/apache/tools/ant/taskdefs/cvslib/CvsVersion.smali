.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "CvsVersion.java"


# static fields
.field static final MULTIPLY:J = 0x64L

.field static final VERSION_1_11_2:J = 0x2b5eL


# instance fields
.field private clientVersion:Ljava/lang/String;

.field private clientVersionProperty:Ljava/lang/String;

.field private serverVersion:Ljava/lang/String;

.field private serverVersionProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setOutputStream(Ljava/io/OutputStream;)V

    .line 120
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setErrorStream(Ljava/io/OutputStream;)V

    .line 122
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCommand(Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received version response \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->log(Ljava/lang/String;I)V

    .line 127
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    move-object v2, v3

    move v4, v6

    move v7, v6

    move v8, v6

    .line 133
    :goto_43
    if-nez v4, :cond_4b

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 134
    :cond_4b
    if-eqz v4, :cond_8c

    move-object v0, v1

    .line 136
    :goto_4e
    const-string v4, "Client:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    move v7, v5

    .line 144
    :cond_57
    :goto_57
    if-nez v7, :cond_c7

    if-nez v8, :cond_c7

    if-eqz v2, :cond_c7

    if-nez v1, :cond_c7

    .line 145
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 146
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move v4, v5

    :goto_6b
    move-object v2, v0

    .line 167
    goto :goto_43

    .line 168
    :cond_6d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_7c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_8b
    return-void

    .line 134
    :cond_8c
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 138
    :cond_91
    const-string v4, "Server:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    move v8, v5

    .line 139
    goto :goto_57

    .line 140
    :cond_9b
    const-string v4, "(CVS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 141
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_b5

    const-string v2, ""

    goto :goto_57

    :cond_b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_57

    .line 148
    :cond_c7
    if-eqz v7, :cond_ea

    if-eqz v2, :cond_ea

    .line 149
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    :cond_e6
    move-object v0, v3

    move v4, v6

    move v7, v6

    .line 153
    goto :goto_6b

    .line 154
    :cond_ea
    if-eqz v8, :cond_10e

    if-eqz v2, :cond_10e

    .line 155
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    :cond_109
    move-object v0, v3

    move v4, v6

    move v8, v6

    .line 159
    goto/16 :goto_6b

    .line 160
    :cond_10e
    const-string v4, "(client/server)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    if-eqz v2, :cond_138

    if-eqz v1, :cond_138

    if-nez v7, :cond_138

    if-nez v8, :cond_138

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    move-object v1, v3

    move-object v0, v3

    move v4, v6

    move v7, v5

    move v8, v5

    .line 165
    goto/16 :goto_6b

    :cond_138
    move-object v0, v2

    move v4, v6

    goto/16 :goto_6b
.end method

.method public getClientVersion()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVersionProperty(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setServerVersionProperty(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public supportsCvsLogWithSOption()Z
    .registers 11

    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 110
    :cond_5
    :goto_5
    return v5

    .line 92
    :cond_6
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    const-string v1, "."

    invoke-direct {v6, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-wide/16 v0, 0x2710

    .line 94
    const-wide/16 v2, 0x0

    .line 95
    :goto_13
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 96
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    move v4, v5

    .line 98
    :goto_1e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_2e

    .line 99
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_46

    .line 103
    :cond_2e
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v8, v0

    add-long/2addr v2, v8

    .line 105
    const-wide/16 v8, 0x1

    cmp-long v4, v0, v8

    if-nez v4, :cond_49

    .line 110
    :cond_3e
    const-wide/16 v0, 0x2b5e

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    .line 98
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 108
    :cond_49
    const-wide/16 v8, 0x64

    div-long/2addr v0, v8

    goto :goto_13
.end method
