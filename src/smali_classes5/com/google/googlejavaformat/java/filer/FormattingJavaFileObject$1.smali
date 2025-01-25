.class Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;
.super Ljava/io/Writer;
.source "FormattingJavaFileObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->openWriter()Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

.field final val$stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    iput-object p2, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->access$100(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Lcom/google/googlejavaformat/java/Formatter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v1}, Lcom/google/common/io/CharSource;->wrap(Ljava/lang/CharSequence;)Lcom/google/common/io/CharSource;

    move-result-object v1

    new-instance v2, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1$1;

    invoke-direct {v2, p0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1$1;-><init>(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Lcom/google/common/io/CharSource;Lcom/google/common/io/CharSink;)V
    :try_end_14
    .catch Lcom/google/googlejavaformat/java/FormatterException; {:try_start_0 .. :try_end_14} :catch_15

    .line 88
    :cond_14
    :goto_14
    return-void

    .line 77
    :catch_15
    move-exception v0

    .line 81
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->access$200(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v1

    .line 82
    :try_start_22
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_5b

    .line 83
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 84
    :cond_30
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->access$300(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/annotation/processing/Messager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 85
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->access$300(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error formatting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->this$0:Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-virtual {v3}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 81
    :catchall_5b
    move-exception v0

    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    :cond_61
    :goto_61
    throw v0

    :catchall_62
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    sub-int v1, p3, p2

    invoke-virtual {v0, p1, p2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 61
    return-void
.end method
