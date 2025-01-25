.class final Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;
.super Ljavax/tools/ForwardingJavaFileObject;
.source "FormattingJavaFileObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/tools/ForwardingJavaFileObject",
        "<",
        "Ljavax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_SIZE:I = 0x9c40


# instance fields
.field private final formatter:Lcom/google/googlejavaformat/java/Formatter;

.field private final messager:Ljavax/annotation/processing/Messager;


# direct methods
.method constructor <init>(Ljavax/tools/JavaFileObject;Lcom/google/googlejavaformat/java/Formatter;Ljavax/annotation/processing/Messager;)V
    .registers 5

    .line 49
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-direct {p0, v0}, Ljavax/tools/ForwardingJavaFileObject;-><init>(Ljavax/tools/JavaFileObject;)V

    .line 50
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/Formatter;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    .line 51
    iput-object p3, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->messager:Ljavax/annotation/processing/Messager;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/tools/FileObject;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Lcom/google/googlejavaformat/java/Formatter;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/tools/FileObject;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;)Ljavax/annotation/processing/Messager;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;->messager:Ljavax/annotation/processing/Messager;

    return-object v0
.end method


# virtual methods
.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x9c40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    new-instance v1, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;

    invoke-direct {v1, p0, v0}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject$1;-><init>(Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;Ljava/lang/StringBuilder;)V

    return-object v1
.end method
