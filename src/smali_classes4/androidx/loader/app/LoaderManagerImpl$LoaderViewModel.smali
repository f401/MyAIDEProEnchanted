.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .registers 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_57

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_57
    return-void
.end method

.method finishCreatingLoader()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    return-object v0
.end method

.method hasRunningLoaders()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1e
    move v0, v1

    goto :goto_19
.end method

.method isCreatingLoader()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return v0
.end method

.method markForRedelivery()V
    .registers 4

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method protected onCleared()V
    .registers 5

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    return-void
.end method

.method putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method removeLoader(I)V
    .registers 3

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    return-void
.end method

.method startCreatingLoader()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method
