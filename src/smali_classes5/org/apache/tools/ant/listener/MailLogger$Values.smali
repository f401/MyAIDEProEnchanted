.class Lorg/apache/tools/ant/listener/MailLogger$Values;
.super Ljava/lang/Object;
.source "MailLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/listener/MailLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private mailhost:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private replytoList:Ljava/lang/String;

.field private ssl:Z

.field private starttls:Z

.field private subject:Ljava/lang/String;

.field private toBccList:Ljava/lang/String;

.field private toCcList:Ljava/lang/String;

.field private toList:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/listener/MailLogger$1;)V
    .registers 2

    .line 181
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/MailLogger$Values;-><init>()V

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->body:Ljava/lang/String;

    return-object v0
.end method

.method public body(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 291
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->body:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public charset(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 275
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public from()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->from:Ljava/lang/String;

    return-object v0
.end method

.method public from(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->from:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public mailhost()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost:Ljava/lang/String;

    return-object v0
.end method

.method public mailhost(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public mimeType()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public mimeType(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 283
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public password()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->password:Ljava/lang/String;

    return-object v0
.end method

.method public password(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->password:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public port()I
    .registers 2

    .line 192
    iget v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->port:I

    return v0
.end method

.method public port(I)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 195
    iput p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->port:I

    .line 196
    return-object p0
.end method

.method public replytoList()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList:Ljava/lang/String;

    return-object v0
.end method

.method public replytoList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 235
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public ssl(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 219
    iput-boolean p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl:Z

    .line 220
    return-object p0
.end method

.method public ssl()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl:Z

    return v0
.end method

.method public starttls(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls:Z

    .line 300
    return-object p0
.end method

.method public starttls()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls:Z

    return v0
.end method

.method public subject()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public subject(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 267
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public toBccList()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList:Ljava/lang/String;

    return-object v0
.end method

.method public toBccList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 259
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public toCcList()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList:Ljava/lang/String;

    return-object v0
.end method

.method public toCcList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 251
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public toList()Ljava/lang/String;
    .registers 2

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList:Ljava/lang/String;

    return-object v0
.end method

.method public toList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 243
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public user()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->user:Ljava/lang/String;

    return-object v0
.end method

.method public user(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$Values;->user:Ljava/lang/String;

    .line 204
    return-object p0
.end method
