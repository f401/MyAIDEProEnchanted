.class Lcom/google/googlejavaformat/java/Formatter$2;
.super Ljavax/tools/SimpleJavaFileObject;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/Formatter;->format(Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/googlejavaformat/java/JavaOutput;Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$javaInput:Lcom/google/googlejavaformat/java/JavaInput;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;Lcom/google/googlejavaformat/java/JavaInput;)V
    .registers 4

    .line 152
    iput-object p3, p0, Lcom/google/googlejavaformat/java/Formatter$2;->val$javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-direct {p0, p1, p2}, Ljavax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V

    return-void
.end method


# virtual methods
.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/googlejavaformat/java/Formatter$2;->val$javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
