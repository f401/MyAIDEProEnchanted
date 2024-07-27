.class Lcom/sun/tools/javac/main/RecognizedOptions$22;
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


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method helpSynopsis()Ljava/lang/String;
    .registers 2

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$22;->hasSuffix:Z

    .line 587
    invoke-super {p0}, Lcom/sun/tools/javac/main/JavacOption$Option;->helpSynopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 5

    .line 592
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "the @ flag should be caught by CommandLine."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
