.class Lcom/sun/tools/javac/main/RecognizedOptions$19;
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


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;)V
    .registers 2

    .line 516
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 4

    .line 519
    const-string v0, "-Xlint:unchecked"

    invoke-virtual {p1, v0, p2}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    return v0
.end method
