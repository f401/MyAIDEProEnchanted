.class public Landroidx/lifecycle/AndroidViewModel;
.super Landroidx/lifecycle/ViewModel;


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/AndroidViewModel;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/AndroidViewModel;->mApplication:Landroid/app/Application;

    return-object v0
.end method
