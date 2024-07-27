.class public final Lcom/google/googlejavaformat/java/filer/FormattingFiler;
.super Ljava/lang/Object;
.source "FormattingFiler.java"

# interfaces
.implements Ljavax/annotation/processing/Filer;


# instance fields
.field private final delegate:Ljavax/annotation/processing/Filer;

.field private final formatter:Lcom/google/googlejavaformat/java/Formatter;

.field private final messager:Ljavax/annotation/processing/Messager;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/Filer;)V
    .registers 3

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/filer/FormattingFiler;-><init>(Ljavax/annotation/processing/Filer;Ljavax/annotation/processing/Messager;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/Filer;Ljavax/annotation/processing/Messager;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/googlejavaformat/java/Formatter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/Formatter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/Filer;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->delegate:Ljavax/annotation/processing/Filer;

    .line 58
    iput-object p2, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->messager:Ljavax/annotation/processing/Messager;

    .line 59
    return-void
.end method


# virtual methods
.method public varargs createClassFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->delegate:Ljavax/annotation/processing/Filer;

    invoke-interface {v0, p1, p2}, Ljavax/annotation/processing/Filer;->createClassFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public varargs createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->delegate:Ljavax/annotation/processing/Filer;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/annotation/processing/Filer;->createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;

    move-result-object v0

    return-object v0
.end method

.method public varargs createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->delegate:Ljavax/annotation/processing/Filer;

    .line 65
    new-instance v1, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;

    invoke-interface {v0, p1, p2}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->messager:Ljavax/annotation/processing/Messager;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlejavaformat/java/filer/FormattingJavaFileObject;-><init>(Ljavax/tools/JavaFileObject;Lcom/google/googlejavaformat/java/Formatter;Ljavax/annotation/processing/Messager;)V

    .line 64
    return-object v1
.end method

.method public getResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/googlejavaformat/java/filer/FormattingFiler;->delegate:Ljavax/annotation/processing/Filer;

    invoke-interface {v0, p1, p2, p3}, Ljavax/annotation/processing/Filer;->getResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;

    move-result-object v0

    return-object v0
.end method
