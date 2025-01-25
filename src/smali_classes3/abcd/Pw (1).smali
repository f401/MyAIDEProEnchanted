.class public Labcd/Pw;
.super Labcd/Jw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Pw$a;
    }
.end annotation


# instance fields
.field public DW:I

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j6:Labcd/Pw$a;

.field public v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 4

    invoke-direct {p0}, Labcd/Jw;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Labcd/Pw;->DW:I

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Pw;->FH:Ljava/lang/String;

    const-string v0, "server"

    invoke-static {p1, v0}, Labcd/Pw;->j6(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Pw;->Hw:Ljava/lang/String;

    const-string v0, "location"

    invoke-static {p1, v0}, Labcd/Pw;->j6(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/Pw;->v5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Pw;-><init>(Lorg/apache/http/HttpResponse;)V

    if-eqz p2, :cond_14

    instance-of p1, p2, Ljava/util/Map;

    if-eqz p1, :cond_14

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Labcd/Pw;->Zo:Ljava/util/Map;

    new-instance p1, Labcd/Pw$a;

    invoke-direct {p1, p2}, Labcd/Pw$a;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Labcd/Pw;->j6:Labcd/Pw$a;

    :cond_14
    return-void
.end method

.method private static j6(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static j6(Lorg/apache/http/HttpResponse;)Z
    .registers 5

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3e

    const-string v0, "location"

    invoke-static {p0, v0}, Labcd/Pw;->j6(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_43

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_43

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dropbox.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    :cond_3e
    const/16 p0, 0x130

    if-ne v0, p0, :cond_43

    return v2

    :cond_43
    return v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropboxServerException ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Pw;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Pw;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Pw;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Pw;->j6:Labcd/Pw$a;

    iget-object v1, v1, Labcd/Pw$a;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
