.class public Lcom/myopicmobile/textwarrior/common/ReadTask;
.super Landroid/os/AsyncTask;


# static fields
.field private static _total:I


# instance fields
.field protected final _buf:Lcom/myopicmobile/textwarrior/common/Document;

.field private _dlg:Landroid/app/ProgressDialog;

.field private _edit:Lcom/androlua/LuaEditor;

.field private _file:Ljava/io/File;

.field private _len:J


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaEditor;Ljava/io/File;)V
    .registers 7

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_file:Ljava/io/File;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_len:J

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_edit:Lcom/androlua/LuaEditor;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Document;

    invoke-direct {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_buf:Lcom/myopicmobile/textwarrior/common/Document;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/androlua/LuaEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    iget-wide v2, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_len:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaEditor;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/myopicmobile/textwarrior/common/ReadTask;-><init>(Lcom/androlua/LuaEditor;Ljava/io/File;)V

    return-void
.end method

.method private readAll(Ljava/io/InputStream;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x1000

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    sput v4, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1

    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sget v3, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    add-int/2addr v2, v3

    sput v2, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/common/ReadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/ReadTask;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrent()I
    .registers 2

    sget v0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    return v0
.end method

.method public getMax()I
    .registers 3

    iget-wide v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_len:J

    long-to-int v0, v0

    return v0
.end method

.method public getMin()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_edit:Lcom/androlua/LuaEditor;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    sget v1, Lcom/myopicmobile/textwarrior/common/ReadTask;->_total:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/ReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ReadTask;->_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
