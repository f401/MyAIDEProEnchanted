.class Lcom/sun/tools/javac/main/RecognizedOptions$23;
.super Lcom/sun/tools/javac/main/JavacOption$HiddenOption;
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
.field s:Ljava/lang/String;

.field final val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V
    .registers 3

    .line 605
    iput-object p2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    .line 610
    iput-object p1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->s:Ljava/lang/String;

    .line 611
    const-string v0, ".java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 612
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 611
    :goto_11
    return v0

    .line 612
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 617
    iget-object v2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->s:Ljava/lang/String;

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 618
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->s:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    .line 620
    iget-object v3, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v4, "err.file.not.found"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :goto_24
    return v0

    .line 623
    :cond_25
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_37

    .line 624
    iget-object v3, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v4, "err.file.not.file"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    .line 627
    :cond_37
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->addFile(Ljava/io/File;)V

    :goto_3c
    move v0, v1

    .line 630
    goto :goto_24

    .line 629
    :cond_3e
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    iget-object v2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$23;->s:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->addClassName(Ljava/lang/String;)V

    goto :goto_3c
.end method
