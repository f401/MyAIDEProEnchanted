.class Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;
.super Landroidx/lifecycle/MutableLiveData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavingStateLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mHandle:Landroidx/lifecycle/SavedStateHandle;

.field private mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mKey:Ljava/lang/String;

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mKey:Ljava/lang/String;

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method


# virtual methods
.method detach()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/lifecycle/SavedStateHandle;->mRegular:Ljava/util/Map;

    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
