.class Lcom/sun/tools/javac/main/RecognizedOptions$13;
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
.field final val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V
    .registers 3

    .line 387
    iput-object p2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$13;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$13;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sun/tools/javac/main/RecognizedOptions;->getOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;Ljava/util/Set;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    aget-object v2, v0, v1

    .line 391
    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 393
    const-string v0, "-XDdiagsFormat="

    .line 395
    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/main/JavacOption$Option;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 397
    invoke-virtual {v2, p1, v0}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    .line 399
    :goto_3e
    return v0

    .line 394
    :cond_3f
    const-string v0, "-XDdiags="

    goto :goto_25

    :cond_42
    move v0, v1

    .line 399
    goto :goto_3e
.end method
