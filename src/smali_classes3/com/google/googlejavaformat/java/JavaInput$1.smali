.class Lcom/google/googlejavaformat/java/JavaInput$1;
.super Ljavax/tools/SimpleJavaFileObject;
.source "JavaInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;Ljava/lang/String;)V
    .registers 4

    .line 145
    iput-object p3, p0, Lcom/google/googlejavaformat/java/JavaInput$1;->val$text:Ljava/lang/String;

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

    .line 148
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$1;->val$text:Ljava/lang/String;

    return-object v0
.end method
