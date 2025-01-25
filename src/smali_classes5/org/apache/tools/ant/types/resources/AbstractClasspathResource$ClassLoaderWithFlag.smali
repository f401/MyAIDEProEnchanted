.class public Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;
.super Ljava/lang/Object;
.source "AbstractClasspathResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoaderWithFlag"
.end annotation


# instance fields
.field private final cleanup:Z

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .registers 4

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    .line 266
    if-eqz p2, :cond_f

    instance-of v0, p1, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    .line 267
    return-void

    .line 266
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .line 278
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    if-eqz v0, :cond_b

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 281
    :cond_b
    return-void
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public needsCleanup()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    return v0
.end method
