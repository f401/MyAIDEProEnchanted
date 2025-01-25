.class Lcom/sun/tools/javac/main/RecognizedOptions$7;
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


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 332
    const-string v0, "-extdirs"

    invoke-super {p0, p1, v0, p3}, Lcom/sun/tools/javac/main/JavacOption$XOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
