.class Lcom/sun/tools/javac/main/RecognizedOptions$21;
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


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;)V
    .registers 2

    .line 561
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    .line 566
    iput-object p1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->s:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v0, v0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->name:Lcom/sun/tools/javac/main/OptionName;

    iget-object v1, v1, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->s:Ljava/lang/String;

    .line 573
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 574
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->s:Ljava/lang/String;

    if-gez v2, :cond_23

    .line 575
    :goto_1b
    iget-object v1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$21;->s:Ljava/lang/String;

    if-gez v2, :cond_28

    .line 576
    :goto_1f
    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return v3

    .line 574
    :cond_23
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 575
    :cond_28
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f
.end method
