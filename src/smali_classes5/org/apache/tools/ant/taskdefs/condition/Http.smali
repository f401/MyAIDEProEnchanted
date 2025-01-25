.class public Lorg/apache/tools/ant/taskdefs/condition/Http;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Http.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final DEFAULT_REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final ERROR_BEGINS:I = 0x190

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private errorsBeginAt:I

.field private followRedirects:Z

.field private readTimeout:I

.field private requestMethod:Ljava/lang/String;

.field private spec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    .line 49
    const-string v0, "GET"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    .line 52
    const/16 v0, 0x190

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    return-void
.end method

.method private redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 6

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, p2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 178
    :goto_7
    return v0

    .line 170
    :cond_8
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 171
    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 172
    const-string v1, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 173
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirection detected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Protocol switch unsafe, not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 178
    :cond_58
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 149
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 150
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 151
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    if-eqz v0, :cond_59

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->isMoved(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 152
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p2, v2}, Lorg/apache/tools/ant/taskdefs/condition/Http;->redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 155
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 156
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_59

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Following redirect from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;)V

    .line 158
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/condition/Http;->request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I

    move-result v0

    .line 162
    :goto_58
    return v0

    :cond_59
    move v0, v1

    goto :goto_58
.end method


# virtual methods
.method public eval()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;I)V

    .line 125
    :try_start_1d
    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_24} :catch_78

    .line 127
    :try_start_24
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 128
    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_59

    .line 129
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/condition/Http;->request(Ljava/net/HttpURLConnection;Ljava/net/URL;)I

    move-result v0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/condition/Http;->log(Ljava/lang/String;I)V

    .line 132
    if-lez v0, :cond_9a

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I
    :try_end_55
    .catch Ljava/net/ProtocolException; {:try_start_24 .. :try_end_55} :catch_5e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_55} :catch_5b
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_55} :catch_78

    if-ge v0, v3, :cond_9a

    move v0, v1

    .line 139
    :goto_58
    return v0

    :cond_59
    move v0, v1

    goto :goto_58

    .line 137
    :catch_5b
    move-exception v0

    move v0, v2

    .line 138
    goto :goto_58

    .line 134
    :catch_5e
    move-exception v0

    .line 135
    :try_start_5f
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid HTTP protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_78
    .catch Ljava/net/MalformedURLException; {:try_start_5f .. :try_end_78} :catch_78

    .line 140
    :catch_78
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Badly formed URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    :cond_92
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No url specified in http condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    move v0, v2

    goto :goto_58
.end method

.method public setErrorsBeginAt(I)V
    .registers 2

    .line 69
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->errorsBeginAt:I

    .line 70
    return-void
.end method

.method public setFollowRedirects(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->followRedirects:Z

    .line 98
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 109
    if-ltz p1, :cond_4

    .line 110
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->readTimeout:I

    .line 112
    :cond_4
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .line 85
    if-nez p1, :cond_7

    const-string v0, "GET"

    .line 86
    :goto_4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->requestMethod:Ljava/lang/String;

    .line 87
    return-void

    .line 86
    :cond_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Http;->spec:Ljava/lang/String;

    .line 61
    return-void
.end method
