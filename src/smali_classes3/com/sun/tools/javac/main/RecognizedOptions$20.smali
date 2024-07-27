.class Lcom/sun/tools/javac/main/RecognizedOptions$20;
.super Lcom/sun/tools/javac/main/JavacOption$XOption;
.source "RecognizedOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/main/RecognizedOptions;->getAll(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V
    .registers 5

    .line 526
    iput-object p4, p0, Lcom/sun/tools/javac/main/RecognizedOptions$20;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$20;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-interface {v1, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->setOut(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$XOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    iget-object v2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$20;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v3, "err.error.writing.file"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
