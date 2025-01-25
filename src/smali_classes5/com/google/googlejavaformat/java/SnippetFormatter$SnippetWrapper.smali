.class Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
.super Ljava/lang/Object;
.source "SnippetFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/SnippetFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnippetWrapper"
.end annotation


# instance fields
.field final contents:Ljava/lang/StringBuilder;

.field offset:I

.field final this$0:Lcom/google/googlejavaformat/java/SnippetFormatter;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/java/SnippetFormatter;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->this$0:Lcom/google/googlejavaformat/java/SnippetFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlejavaformat/java/SnippetFormatter;Lcom/google/googlejavaformat/java/SnippetFormatter$1;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lcom/google/googlejavaformat/java/SnippetFormatter;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-object p0
.end method

.method public appendSource(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    .line 211
    iget-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    return-object p0
.end method

.method public closeBraces(I)V
    .registers 4

    .line 216
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1a

    .line 217
    iget-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->this$0:Lcom/google/googlejavaformat/java/SnippetFormatter;

    invoke-virtual {v1, p1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :cond_1a
    return-void
.end method
