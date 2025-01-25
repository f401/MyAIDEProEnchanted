.class Lsun/misc/URLClassPath$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final this$0:Lsun/misc/URLClassPath;

.field private url:Ljava/net/URL;

.field final val$check:Z

.field final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .registers 5

    .line 196
    iput-object p1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$1;->index:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    return-void
.end method

.method private next()Z
    .registers 5

    const/4 v0, 0x1

    .line 201
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v1, :cond_6

    .line 211
    :goto_5
    return v0

    .line 205
    :cond_6
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget v2, p0, Lsun/misc/URLClassPath$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/misc/URLClassPath$1;->index:I

    invoke-static {v1, v2}, Lsun/misc/URLClassPath;->access$000(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 206
    iget-object v2, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iget-boolean v3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-virtual {v1, v2, v3}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 207
    if-eqz v1, :cond_6

    goto :goto_5

    .line 211
    :cond_21
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 216
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .line 220
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 223
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 225
    return-object v0

    .line 221
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
