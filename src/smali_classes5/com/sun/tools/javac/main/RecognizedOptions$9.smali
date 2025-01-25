.class Lcom/sun/tools/javac/main/RecognizedOptions$9;
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

    .line 351
    iput-object p4, p0, Lcom/sun/tools/javac/main/RecognizedOptions$9;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    .line 354
    invoke-static {p3}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v1

    .line 355
    if-nez v1, :cond_14

    .line 356
    iget-object v1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$9;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v2, "err.invalid.source"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13
.end method
