.class Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;
.super Ljava/lang/Object;
.source "AntClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/AntClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private nextResource:Ljava/net/URL;

.field private pathElementsIndex:I

.field private final resourceName:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/AntClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V
    .registers 4

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->resourceName:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    .line 142
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->findNextResource()V

    .line 143
    return-void
.end method

.method private findNextResource()V
    .registers 5

    .line 177
    const/4 v0, 0x0

    move-object v1, v0

    .line 178
    :goto_2
    iget v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-static {v2}, Lorg/apache/tools/ant/AntClassLoader;->access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    if-nez v1, :cond_30

    .line 180
    :try_start_12
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-static {v0}, Lorg/apache/tools/ant/AntClassLoader;->access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;

    move-result-object v0

    iget v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 181
    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    iget-object v3, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/AntClassLoader;->getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    :try_end_27
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_12 .. :try_end_27} :catch_35

    move-result-object v0

    .line 182
    :try_start_28
    iget v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I
    :try_end_2e
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_28 .. :try_end_2e} :catch_33

    :goto_2e
    move-object v1, v0

    .line 186
    goto :goto_2

    .line 188
    :cond_30
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    .line 189
    return-void

    .line 183
    :catch_33
    move-exception v1

    goto :goto_2e

    :catch_35
    move-exception v0

    move-object v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    .line 163
    if-eqz v0, :cond_8

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->findNextResource()V

    .line 167
    return-object v0

    .line 164
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
