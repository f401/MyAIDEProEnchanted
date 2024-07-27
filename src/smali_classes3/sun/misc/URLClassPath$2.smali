.class Lsun/misc/URLClassPath$2;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private res:Lsun/misc/Resource;

.field final this$0:Lsun/misc/URLClassPath;

.field final val$check:Z

.field final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .registers 5

    .line 243
    iput-object p1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$2;->index:I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    return-void
.end method

.method private next()Z
    .registers 5

    const/4 v0, 0x1

    .line 248
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget v2, p0, Lsun/misc/URLClassPath$2;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/misc/URLClassPath$2;->index:I

    invoke-static {v1, v2}, Lsun/misc/URLClassPath;->access$000(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iget-boolean v3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-virtual {v1, v2, v3}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 254
    if-eqz v1, :cond_0

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 263
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .line 267
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 272
    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
