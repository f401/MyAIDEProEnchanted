.class Labcd/xJ$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/xJ$d$a;,
        Labcd/xJ$d$b;
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final Hw:Labcd/xJ$d$a;

.field VH:Ljava/net/HttpURLConnection;

.field final Zo:Labcd/xJ$d$b;

.field final gn:Labcd/xJ;

.field private final j6:Ljava/lang/String;

.field final v5:Labcd/cL;


# direct methods
.method constructor <init>(Labcd/xJ;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/xJ$d;->j6:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/xJ$d;->DW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/xJ$d;->FH:Ljava/lang/String;

    new-instance v0, Labcd/xJ$d$a;

    invoke-direct {v0, p0}, Labcd/xJ$d$a;-><init>(Labcd/xJ$d;)V

    iput-object v0, p0, Labcd/xJ$d;->Hw:Labcd/xJ$d$a;

    new-instance v0, Labcd/cL;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/xJ$d;->Hw:Labcd/xJ$d$a;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Labcd/cL;-><init>([Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/xJ$d;->v5:Labcd/cL;

    new-instance v0, Labcd/xJ$d$b;

    invoke-direct {v0, p0}, Labcd/xJ$d$b;-><init>(Labcd/xJ$d;)V

    iput-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    return-void
.end method

.method static synthetic j6(Labcd/xJ$d;)Labcd/xJ;
    .registers 2

    iget-object v0, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    return-object v0
.end method


# virtual methods
.method DW()V
    .registers 6

    iget-object v0, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    const-string v1, "POST"

    new-instance v2, Ljava/net/URL;

    invoke-static {v0}, Labcd/xJ;->DW(Labcd/xJ;)Ljava/net/URL;

    move-result-object v3

    iget-object v4, p0, Labcd/xJ$d;->j6:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Labcd/xJ;->j6(Ljava/lang/String;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Labcd/xJ$d;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    iget-object v2, p0, Labcd/xJ$d;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method j6()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    invoke-virtual {v0}, Labcd/RK;->close()V

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Labcd/RK$c;

    iget-object v1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    invoke-static {v1}, Labcd/xJ;->j6(Labcd/xJ;)Labcd/xJ$b;

    move-result-object v1

    iget v1, v1, Labcd/xJ$b;->j6:I

    invoke-direct {v0, v1}, Labcd/RK$c;-><init>(I)V

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    iget-object v1, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    invoke-virtual {v1}, Labcd/RK;->DW()J

    move-result-wide v2

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Labcd/xJ$d;->DW()V

    iget-object v1, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    iget-object v1, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    iget-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    invoke-virtual {v0}, Labcd/RK;->v5()V

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/xJ$d;->FH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Labcd/xJ$d;->v5:Labcd/cL;

    iget-object v1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    iget-object v2, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/cL;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Labcd/xJ$d;->v5:Labcd/cL;

    iget-object v1, p0, Labcd/xJ$d;->Hw:Labcd/xJ$d$a;

    invoke-virtual {v0, v1}, Labcd/cL;->j6(Ljava/io/InputStream;)V

    iput-object v6, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Labcd/xJ$d;->Zo:Labcd/xJ$d$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_3
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->startingReadStageWithoutWrittenRequestDataPendingIsNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    iget-object v2, p0, Labcd/xJ$d;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Labcd/xJ;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v1, p0, Labcd/xJ$d;->gn:Labcd/xJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/yD;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method
