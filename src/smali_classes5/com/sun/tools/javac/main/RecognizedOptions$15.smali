.class Lcom/sun/tools/javac/main/RecognizedOptions$15;
.super Lcom/sun/tools/javac/main/JavacOption$Option;
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

    .line 409
    iput-object p4, p0, Lcom/sun/tools/javac/main/RecognizedOptions$15;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasArg()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method helpSynopsis()Ljava/lang/String;
    .registers 2

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$15;->hasSuffix:Z

    .line 413
    invoke-super {p0}, Lcom/sun/tools/javac/main/JavacOption$Option;->helpSynopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3

    .line 418
    const-string v0, "-A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 430
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 431
    if-ne v1, v5, :cond_14

    .line 432
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$15;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v1, "err.empty.A.argument"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 441
    :goto_13
    return v0

    .line 435
    :cond_14
    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 436
    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    :goto_1d
    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isValidOptionName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 438
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$15;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v1, "err.invalid.A.key"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 439
    goto :goto_13

    .line 441
    :cond_34
    invoke-virtual {p0, p1, p2, p2}, Lcom/sun/tools/javac/main/RecognizedOptions$15;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_39
    move v0, v1

    goto :goto_1d
.end method
