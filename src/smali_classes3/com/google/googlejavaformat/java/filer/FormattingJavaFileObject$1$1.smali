.class Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1$1;
.super Lcom/google/common/io/CharSink;
.source "FormattingJavaFileObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1$1;->this$1:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;

    invoke-direct {p0}, Lcom/google/common/io/CharSink;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1$1;->this$1:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->access$000(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method
