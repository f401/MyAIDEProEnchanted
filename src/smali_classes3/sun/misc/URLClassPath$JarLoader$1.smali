.class Lsun/misc/URLClassPath$JarLoader$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/URLClassPath$JarLoader;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 611
    invoke-static {}, Lsun/misc/URLClassPath;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$400(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 613
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 616
    :cond_0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$400(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$600(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$502(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    .line 617
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$500(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$800(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->access$702(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;

    .line 618
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$700(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$700(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/JarIndex;->getJarFiles()[Ljava/lang/String;

    move-result-object v1

    .line 625
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 627
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->access$400(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->access$900(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->access$900(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_2
    return-object v5

    .line 632
    :catch_0
    move-exception v2

    goto :goto_1
.end method
