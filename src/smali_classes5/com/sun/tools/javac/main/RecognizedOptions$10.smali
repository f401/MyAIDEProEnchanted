.class Lcom/sun/tools/javac/main/RecognizedOptions$10;
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

    .line 362
    iput-object p4, p0, Lcom/sun/tools/javac/main/RecognizedOptions$10;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    .line 365
    invoke-static {p3}, Lcom/sun/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v1

    .line 366
    if-nez v1, :cond_14

    .line 367
    iget-object v1, p0, Lcom/sun/tools/javac/main/RecognizedOptions$10;->val$helper:Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;

    const-string v2, "err.invalid.target"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13
.end method
