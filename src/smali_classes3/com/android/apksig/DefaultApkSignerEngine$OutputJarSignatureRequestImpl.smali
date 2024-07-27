.class Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputJarSignatureRequestImpl"
.end annotation


# instance fields
.field private final mAdditionalJarEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mAdditionalJarEntries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->isDone()Z

    move-result v0

    return v0
.end method

.method private isDone()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mDone:Z

    return v0
.end method


# virtual methods
.method public done()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mDone:Z

    return-void
.end method

.method public getAdditionalJarEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mAdditionalJarEntries:Ljava/util/List;

    return-object v0
.end method
