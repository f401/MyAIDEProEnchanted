.class Lcom/sun/tools/javac/main/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/main/Main;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/Main;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v0, v0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 146
    return-void
.end method

.method public addFile(Ljava/io/File;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v0, v0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public printFullVersion()V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v0, v0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "fullVersion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v4, v4, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->fullVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public printHelp()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    invoke-virtual {v0}, Lcom/sun/tools/javac/main/Main;->help()V

    .line 134
    return-void
.end method

.method public printVersion()V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v0, v0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "version"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iget-object v4, v4, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->version()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public printXhelp()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    invoke-virtual {v0}, Lcom/sun/tools/javac/main/Main;->xhelp()V

    .line 138
    return-void
.end method

.method public setOut(Ljava/io/PrintWriter;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main$1;->this$0:Lcom/sun/tools/javac/main/Main;

    iput-object p1, v0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    .line 118
    return-void
.end method
