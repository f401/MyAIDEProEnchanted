.class Lcom/sun/tools/javac/main/RecognizedOptions$12;
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

    .line 380
    iput-object p2, p0, Lcom/sun/tools/javac/main/RecognizedOptions$12;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/sun/tools/javac/main/RecognizedOptions$12;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-interface {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->printFullVersion()V

    .line 384
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
